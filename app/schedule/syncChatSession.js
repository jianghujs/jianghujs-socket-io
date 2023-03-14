'use strict';
const _ = require('lodash');

// 定时计算会话现状到 _chat_session 表中
module.exports = app => {
  return {
    schedule: {
      immediate: true, // 应用启动后触发
      interval: app.config.duoxingConfig.syncChatSessionInterval || '5m',
      type: 'worker', // worker: 只有一个worker执行
      disable: !app.config.duoxingConfig.enableSyncChatSession
    },
    // 定时任务的入口
    async task(ctx) {
      const startTime = new Date().getTime();
      const { app } = ctx;
      const { logger, jianghuKnex } = app;

      const service = app.createAnonymousContext().service;

      const allUserIdList = (await jianghuKnex('view01_user').select('userId')).map(item => item.userId);

      for (const userId of allUserIdList) {
        const friendIdList = (await jianghuKnex('duoxing_user_friend').where({ userId, friendStatus: 'isFriend' }).select('friendId')).map(item => item.friendId);

        const userHistoryIdList = await service.data.duoxingMessage.getUserTopChatIdList(userId);

        const historyIdList = userHistoryIdList.map(item => item.id);

        let historyListTmp = await jianghuKnex('duoxing_message_history').whereIn('id', historyIdList).select();

        historyListTmp = _.orderBy(historyListTmp, [ 'messageTimeString' ], [ 'asc' ]);

        // 过滤掉重复的session; 注意上面 查询是 messageTimeString asc; 这样在 这个代码逻辑中 保持 最新的消息覆盖老的消息
        const computeKey = (fromUserId, toUserId, messageType) => {
          if (messageType === 'user') {
            return fromUserId !== userId ? fromUserId : toUserId;
          }
          return null;
        };
        const userToHistoryMap = Object.fromEntries(historyListTmp.map(x => [ computeKey(x.fromUserId, x.toUserId, x.messageType), x ]));
        const chatSessionList = [];
        for (const key in userToHistoryMap) {
          const chatHistory = userToHistoryMap[key];
          chatHistory.chatId = key;
          if (chatHistory.type === 'user') {
            chatHistory.chatAvatar = chatHistory.chatUserAvatar;
            chatHistory.chatName = chatHistory.chatUsername;
          } else {
            continue;
          }
          chatSessionList.push(chatHistory);
        }

        // 对比修复数据
        const oldChatSessionList = await jianghuKnex('duoxing_chat_session').where({ userId }).orderBy('topChatOrder', 'desc')
          .orderBy('lastMessageHistoryId', 'asc')
          .select();
        const deleteChatSessionIdSet = new Set();
        const addChatSessionList = [];

        for (const chatId in userToHistoryMap) {
          const realChatSession = userToHistoryMap[chatId];
          const oldChatSession = oldChatSessionList.find(x => x.chatId === realChatSession.chatId && x.type === realChatSession.messageType);
          const isFriend = friendIdList.findIndex(friendId => friendId === chatId) > -1;

          // 若是不是好友关系/群组关系 则 删除会话
          if (!isFriend && oldChatSession) {
            deleteChatSessionIdSet.add(oldChatSession.id);
          }

          // 若是好友且会话不存在，则添加会话
          if (isFriend && !oldChatSession) {
            addChatSessionList.push({
              userId,
              type: realChatSession.messageType,
              chatId,
              lastMessageHistoryId: realChatSession.id
            });
          }
          // 如果是旧的会话的 lastMessageHistoryId 不对，则删了重加
          if (oldChatSession && oldChatSession.lastMessageHistoryId !== realChatSession.id) {
            deleteChatSessionIdSet.add(oldChatSession.id);
            addChatSessionList.push({
              userId,
              type: realChatSession.messageType,
              chatId,
              lastMessageHistoryId: realChatSession.id
            });
          }
        }
        if (deleteChatSessionIdSet.size) {
          await jianghuKnex('duoxing_chat_session', this.ctx)
            .whereIn('id', [ ...deleteChatSessionIdSet ])
            .delete();
          logger.info('[syncChatSession.js] delete chat session', {
            delete: deleteChatSessionIdSet.size,
            deleteChatSessionIdSet
          });
        }
        if (addChatSessionList.length) {
          for (const subList of _.chunk(addChatSessionList, 50)) {
            await jianghuKnex('duoxing_chat_session', this.ctx).insert(subList);
          }
          logger.info('[syncChatSession.js] insert chat session', {
            insert: addChatSessionList.length,
            addChatSessionList
          });
        }
      }

      const endTime = new Date().getTime();
      logger.info('[syncChatSession.js]', { useTime: `${endTime - startTime}/ms` });
    }
  };
};
