"use strict";

// ========================================常用 require start===========================================
const Service = require("egg").Service;
const { BizError, errorInfoEnum } = require("../constant/error");
const { genderEnum, tableEnum, deviceTypeEnum } = require("../constant/constant");
const validateUtil = require("@jianghujs/jianghu/app/common/validateUtil");
// ========================================常用 require end=============================================
const _ = require("lodash");
const dayjs = require('dayjs');
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

  async getUserRoomRoleListService() {
    const { knex } = this.app;
    const { userId, operationAt } = this.ctx.request.body.appData.where;
    const compareDate = dayjs(operationAt || '2010-01-01T00:00:00+08:00').format('YYYY-MM-DDTHH:mm:ss+08:00'); // 2022-09-05T19:51:35+08:00
    const rows = await knex(tableEnum.view01_user_room_role)
      .where('userId', userId).andWhere(function() {
        this.where('operationAt', '>', compareDate).orWhere('roomOperationAt', '>', compareDate)
      }).select('id', 'roleId', 'roleName',
        'roomAvatar', 'roomExtend', 'roomId',
        'roomName', 'userId', 'username');
    return { rows };
  }
}

module.exports = DuoxingUserService;
