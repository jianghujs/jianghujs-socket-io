"use strict";

const Service = require("egg").Service;
const { BizError, errorInfoEnum } = require("../constant/error");
const { tableEnum, socketForward, duoxingChatMessageTypeEnum, duoxingMessageStatusEnum } = require("../constant/constant");
const validateUtil = require("@jianghujs/jianghu/app/common/validateUtil");
const _ = require("lodash");
const dayjs = require("dayjs");
const actionDataScheme = Object.freeze({
  getMessageHistory: {
    type: "object",
    additionalProperties: true,
    required: ["messageType", "userIdOrRoomId"],
    properties: {
      lastId: { anyOf: [{ type: "number" }, { type: "null" }] },
      pageSize: { anyOf: [{ type: "number" }, { type: "null" }] },
      messageType: { type: "string" },
      userIdOrRoomId: { type: "string" },
    },
  },
  getMessageHistoryByMaxId: {
    type: "object",
    additionalProperties: true,
    required: ["messageType", "userIdOrRoomId", "maxId"],
    properties: {
      maxId: { type: "number" },
      pageSize: { anyOf: [{ type: "number" }, { type: "null" }] },
      messageType: { type: "string" },
      userIdOrRoomId: { type: "string" },
    },
  },
  revokeMessage: {
    type: "object",
    additionalProperties: true,
    required: ["messageFingerprint"],
    properties: {
      messageFingerprint: { type: "string" },
    },
  },
  delMessageOffline: {
    type: "object",
    additionalProperties: true,
    required: ["messageType", "userIdOrRoomId"],
    properties: {
      messageType: { type: "string" },
      userIdOrRoomId: { type: "string" },
    },
  },
  toggleChatSession: {
    type: "object",
    additionalProperties: true,
    required: ["chatId", "type"],
    properties: {
      chatId: { type: "string" },
      type: { type: "string" },
      top: { type: "boolean" },
      muted: { type: "boolean" },
    },
  },
  deleteChatSession: {
    type: "object",
    additionalProperties: true,
    required: ["chatId", "type"],
    properties: {
      chatId: { type: "string" },
      type: { type: "string" },
    },
  },
});

class DuoxingChatService extends Service {
  /**
   * @param {Object} actionData  入参
   * @param {ctx} ctx  上下文
   * @return {Promise<{rows: *[]}>} 会话列表
   */
  async getChatSession() {
    const { jianghuKnex, config, _cache } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;

    // 获取会话
    const chatSessionList = await jianghuKnex(tableEnum.view01_duoxing_chat_session).where({ userId }).orderBy("topChatOrder", "desc").orderBy("lastMessageHistoryId", "desc").select();
    if (!chatSessionList || !chatSessionList.length) {
      return { rows: [] };
    }
    // 获取历史消息内容
    const msgList = await jianghuKnex(tableEnum.view01_duoxing_message_history)
      .whereIn(
        "id",
        chatSessionList.map((o) => o.lastMessageHistoryId)
      )
      .select();

    // 拼装返回结果
    const resultList = [];
    for (const chatSession of chatSessionList) {
      const msg = msgList.find((o) => o.id === chatSession.lastMessageHistoryId);
      if (!msg) {
        continue;
      }
      if (chatSession.type === duoxingChatMessageTypeEnum.user) {
        chatSession.chatAvatar = chatSession.chatUserAvatar;
        chatSession.chatName = chatSession.chatUsername;
      } else if (chatSession.type === duoxingChatMessageTypeEnum.room) {
        chatSession.chatAvatar = chatSession.chatRoomAvatar;
        chatSession.chatName = chatSession.chatRoomName;
      } else {
        continue;
      }
      chatSession.offlineMessageCount = chatSession.unreadCount;
      resultList.push({ ...chatSession, ...msg });
    }

    return { rows: resultList };
  }

  async getMessageHistory() {
    const { jianghuKnex, knex, config, _cache } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;
    validateUtil.validate(actionDataScheme.getMessageHistory, actionData);

    const { messageType, userIdOrRoomId } = actionData;
    const pageSize = actionData.pageSize || 20;
    const lastId = actionData.lastId || 2147483647;

    if (duoxingChatMessageTypeEnum.user === messageType) {
      const messageHistoryList = await knex(tableEnum.view01_duoxing_message_history)
        .where("id", "<", lastId)
        .where({ messageType: duoxingChatMessageTypeEnum.user })
        .where(function () {
          this.where({ toUserId: userIdOrRoomId, fromUserId: userId }).orWhere({
            fromUserId: userIdOrRoomId,
            toUserId: userId,
          });
        })
        .orderBy("id", "desc")
        .limit(pageSize);

      return { rows: messageHistoryList };
    }

    if (duoxingChatMessageTypeEnum.room === messageType) {
      const messageHistoryList = await knex(tableEnum.view01_duoxing_message_history)
        .where("id", "<", lastId)
        .where({ messageType: duoxingChatMessageTypeEnum.room })
        .where({ toRoomId: userIdOrRoomId })
        .orderBy("id", "desc")
        .limit(pageSize);

      return { rows: messageHistoryList };
    }

    return { rows: [] };
  }

  async getMessageHistoryByMaxId() {
    const { jianghuKnex, knex, config, _cache } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;
    validateUtil.validate(actionDataScheme.getMessageHistoryByMaxId, actionData);

    const { messageType, userIdOrRoomId } = actionData;
    const pageSize = actionData.pageSize || 100;
    const maxId = actionData.maxId || 0;

    if (duoxingChatMessageTypeEnum.user === messageType) {
      const messageHistoryList = await knex(tableEnum.view01_duoxing_message_history)
        .where("id", ">", maxId)
        .where({ messageType: duoxingChatMessageTypeEnum.user })
        .where(function () {
          this.where({ toUserId: userIdOrRoomId, fromUserId: userId }).orWhere({
            fromUserId: userIdOrRoomId,
            toUserId: userId,
          });
        })
        .orderBy("id", "desc")
        .limit(pageSize);

      return { rows: messageHistoryList };
    }

    if (duoxingChatMessageTypeEnum.room === messageType) {
      const messageHistoryList = await knex(tableEnum.view01_duoxing_message_history)
        .where("id", ">", maxId)
        .where({ messageType: duoxingChatMessageTypeEnum.room })
        .where({ toRoomId: userIdOrRoomId })
        .orderBy("id", "desc")
        .limit(pageSize);

      return { rows: messageHistoryList };
    }

    return { rows: [] };
  }

  async revokeMessage() {
    const { jianghuKnex, knex, config, _cache } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;
    validateUtil.validate(actionDataScheme.revokeMessage, actionData);

    const fromUsername = username;
    const { messageFingerprint } = actionData;

    const messageHistory = await jianghuKnex(tableEnum.duoxing_message_history)
      .where({ messageFingerprint })
      .first();
    if (!messageHistory) {
      throw new BizError(errorInfoEnum.chat_message_not_found);
    }
    if (messageHistory.fromUserId !== userId) {
      throw new BizError(errorInfoEnum.chat_message_forbidden);
    }
    const {
      fromUserId,
      toUserId,
      toRoomId,
      messageContent,
      messageType,
      messageContentType,
      messageTimeString,
    } = messageHistory;

    const messageStatus = duoxingMessageStatusEnum.revoke;
    await jianghuKnex(tableEnum.duoxing_message_history, this.ctx)
      .where({ messageFingerprint })
      .update({ messageStatus });

    switch (messageType) {
      case duoxingChatMessageTypeEnum.user:
        const appData = {
          appId,
          pageId: "socket",
          actionId: "userMessage",
          actionData: {
            messageFingerprint,
            fromUserId,
            fromUsername,
            toUserId,
            toRoomId,
            messageContent,
            messageContentType,
            messageType,
            messageTimeString,
            messageStatus,
          },
        };
        const socketBody = socketForward.bodyBuild({ appData });
        await this.ctx.service.duoxingSocket.socketEmit({ userId: toUserId, socketBody });
        await this.ctx.service.duoxingSocket.socketEmit({ userId, socketBody });
        break;
      default:
        break;
    }

    return {};
  }

  // 消息已读，清空未读数
  async delMessageOffline() {
    const { jianghuKnex, knex, config } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;
    validateUtil.validate(actionDataScheme.delMessageOffline, actionData);

    const { messageType, userIdOrRoomId } = actionData;

    await knex(tableEnum.duoxing_chat_session, this.ctx)
      .where({ userId, type: messageType, chatId: userIdOrRoomId })
      .update({ unreadCount: 0 });

    // 通知其它端更新会话列表
    const appData = {
      appId,
      pageId: "socket",
      actionId: "delMessageOffline",
      actionData,
    };
    const socketBody = socketForward.bodyBuild({ appData });
    await this.ctx.service.duoxingSocket.socketEmit({ userId, socketBody });
    return {};
  }

  // 会话置顶或取消置顶，免打扰会话或取消
  async toggleChatSession() {
    const { jianghuKnex, knex, config } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;
    validateUtil.validate(actionDataScheme.delMessageOffline, actionData);

    const { chatId, type, top, muted } = actionData;
    if (top === true) {
      await knex(tableEnum.duoxing_chat_session, this.ctx)
        .where({ userId, type, chatId })
        .update({ topChatOrder: dayjs().format() });
    } else if (top === false) {
      await knex(tableEnum.duoxing_chat_session, this.ctx)
        .where({ userId, type, chatId })
        .update({ topChatOrder: "" });
    }

    if (muted === true || muted === false) {
      await knex(tableEnum.duoxing_chat_session, this.ctx)
        .where({ userId, type, chatId })
        .update({ muted });
    }

    // 通知其它端更新会话列表
    const appData = {
      appId,
      pageId: "socket",
      actionId: "toggleChatSession",
      actionData,
    };
    const socketBody = socketForward.bodyBuild({ appData });
    await this.ctx.service.duoxingSocket.socketEmit({ userId, socketBody });
    return {};
  }

  // 删除会话，只做软删除，新会话过来时会更新
  async deleteChatSession() {
    const { jianghuKnex, knex, config } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;
    validateUtil.validate(actionDataScheme.deleteChatSession, actionData);

    const { chatId, type } = actionData;

    await jianghuKnex(tableEnum.duoxing_chat_session).where({ userId, type, chatId }).delete();

    // 通知其它端更新会话列表
    const appData = {
      appId,
      pageId: "socket",
      actionId: "deleteChatSession",
      actionData,
    };
    const socketBody = socketForward.bodyBuild({ appData });
    await this.ctx.service.duoxingSocket.socketEmit({ userId, socketBody });
    return {};
  }
}

module.exports = DuoxingChatService;
