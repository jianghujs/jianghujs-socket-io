"use strict";

const Service = require("egg").Service;
const { socketForward } = require("../constant/constant");
const validateUtil = require("@jianghujs/jianghu/app/common/validateUtil");
const appDataSchema = Object.freeze({
  getMessageHistory: {
    type: "object",
    additionalProperties: true,
    required: ["messageType", "chatUserId"],
    properties: {
      lastId: { anyOf: [{ type: "number" }, { type: "null" }] },
      pageSize: { anyOf: [{ type: "number" }, { type: "null" }] },
      messageType: { type: "string" },
      chatUserId: { type: "string" },
    },
  },
  delMessageOffline: {
    type: "object",
    additionalProperties: true,
    required: ["messageType", "chatUserId"],
    properties: {
      messageType: { type: "string" },
      chatUserId: { type: "string" },
    },
  }
});

class DuoxingChatService extends Service {
  /**
   * @param {Object} actionData  入参
   * @param {ctx} ctx  上下文
   * @return {Promise<{rows: *[]}>} 会话列表
   */
  async getChatSession() {
    const { jianghuKnex } = this.app;
    const { userId } = this.ctx.userInfo;

    // 获取会话
    const chatSessionList = await jianghuKnex('view01_duoxing_chat_session').where({ userId }).orderBy("lastMessageHistoryId", "desc").select();
    if (!chatSessionList || !chatSessionList.length) {
      return { rows: [] };
    }
    // 获取历史消息内容
    const msgList = await jianghuKnex('view01_duoxing_message_history')
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
      if (chatSession.type === 'user') {
        chatSession.chatAvatar = chatSession.chatUserAvatar;
        chatSession.chatName = chatSession.chatUsername;
      } else {
        continue;
      }
      chatSession.offlineMessageCount = chatSession.unreadCount;
      resultList.push({ ...chatSession, ...msg });
    }

    return { rows: resultList };
  }

  async getMessageHistory() {
    const { knex } = this.app;
    const { actionData } = this.ctx.request.body.appData;
    const { userId } = this.ctx.userInfo;
    validateUtil.validate(appDataSchema.getMessageHistory, actionData);

    const { messageType, chatUserId } = actionData;
    const pageSize = actionData.pageSize || 20;
    const lastId = actionData.lastId || 2147483647;

    if ('user' === messageType) {
      const messageHistoryList = await knex('view01_duoxing_message_history')
        .where("id", "<", lastId)
        .where({ messageType: 'user' })
        .where(function () {
          this.where({ toUserId: chatUserId, fromUserId: userId }).orWhere({
            fromUserId: chatUserId,
            toUserId: userId,
          });
        })
        .orderBy("id", "desc")
        .limit(pageSize);

      return { rows: messageHistoryList };
    }

    return { rows: [] };
  }

  // 消息已读，清空未读数
  async delMessageOffline() {
    const { knex, config } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId } = this.ctx.userInfo;
    validateUtil.validate(appDataSchema.delMessageOffline, actionData);

    const { messageType, chatUserId } = actionData;

    await knex('duoxing_chat_session', this.ctx)
      .where({ userId, type: messageType, chatId: chatUserId })
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
}

module.exports = DuoxingChatService;
