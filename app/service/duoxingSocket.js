'use strict';

// ========================================常用 require start===========================================
const Service = require('egg').Service;
const { BizError, errorInfoEnum } = require('../constant/error');
const { resourcePath } = require('../constant/constant');
const { socketForward } = require('../constant/constant');
const validateUtil = require('@jianghujs/jianghu/app/common/validateUtil');
// ========================================常用 require end=============================================
const dayjs = require('dayjs');
const appDataSchema = Object.freeze({
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
  }
});

function getTargetDeviceTypeByMessageContentType(messageContentType) {
  if (messageContentType === 'databotRequest' || messageContentType === 'databotResponse') {
    return 'bot_databot';
  }
  if (messageContentType === 'xiaochengxuRequest' || messageContentType === 'xiaochengxuResponse') {
    return 'bot_xiaochengxu';
  }
  if (messageContentType === 'chatbotRequest' || messageContentType === 'chatbotResponse') {
    return 'bot_chatbot';
  }
  return 'unknow_device';
}

class DuoxingSocketService extends Service {
  async connect() {
    console.log("开始", new Date())
    const { actionData } = this.ctx.request.body.appData;
    validateUtil.validate(appDataSchema.connect, actionData);
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
    await jianghuKnex('_user_session', this.ctx).where({ userId, deviceId, deviceType }).update({ socketStatus: 'online' });

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
    const currentUserOnlineSocketCount = (await jianghuKnex('_user_session').where({ userId, deviceId, socketStatus: 'online' }).count())[0]["count(*)"];
    if (currentUserOnlineSocketCount === 1) {
      const friendList = await jianghuKnex('duoxing_user_friend').where({userId}).select();
      const noticeType = 'onlineNotice';
      const messageContentType = 'notice';
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
    const {
      jianghuKnex,
      config: { appId }
    } = this.app;
    const { jianghuSocket } = this.ctx;
    const { userId, username, deviceId, deviceType } = jianghuSocket.data;

    const fromUserId = userId;
    const fromUsername = username;

    await jianghuKnex('_user_session', this.ctx).where({ userId, deviceId, deviceType }).jhUpdate({ socketStatus: 'offline' });

    const currentUserOnlineSocketCount = (await jianghuKnex('_user_session').where({ userId, deviceId, socketStatus: 'online' }).count())[0]['count(*)'];

    // 通过发送在线消息, 告知好友--> 我下线了
    if (currentUserOnlineSocketCount === 0) {
      const friendList = await jianghuKnex('duoxing_user_friend').where({ userId }).select('friendId');
      const noticeType = 'offlineNotice';
      const messageContentType = 'notice';
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
    validateUtil.validate(appDataSchema.userSendMessageToUser, actionData);
    const {
      jianghuKnex,
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
    const messageType = 'user';

    // 校验 fromUserId-toUserId 是否是好友关系
    const userFriend = await jianghuKnex('duoxing_user_friend').where({ userId: toUserId, friendId: userId, friendStatus: 'isFriend' }).first();
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
    const currentUserOnlineSocketList = await jianghuKnex('_user_session').where({ userId, socketStatus: 'online' }).select();

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
