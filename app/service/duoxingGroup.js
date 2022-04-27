"use strict";

const Service = require("egg").Service;
const { BizError, errorInfoEnum } = require("../constant/error");
const { tableEnum, socketForward, noticeTypeEnum, duoxingGroupRoleInfoEnum, duoxingChatMessageTypeEnum, duoxingMessageContentTypeEnum, duoxingMessageStatusEnum } = require("../constant/constant");
const validateUtil = require("egg-jianghu/app/common/validateUtil");
const _ = require("lodash");
const actionDataScheme = Object.freeze({
  groupOpeartionBeforeHook: {
    type: "object",
    additionalProperties: true,
    required: ["groupId"],
    properties: {
      groupId: { type: "string" },
    },
  },
  getGroupInfo: {
    type: "object",
    additionalProperties: true,
    required: ["groupId"],
    properties: {
      groupId: { type: "string" },
    },
  },
});


class DuoxingGroupService extends Service {
  async groupOpeartionBeforeHook() {
    const { jianghuKnex, config } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;
    validateUtil.validate(actionDataScheme.groupOpeartionBeforeHook, actionData);

    const { groupId } = actionData;
    const group = await jianghuKnex(tableEnum._group).where({ groupId }).first();
    if (!group) {
      throw new BizError(errorInfoEnum.chat_group_not_found);
    }

    try {
      group.groupExtend = JSON.parse(group.groupExtend);
    } catch (err) {
      group.groupExtend = {};
    }

    let groupUserList = await jianghuKnex(tableEnum.view01_user_group_role)
      .where({ groupId })
      .select();
    groupUserList.forEach((x) => {
      x.sort = duoxingGroupRoleInfoEnum[x.roleId] ? duoxingGroupRoleInfoEnum[x.roleId].sort : 9999;
    });
    groupUserList = _.sortBy(groupUserList, ["sort"], ["desc"]);
    const currentGroupUser = groupUserList.find((x) => x.userId === userId);

    this.ctx.beforHookData = {
      group,
      groupUserList,
      currentGroupUser,
    };
  }

  async getGroupInfo() {
    const { group, groupUserList, currentGroupUser } = this.ctx.beforHookData;
    group.groupUserList = groupUserList;

    return group;
  }
}

module.exports = DuoxingGroupService;


