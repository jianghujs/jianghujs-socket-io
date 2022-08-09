'use strict';

// ========================================常用 require start===========================================
const Service = require('egg').Service;
const { BizError, errorInfoEnum } = require('../constant/error');
const { tableEnum, duoxingFriendStatusEnum } = require("../constant/constant");
const validateUtil = require("@jianghujs/jianghu/app/common/validateUtil");
// ========================================常用 require end=============================================
const _ = require("lodash");
const md5 = require("md5-node");
const actionDataScheme = Object.freeze({
  addUserFriend: {
    type: "object",
    additionalProperties: true,
    required: ["userId", "friendId"],
    properties: {
      userId: { type: "string" },
      friendId: { type: "string" },
    },
  },
  delUserFriend: {
    type: "object",
    additionalProperties: true,
    required: ["userId", "friendId"],
    properties: {
      userId: { type: "string" },
      friendId: { type: "string" },
    },
  },
});

class UserManagementService extends Service {
  async addUserFriend() {
    const { actionData } = this.ctx.request.body.appData;
    const { jianghuKnex, config } = this.app;
    validateUtil.validate(actionDataScheme.addUserFriend, actionData);
    const { userId, friendId } = actionData;
    const ctx = this.ctx;

    const {
      userInfo: { user },
    } = this.ctx;
    if (friendId === userId) {
      throw new BizError(errorInfoEnum.chat_can_not_add_yourself);
    }

    const { errorCode, errorReason } = errorInfoEnum.chat_user_not_exist;
    const targetUser = await jianghuKnex(tableEnum._user).where({ userId }).first();
    if (!targetUser) {
      throw new BizError({ errorCode, errorReason: `${userId} ${errorReason}` });
    }
    const targetFriend = await jianghuKnex(tableEnum._user).where({ userId: friendId }).first();
    if (!targetFriend) {
      throw new BizError({ errorCode, errorReason: `${friendId} ${errorReason}` });
    }

    let myUserFriendData = await jianghuKnex(tableEnum.duoxing_user_friend)
      .where({ userId, friendId })
      .first();
    let friendUserFriendData = await jianghuKnex(tableEnum.duoxing_user_friend)
      .where({ userId: friendId, friendId: userId })
      .first();

    if (
      myUserFriendData &&
      friendUserFriendData &&
      myUserFriendData.friendStatus === duoxingFriendStatusEnum.isFriend &&
      friendUserFriendData.friendStatus === duoxingFriendStatusEnum.isFriend
    ) {
      throw new BizError(errorInfoEnum.chat_already_friend);
    }

    await jianghuKnex.transaction(async (trx) => {
      if (myUserFriendData || friendUserFriendData) {
        await trx(tableEnum.duoxing_user_friend, this.ctx)
          .where({ userId, friendId })
          .orWhere({ userId: friendId, friendId: userId })
          .jhDelete();
      }
      await trx(tableEnum.duoxing_user_friend, this.ctx).jhInsert(
        [
          {
            userId,
            friendId,
            friendStatus: duoxingFriendStatusEnum.isFriend,
            requestRemark: "后台添加好友",
          },
          {
            userId: friendId,
            friendId: userId,
            friendStatus: duoxingFriendStatusEnum.isFriend,
            requestRemark: "后台添加好友",
          },
        ],
        this.ctx
      );
    });

    // TODO: 通知 userId & friendId; 更新好友列表

    return {};
  }

  async delUserFriend() {
    const { actionData } = this.ctx.request.body.appData;
    const { jianghuKnex } = this.app;
    validateUtil.validate(actionDataScheme.delUserFriend, actionData);
    const { userId, friendId } = actionData;
    const ctx = this.ctx;

    await jianghuKnex(tableEnum.duoxing_user_friend, this.ctx)
      .where({ userId, friendId })
      .orWhere({ userId: friendId, friendId: userId })
      .jhDelete();

    // TODO: 通知 userId & friendId; 更新好友列表

    return {};
  }
}

module.exports = UserManagementService;
