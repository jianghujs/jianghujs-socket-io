'use strict';

// ========================================常用 require start===========================================
const Service = require('egg').Service;
const { BizError, errorInfoEnum } = require('../constant/error');
const { resourcePath } = require('egg-jianghu/app/constant/constant');
const {
  tableEnum,
  noticeTypeEnum,
  socketForward,
  duoxingChatMessageTypeEnum,
  duoxingMessageContentTypeEnum,
  duoxingGroupRoleInfoEnum,
  duoxingSocketStatusEnum,
  duoxingFriendStatusEnum
} = require('../constant/constant');
const validateUtil = require('egg-jianghu/app/common/validateUtil');
const idGenerateUtil = require('egg-jianghu/app/common/idGenerateUtil');
// ========================================常用 require end=============================================
const _ = require('lodash');
const dayjs = require('dayjs');
const actionDataScheme = Object.freeze({
  connect: {
    type: 'object',
    additionalProperties: true,
    required: ['socketId'],
    properties: {
      socketId: { type: 'string' }
    }
  },
  userSendMessageToUser: {
    type: 'object',
    additionalProperties: true,
    required: ['toUserId', 'messageContent', 'messageContentType', 'messageFingerprint'],
    properties: {
      toUserId: { type: 'string' },
      messageContent: { type: 'string' },
      messageContentType: {
        type: 'string',
        enum: [
          duoxingMessageContentTypeEnum.text,
          duoxingMessageContentTypeEnum.atText,
          duoxingMessageContentTypeEnum.image,
          duoxingMessageContentTypeEnum.file,
          duoxingMessageContentTypeEnum.notice,
          duoxingMessageContentTypeEnum.audio,
          duoxingMessageContentTypeEnum.video,
          duoxingMessageContentTypeEnum.userCard
        ]
      },
      messageFingerprint: { type: 'string' }
    }
  },
  userSendMessageToGroup: {
    type: 'object',
    additionalProperties: true,
    required: ['toGroupId', 'messageContent', 'messageContentType', 'messageFingerprint'],
    properties: {
      toGroupId: { type: 'string' },
      messageContent: { type: 'string' },
      messageContentType: {
        type: 'string',
        enum: [
          duoxingMessageContentTypeEnum.text,
          duoxingMessageContentTypeEnum.atText,
          duoxingMessageContentTypeEnum.image,
          duoxingMessageContentTypeEnum.file,
          duoxingMessageContentTypeEnum.notice,
          duoxingMessageContentTypeEnum.audio,
          duoxingMessageContentTypeEnum.video,
          duoxingMessageContentTypeEnum.userCard,
          duoxingMessageContentTypeEnum.revoke
        ]
      },
      messageFingerprint: { type: 'string' }
    }
  }
});
class DuoxingSocketService extends Service {
  async connect() {
    const { actionData } = this.ctx.request.body.appData;
    validateUtil.validate(actionDataScheme.connect, actionData);
    const {
      knex,
      jianghuKnex,
      socketIO,
      config: { appId }
    } = this.app;
    const { userInfo } = this.ctx;
    const { user } = userInfo;

    const { userId, username, deviceId } = user;
    const fromUserId = userId;
    const fromUsername = username;
    const { socketId } = actionData;
    this.ctx.jianghuSocket.id = socketId;

    // 添加当前 socketId 到 socketIO.sockets.userSocketIdMap; userSocketIdMap逻辑 请查阅 /app/controller/resource.js
    // socketIO.sockets.appendSocketIdToUserSocketIdMap(userId, socketId);
    // const afterAppendUserSocketIdList = socketIO.sockets.getSocketIdListByUserId(userId);
    await jianghuKnex(tableEnum._user_session, this.ctx)
      .where({ userId, deviceId })
      .jhUpdate({ socketStatus: duoxingSocketStatusEnum.online });
    const currentUserOnlineSocketCount = (
      await jianghuKnex(tableEnum._user_session)
        .where({ userId, deviceId, socketStatus: duoxingSocketStatusEnum.online })
        .count()
    )[0]['count(*)'];

    // 通过发送在线消息, 告知好友--> 我上线了
    if (currentUserOnlineSocketCount === 1) {
      const friendList = await jianghuKnex(tableEnum.duoxing_user_friend)
        .where({ userId })
        .select();
      const noticeType = noticeTypeEnum.onlineNotice;
      const messageContentType = duoxingMessageContentTypeEnum.notice;
      for (const friend of friendList) {
        const { friendId } = friend;
        const appData = {
          appId,
          actionData: {
            fromUserId,
            fromUsername,
            toUserId: friendId,
            noticeType,
            messageContent: `${username}上线了`,
            messageContentType
          }
        };
        const socketBody = socketForward.userNoticeBodyBuild({ appData });
        await this.socketEmit({ userId: friendId, socketBody, socketIO, knex });
      }
    }

    return {};
  }

  async disconnect() {
    const { actionData } = this.ctx.request.body.appData;
    const {
      knex,
      jianghuKnex,
      socketIO,
      config: { appId }
    } = this.app;
    const { userInfo } = this.ctx;
    const { userId, username } = userInfo;

    const fromUserId = userId;
    const fromUsername = username;

    // 从 io.sockets.userSocketIdMap 移除当前 socketId; userSocketIdMap逻辑 请查阅 app/io/main.js
    // socketIO.sockets.removeSocketIdFromUserSocketIdMap(userId, socketId);
    // const afterRemoveUserSocketIdList = socketIO.sockets.getSocketIdListByUserId(userId);
    await jianghuKnex(tableEnum._user_session, this.ctx)
      .where({ userId, deviceId })
      .jhUpdate({ socketStatus: duoxingSocketStatusEnum.offline });

    const currentUserOnlineSocketCount = (
      await jianghuKnex(tableEnum._user_session)
        .where({ userId, deviceId, socketStatus: duoxingSocketStatusEnum.online })
        .count()
    )[0]['count(*)'];

    // 通过发送在线消息, 告知好友--> 我下线了
    if (currentUserOnlineSocketCount === 0) {
      const friendList = await jianghuKnex(tableEnum.duoxing_user_friend)
        .where({ userId })
        .select('friendId');
      const noticeType = noticeTypeEnum.offlineNotice;
      const messageContentType = duoxingMessageContentTypeEnum.notice;
      for (const friend of friendList) {
        const { friendId } = friend;
        const appData = {
          appId,
          pageId: 'socket',
          actionId: 'userNotice',
          actionData: {
            fromUserId,
            fromUsername,
            toUserId: friendId,
            noticeType,
            messageContent: `${username}下线了`,
            messageContentType
          }
        };
        const socketBody = socketForward.bodyBuild({ appData });
        await this.socketEmit({ userId: friendId, socketBody, socketIO, knex });
      }
    }

    return {};
  }

  async userSendMessageToUser() {
    const { actionData } = this.ctx.request.body.appData;
    validateUtil.validate(actionDataScheme.userSendMessageToUser, actionData);
    const {
      knex,
      jianghuKnex,
      socketIO,
      config: { appId }
    } = this.app;
    const { userInfo } = this.ctx;
    const {
      user: { userAvatar },
      userId,
      username
    } = userInfo;

    const fromUserId = userId;
    const fromUsername = username;
    const fromUserAvatar = userAvatar;
    const { toUserId, messageContent, messageContentType, messageFingerprint } = actionData;
    const date = new Date();
    const messageTimeString = dayjs(date).format();
    const messageType = duoxingChatMessageTypeEnum.user;

    // 校验 fromUserId-toUserId 是否是好友关系
    const userFriend = await jianghuKnex(tableEnum.duoxing_user_friend)
      .where({ userId: toUserId, friendId: userId, friendStatus: duoxingFriendStatusEnum.isFriend })
      .first();
    if (!userFriend) {
      throw new BizError({
        ...errorInfoEnum.chat_not_user_friend,
        errorReasonSupplement: {
          fromUserId,
          fromUsername,
          fromUserAvatar,
          toUserId,
          messageContent,
          messageType,
          messageContentType,
          messageFingerprint,
          messageTimeString
        }
      });
    }

    // 消息体构建
    const appData = {
      appId,
      pageId: 'socket',
      actionId: 'userMessage',
      actionData: {
        fromUserId,
        fromUsername,
        fromUserAvatar,
        toUserId,
        messageContent,
        messageType,
        messageContentType,
        messageFingerprint,
        messageTimeString,
        messageStatus: 'active'
      }
    };

    const historyId = idGenerateUtil.uuid();
    await this.ctx.service.data.duoxingMessage.insertWithChatSessionUpdate(
      {
        historyId,
        messageFingerprint,
        fromUserId,
        toUserId,
        messageContent,
        messageContentType,
        messageType,
        messageTimeString
      },
      true
    );

    const socketBody = socketForward.bodyBuild({ appData });
    // 发送在线消息
    await this.socketEmit({ userId: toUserId, socketBody, socketIO, knex });
    // 给自己的 其它在线端 发送在线消息
    await this.socketEmit({ userId, socketBody, socketIO, knex });

    return {};
  }

  async userSendMessageToGroup() {
    const { actionData } = this.ctx.request.body.appData;
    validateUtil.validate(actionDataScheme.userSendMessageToUser, actionData);
    const {
      knex,
      jianghuKnex,
      socketIO,
      config: { appId }
    } = this.app;
    const { userInfo } = this.ctx;
    const { user } = userInfo;

    const { userId, username, userAvatar } = user;
    const fromUserId = userId;
    const fromUsername = username;
    const fromUserAvatar = userAvatar;
    const { toGroupId, messageContent, messageContentType, messageFingerprint } = actionData;

    // 发群消息，验证下群是否存在，顺便拿下群名称
    // const group = await knex(tableEnum._group).where({ groupId: toGroupId }).first();
    const group = await jianghuKnex(tableEnum._group).where({ groupId: toGroupId }).first();
    if (!group) {
      return errorInfoEnum.chat_group_not_found;
    }
    const { groupName } = group;

    const date = new Date();
    const messageTimeString = dayjs(date).format();

    // 查询群成员
    // const groupUserList = await knex(tableEnum.view01_user_group_role).where({ groupId: toGroupId }).select();
    const groupUserList = await jianghuKnex(tableEnum.view01_user_group_role)
      .where({ groupId: toGroupId })
      .select();

    // 验证当前用户是否在群; 用户是否被禁言
    const currentGroupUser = groupUserList.find(groupUser => userId === groupUser.userId);
    if (!currentGroupUser) {
      throw new BizError(errorInfoEnum.chat_user_not_in_group);
    }

    const messageType = duoxingChatMessageTypeEnum.group;
    // 历史消息落库
    const historyId = idGenerateUtil.uuid();
    await this.ctx.service.data.duoxingMessage.insertWithChatSessionUpdate(
      {
        historyId,
        fromUserId,
        toGroupId,
        messageContent,
        messageContentType,
        messageType,
        messageFingerprint,
        messageTimeString
      },
      true
    );

    // 发送在线消息
    for (const groupUser of groupUserList) {
      const { userId: groupUserId, username: groupUsername, roleId, roleName } = groupUser;
      const appData = {
        appId,
        pageId: 'socket',
        actionId: 'groupMessage',
        actionData: {
          fromUserId,
          fromUsername,
          fromUserAvatar,
          toGroupId,
          groupName,
          messageContent,
          messageType,
          messageContentType,
          messageFingerprint,
          messageTimeString,
          messageStatus: 'active'
        }
      };
      const socketBody = socketForward.bodyBuild({ appData });
      await this.socketEmit({ userId: groupUserId, socketBody, socketIO, knex });
    }

    return {};
  }

  /**
   * @param socketId.socketId
   * @param userId.userId
   * @param userId 要发消息的 user id
   * @param socketBody 消息体
   * @param socketIO socket io 实体
   * @param excludeSocketList 忽略的 socket id
   * @param userId.socketBody
   * @param userId.socketIO
   * @param userId.knex
   * @description socket emit 发送消息同一入口
   *    - 根据 socketId 发送
   *    - 根据 userId 发送
   * @return number
   */
  async socketEmit({ userId, socketBody }) {
    const { jianghuKnex, socketIO } = this.app;

    const currentUserOnlineSocketList = await jianghuKnex(tableEnum._user_session)
      .where({ userId, socketStatus: duoxingSocketStatusEnum.online })
      .select();
    let emitCount = 0;
    for (const { userId, deviceId } of currentUserOnlineSocketList) {
      if (deviceId === 'F9a005cf5718f53ec_F_APP_android') {
        console.log("给APP发了个消息")
      }
      socketIO.to(`${deviceId}::${userId}`).emit(resourcePath, socketBody);
      emitCount++;
    }

    return emitCount;
  }
}

module.exports = DuoxingSocketService;

