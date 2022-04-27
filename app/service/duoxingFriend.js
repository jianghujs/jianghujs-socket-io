"use strict";

// ========================================常用 require start===========================================
const Service = require("egg").Service;
const { BizError, errorInfoEnum } = require("../constant/error");
const { tableEnum, socketForward, noticeTypeEnum, duoxingChatMessageTypeEnum, duoxingMessageContentTypeEnum, duoxingMessageStatusEnum, duoxingFriendStatusEnum } = require("../constant/constant");
const idGenerateUtil = require("egg-jianghu/app/common/idGenerateUtil");
const validateUtil = require("egg-jianghu/app/common/validateUtil");
const _ = require("lodash");
const dayjs = require("dayjs");
const actionDataScheme = Object.freeze({
  addUserFriend: {
    type: "object",
    additionalProperties: true,
    required: ["friendId"],
    properties: {
      friendId: { type: "string" },
      requestRemark: { type: "string" },
    },
  },
  delUserFriend: {
    type: "object",
    additionalProperties: true,
    required: ["friendId"],
    properties: {
      friendId: { type: "string" },
    },
  },
  acceptUserFriend: {
    type: "object",
    additionalProperties: true,
    required: ["friendId"],
    properties: {
      friendId: { type: "string" },
    },
  },
  rejectUserFriend: {
    type: "object",
    additionalProperties: true,
    required: ["friendId"],
    properties: {
      friendId: { type: "string" },
    },
  },
});


class DuoxingFriendService extends Service {
  async getUserFriend() {
    const { jianghuKnex } = this.app;
    const { userId } = this.ctx.userInfo;

    const userFriendList = await jianghuKnex(tableEnum.view01_duoxing_user_friend)
      .where({ userId, friendStatus: duoxingFriendStatusEnum.isFriend })
      .select();
    for (const userFriend of userFriendList) {
      userFriend.isOnline = !!userFriend.socketOnlineCount;
    }
    return { rows: userFriendList };
  }
}

module.exports = DuoxingFriendService;
