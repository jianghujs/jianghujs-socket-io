"use strict";

// ========================================常用 require start===========================================
const Service = require("egg").Service;
const { BizError, errorInfoEnum } = require("../constant/error");
const { genderEnum, tableEnum, deviceTypeEnum } = require("../constant/constant");
const validateUtil = require("@jianghujs/jianghu/app/common/validateUtil");
// ========================================常用 require end=============================================
const _ = require("lodash");
const actionDataScheme = Object.freeze({
  setUserDetail: {
    type: "object",
    additionalProperties: true,
    required: [],
    properties: {
      username: { anyOf: [{ type: "string" }, { type: "null" }] },
      userAvatar: { anyOf: [{ type: "string" }, { type: "null" }] },
      contactNumber: { anyOf: [{ type: "string" }, { type: "null" }] },
      gender: {
        anyOf: [{ type: "string", enum: [genderEnum.male, genderEnum.female] }, { type: "null" }],
      },
      birthday: { anyOf: [{ type: "string", format: "date-time" }, { type: "null" }] },
      signature: { anyOf: [{ type: "string" }, { type: "null" }] },
      email: { anyOf: [{ type: "string" }, { type: "null" }] },
    },
  },
  getUserRoomRoleListByRoomIdList: {
    type: "object",
    additionalProperties: true,
    required: ["roomIdList"],
    properties: {
      roomUserIdList: { type: "array" },
    },
  },
  getUserSocketIdOnlineList: {
    type: "object",
    additionalProperties: true,
    required: ["userId"],
    properties: {
      userId: { type: "string" },
    },
  },
});

class DuoxingUserService extends Service {
  async setUserDetail() {
    const { actionData } = this.ctx.request.body.appData;
    const { jianghuKnex, config } = this.app;
    const { userInfo } = this.ctx;
    const { userId } = userInfo;
    validateUtil.validate(actionDataScheme.setUserDetail, actionData);

    const updateParams = _.pick(actionData, ["username", "userAvatar", "contactNumber", "gender", "birthday", "signature", "email"]);
    await jianghuKnex(tableEnum._user, this.ctx).where({ userId }).jhUpdate(updateParams);
    const newUserDatail = await jianghuKnex(tableEnum.view01_user).where({ userId }).first();
    return newUserDatail;
  }

  async getUserRoomRoleListByRoomIdList() {
    const { actionData } = this.ctx.request.body.appData;
    const { jianghuKnex, config } = this.app;
    const { userInfo } = this.ctx;
    const { userId } = userInfo;
    validateUtil.validate(actionDataScheme.setUserDetail, actionData);

    const { roomIdList } = actionData;
    const result = await jianghuKnex(tableEnum.user_room_role).whereIn("roomId", roomIdList).select();
    return result;
  }

  async checkXiaochengxuIsOnline() {
    const { actionData } = this.ctx.request.body.appData;
    validateUtil.validate(actionDataScheme.getUserSocketIdOnlineList, actionData);

    const { userId } = actionData;

    const allSockets = await this.ctx.app.socketIO.fetchSockets();
    const userSocket = allSockets.find((socket) => socket.data.userId === userId && socket.data.deviceType.startsWith("bot"));
    const isOnline = !!userSocket;
    return { isOnline };
  }

  async getUserBotList() {
    const allSockets = await this.ctx.app.socketIO.fetchSockets();
    const botSockets = allSockets.filter((socket) => socket.data.deviceType === deviceTypeEnum.bot_xiaochengxu || socket.data.deviceType === deviceTypeEnum.bot_chatbot);
    const botOnlineUserList = botSockets.map((socket) => socket.data);
    return { rows: botOnlineUserList };
  }
}

module.exports = DuoxingUserService;
