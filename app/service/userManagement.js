'use strict';

// ========================================常用 require start===========================================
const Service = require('egg').Service;
const { BizError, errorInfoEnum } = require('../constant/error');
const { genderEnum, tableEnum } = require('../constant/constant');
const validateUtil = require("@jianghujs/jianghu/app/common/validateUtil");
// ========================================常用 require end=============================================
const _ = require("lodash");
const idGenerateUtil = require("@jianghujs/jianghu/app/common/idGenerateUtil");
const md5 = require("md5-node");
const actionDataScheme = Object.freeze({
  addUser: {
    type: "object",
    additionalProperties: true,
    required: ["userId", "username", "clearTextPassword"],
    properties: {
      userId: { type: "string" },
      clearTextPassword: { type: "string" },
      username: { type: "string" },
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
  resetUserPassword: {
    type: "object",
    additionalProperties: true,
    required: ["userId", "clearTextPassword"],
    properties: {
      userId: { type: "string" },
      clearTextPassword: { type: "string" },
    },
  },
});

class UserManagementService extends Service {
  async addUser() {
    const { actionData } = this.ctx.request.body.appData;
    const { jianghuKnex, config } = this.app;
    const { defaultAvatar } = config.duoxingConfig;
    validateUtil.validate(actionDataScheme.addUser, actionData);
    const { userId, username, clearTextPassword } = actionData;
    let { userAvatar } = actionData;

    const md5Salt = idGenerateUtil.uuid(12);
    const password = md5(`${clearTextPassword}_${md5Salt}`);
    if (!userAvatar) {
      userAvatar = defaultAvatar.user;
    }
    const insertParamsTemp = _.pick(actionData, [
      "contactNumber",
      "gender",
      "birthday",
      "signature",
      "email",
      "userType",
      "userStatus",
    ]);
    const insertParams = {
      ...insertParamsTemp,
      userId,
      username,
      password,
      clearTextPassword,
      md5Salt,
      userAvatar,
    };
    await jianghuKnex(tableEnum._user, this.ctx).jhInsert(insertParams);
    return { userId, username };
  }

  async resetUserPassword() {
    const { actionData } = this.ctx.request.body.appData;
    const { jianghuKnex } = this.app;
    validateUtil.validate(actionDataScheme.resetUserPassword, actionData);
    const { userId, clearTextPassword } = actionData;

    const user = await jianghuKnex(tableEnum._user).where({ userId }).first();
    if (!user) {
      throw new BizError(errorInfoEnum.user_not_exist);
    }
    const md5Salt = idGenerateUtil.uuid(12);
    const password = md5(`${clearTextPassword}_${md5Salt}`);
    const updateParams = { password, clearTextPassword, md5Salt };
    await jianghuKnex(tableEnum._user, this.ctx).where({ userId }).jhUpdate(updateParams);
    return {};
  }
}

module.exports = UserManagementService;
