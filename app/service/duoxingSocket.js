'use strict';

// ========================================常用 require start===========================================
const Service = require('egg').Service;
const { BizError, errorInfoEnum } = require('../constant/error');
const { resourcePath } = require('../constant/constant');
const { tableEnum, noticeTypeEnum, socketForward, duoxingChatMessageTypeEnum, duoxingMessageContentTypeEnum, duoxingRoomRoleInfoEnum, duoxingSocketStatusEnum, duoxingFriendStatusEnum, deviceTypeEnum } = require('../constant/constant');
const validateUtil = require('@jianghujs/jianghu/app/common/validateUtil');
const idGenerateUtil = require('@jianghujs/jianghu/app/common/idGenerateUtil');
// ========================================常用 require end=============================================
const _ = require('lodash');
const dayjs = require('dayjs');
const actionDataScheme = Object.freeze({
  connect: {
    type: 'object',
    additionalProperties: true,
    required: [ 'socketId' ],
    properties: {
      socketId: { type: 'string' }
    }
  },
  userSendMessageToUser: {
    type: 'object',
    additionalProperties: true,
    required: [ 'toUserId', 'messageContent', 'messageContentType', 'messageFingerprint' ],
    properties: {
      toUserId: { type: 'string' },
      messageContent: { type: 'string' },
      messageContentType: { type: 'string' },
      messageFingerprint: { type: 'string' }
    }
  },
  userSendMessageToRoom: {
    type: 'object',
    additionalProperties: true,
    required: [ 'toRoomId', 'messageContent', 'messageContentType', 'messageFingerprint' ],
    properties: {
      toRoomId: { type: 'string' },
      messageContent: { type: 'string' },
      messageContentType: { type: 'string' },
      messageFingerprint: { type: 'string' }
    }
  },
  botExchange: {
    type: 'object',
    additionalProperties: true,
    required: [ 'toUserId', 'messageContent', 'messageContentType', 'messageFingerprint' ],
    properties: {
      toUserId: { type: 'string' },
      messageContent: { anyOf: [{ type: 'string' }, { type: 'object' }] },
      messageContentType: { type: 'string' },
      messageFingerprint: { type: 'string' }
    }
  }
});

function getTargetDeviceTypeByMessageContentType(messageContentType) {
  if (messageContentType === duoxingMessageContentTypeEnum.databotRequest || messageContentType === duoxingMessageContentTypeEnum.databotResponse) {
    return deviceTypeEnum.bot_databot;
  }
  if (messageContentType === duoxingMessageContentTypeEnum.xiaochengxuRequest || messageContentType === duoxingMessageContentTypeEnum.xiaochengxuResponse) {
    return deviceTypeEnum.bot_xiaochengxu;
  }
  if (messageContentType === duoxingMessageContentTypeEnum.chatbotRequest || messageContentType === duoxingMessageContentTypeEnum.chatbotResponse) {
    return deviceTypeEnum.bot_chatbot;
  }
  return 'unknow_device';
}

class DuoxingSocketService extends Service {
  async connect() {
    console.log("开始", new Date())
    const { actionData } = this.ctx.request.body.appData;
    validateUtil.validate(actionDataScheme.connect, actionData);
    const { jianghuKnex } = this.app;
    const { userInfo } = this.ctx;
    const { user } = userInfo;

    const { userId, username, userAvatar, deviceId, deviceType } = user;
    const fromUserId = userId;
    const fromUsername = username;
    // indexPage 小程序专用
    const { socketId, xiaochengxuIndexPage } = actionData;
    this.ctx.jianghuSocket.id = socketId;
    this.ctx.jianghuSocket.data = {
      userId,
      username,
      userAvatar,
      socketId,
      deviceId,
      deviceType,
      xiaochengxuIndexPage
    };

    // 添加当前 socketId 到 socketIO.sockets.userSocketIdMap; userSocketIdMap逻辑 请查阅 /app/controller/resource.js
    // socketIO.sockets.appendSocketIdToUserSocketIdMap(userId, socketId);
    // const afterAppendUserSocketIdList = socketIO.sockets.getSocketIdListByUserId(userId);
    await jianghuKnex(tableEnum._user_session, this.ctx).where({ userId, deviceId, deviceType }).update({ socketStatus: duoxingSocketStatusEnum.online });

    // 通过发送在线消息, 告知好友--> 我上线了
    this.socketEmitToFriendId(fromUserId, fromUsername, username, userId, deviceId);
    console.log("结束", new Date())
    return { userId, username, socketId, deviceId, deviceType };
  }

  async socketEmitToFriendId(fromUserId, fromUsername, username, userId, deviceId) {
    const {
      knex,
      jianghuKnex,
      socketIO,
      config: { appId }
    } = this.app;
    const currentUserOnlineSocketCount = (await jianghuKnex(tableEnum._user_session).where({ userId, deviceId, socketStatus: duoxingSocketStatusEnum.online }).count())[0]["count(*)"];
    if (currentUserOnlineSocketCount === 1) {
      const friendList = await jianghuKnex(tableEnum.duoxing_user_friend).where({userId}).select();
      const noticeType = noticeTypeEnum.onlineNotice;
      const messageContentType = duoxingMessageContentTypeEnum.notice;
      for (const friend of friendList) {
        const {friendId} = friend;
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
        const socketBody = socketForward.userNoticeBodyBuild({appData});
        this.socketEmit({userId: friendId, socketBody, socketIO, knex});
      }
    }
  }

  async disconnect() {
    const { actionData } = this.ctx.request.body.appData;
    const {
      knex,
      jianghuKnex,
      config: { appId }
    } = this.app;
    const { jianghuSocket } = this.ctx;
    const { userId, username, socketId, deviceId, deviceType } = jianghuSocket.data;

    const fromUserId = userId;
    const fromUsername = username;

    await jianghuKnex(tableEnum._user_session, this.ctx).where({ userId, deviceId, deviceType }).jhUpdate({ socketStatus: duoxingSocketStatusEnum.offline });

    const currentUserOnlineSocketCount = (await jianghuKnex(tableEnum._user_session).where({ userId, deviceId, socketStatus: duoxingSocketStatusEnum.online }).count())[0]['count(*)'];

    // 通过发送在线消息, 告知好友--> 我下线了
    if (currentUserOnlineSocketCount === 0) {
      const friendList = await jianghuKnex(tableEnum.duoxing_user_friend).where({ userId }).select('friendId');
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
        await this.socketEmit({ userId: friendId, socketBody });
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
    const userFriend = await jianghuKnex(tableEnum.duoxing_user_friend).where({ userId: toUserId, friendId: userId, friendStatus: duoxingFriendStatusEnum.isFriend }).first();
    if (!userFriend && userId !== toUserId) {
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

    await this.ctx.service.data.duoxingMessage.insertWithChatSessionUpdate(
      {
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
    await this.socketEmit({ userId: toUserId, socketBody });
    // 给自己的 其它在线端 发送在线消息
    await this.socketEmit({ userId, socketBody });

    return {};
  }

  async userSendMessageToRoom() {
    const { actionData } = this.ctx.request.body.appData;
    validateUtil.validate(actionDataScheme.userSendMessageToRoom, actionData);
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
    const { toRoomId, messageContent, messageContentType, messageFingerprint } = actionData;

    // 发群消息，验证下群是否存在，顺便拿下群名称
    // const room = await knex(tableEnum.room).where({ roomId: toRoomId }).first();
    const room = await jianghuKnex(tableEnum.room).where({ roomId: toRoomId }).first();
    if (!room) {
      return errorInfoEnum.chat_room_not_found;
    }
    const { roomName } = room;

    const date = new Date();
    const messageTimeString = dayjs(date).format();


    const messageType = duoxingChatMessageTypeEnum.room;
    // 历史消息落库
    await this.ctx.service.data.duoxingMessage.insertWithChatSessionUpdate(
      {
        fromUserId,
        toRoomId,
        messageContent,
        messageContentType,
        messageType,
        messageFingerprint,
        messageTimeString
      },
      true
    );


    return {};
  }

  /**
   * @param socketId.socketId
   * @param userId.userId
   * @param userId 要发消息的 user id
   * @param socketBody 消息体
   * @param socketIO socket io 实体
   * @param userId.socketBody
   * @param userId.socketIO
   * @param userId.knex
   * @param userId.botMode
   * @param userId.toSocketId
   * @description socket emit 发送消息同一入口
   *    - 根据 socketId 发送
   *    - 根据 userId 发送
   * @return number
   */
  async socketEmit({ userId, socketBody }) {
    const { jianghuKnex, socketIO } = this.app;

    let emitCount = 0;
    const currentUserOnlineSocketList = await jianghuKnex(tableEnum._user_session).where({ userId, socketStatus: duoxingSocketStatusEnum.online }).select();

    for (const { userId, deviceId } of currentUserOnlineSocketList) {
      socketIO.to(`${deviceId}::${userId}`).emit(resourcePath, socketBody);
      emitCount++;
    }

    return emitCount;
  }

  async socketEmitToSocketId({ socketBody, toSocketId }) {
    const { socketIO } = this.app;
    socketIO.to(toSocketId).emit(resourcePath, socketBody);
  }

  async socketEmitToOneBot({ userId, socketBody, targetDeviceType }) {
    const { socketIO } = this.app;

    const allSockets = await socketIO.fetchSockets();
    const targetSocket = allSockets.find(socket => socket.data.userId === userId && socket.data.deviceType === targetDeviceType);
    if (!targetSocket) {
      throw new BizError(errorInfoEnum.xiaochengxu_not_online);
    }

    targetSocket.emit(resourcePath, socketBody);
  }
}

module.exports = DuoxingSocketService;
