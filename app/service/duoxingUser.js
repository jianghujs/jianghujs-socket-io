"use strict";

// ========================================常用 require start===========================================
const Service = require("egg").Service;
const { BizError, errorInfoEnum } = require("../constant/error");
const { genderEnum, tableEnum } = require("../constant/constant");
const validateUtil = require("egg-jianghu/app/common/validateUtil");
// ========================================常用 require end=============================================
const _ = require("lodash");
const actionDataScheme = Object.freeze({
  getUserGroupRoleListByGroupIdList: {
    type: "object",
    additionalProperties: true,
    required: ["groupIdList"],
    properties: {
      groupUserIdList: { type: "array" },
    },
  },
});

class DuoxingUserService extends Service {

  async getUserGroupRoleListByGroupIdList() {
    const { actionData } = this.ctx.request.body.appData;
    const { jianghuKnex, config } = this.app;
    const { userInfo } = this.ctx;
    const { userId } = userInfo;
    validateUtil.validate(actionDataScheme.setUserDetail, actionData);

    const { groupIdList } = actionData;
    const result = await jianghuKnex(tableEnum._user_group_role)
      .whereIn("groupId", groupIdList)
      .select();
    return result;
  }
}

module.exports = DuoxingUserService;
