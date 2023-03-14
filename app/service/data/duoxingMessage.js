'use strict';

// ========================================常用 require start===========================================
const Service = require('egg').Service;
// ========================================常用 require end=============================================
const _ = require('lodash');

class DuoxingMessageService extends Service {
  // TODO: 给duoxing表添加 operation
  async insertWithChatSessionUpdate(params, mayFirst = false) {
    const { jianghuKnex } = this.app;

    const messageHistoryId = await jianghuKnex('duoxing_message_history', this.ctx)
      .insert(params)
      .then((result) => result[0]);

    const { fromUserId, toUserId, messageType } = params;
    if (messageType === 'user') {
      // 如果可能为第一条消息，则初始化双方的会话
      if (mayFirst) {
        await this.checkAndInitSession(
          [ toUserId ],
          'user',
          fromUserId,
          messageHistoryId
        );
        await this.checkAndInitSession(
          [ fromUserId ],
          'user',
          toUserId,
          messageHistoryId
        );
      }
      // 对方的会话
      await this.updateSingleChatSession(
        toUserId,
        'user',
        fromUserId,
        messageHistoryId,
        true
      );
      // 自己的会话
      await this.updateSingleChatSession(
        fromUserId,
        'user',
        toUserId,
        messageHistoryId,
        false
      );

    }
    return messageHistoryId;
  }

  async getUserTopChatIdList(userId, useTable = false) {
    const { jianghuKnex } = this.app;

    if (!this.viewName) {
      useTable = true;
    }

    return jianghuKnex('duoxing_message_history')
      .where({ messageType: 'user' })
      .where(function () {
        this.where({ toUserId: userId }).orWhere({ fromUserId: userId });
      })
      .groupByRaw("fromUserId, toUserId")
      .max({ id: "id" })
      .select();
  }

  async checkAndInitSession(userIds, type, chatId, messageHistoryId) {
    const { jianghuKnex } = this.app;

    // 检查这些记录是否存在，不存在就插入
    const exists = await jianghuKnex('duoxing_chat_session')
      .where({ chatId, type })
      .whereIn('userId', userIds)
      .select();
    const needUserIds = new Set(userIds);
    exists.forEach(o => needUserIds.delete(o.userId));
    if (needUserIds.size <= 0) {
      return;
    }
    const insertParams = [];
    needUserIds.forEach(userId => {
      insertParams.push({
        userId,
        type,
        chatId,
        lastMessageHistoryId: messageHistoryId
      });
    });
    await jianghuKnex('duoxing_chat_session', this.ctx).insert(insertParams);
  }

  // 个人对话：对某个会话进行软删除
  async deleteSingleChatSession(userId, type, anotherUserId, lastMessageHistoryId, addUnreadCount) {
    const { jianghuKnex } = this.app;
    return await jianghuKnex('duoxing_chat_session', this.ctx).where({
      chatId: anotherUserId,
      type,
      userId,
    }).jhDelete();
  }

  // 个人对话：对某个会话更新最新会话，并 +1 未读
  async updateSingleChatSession(userId, type, anotherUserId, lastMessageHistoryId, addUnreadCount) {
    const { jianghuKnex } = this.app;

    const k = jianghuKnex('duoxing_chat_session', this.ctx).where({
      chatId: anotherUserId,
      type,
      userId,
    });
    if (addUnreadCount) {
      k.increment('unreadCount', 1);
    }
    return k.update({ lastMessageHistoryId });
  }
}

module.exports = DuoxingMessageService;
