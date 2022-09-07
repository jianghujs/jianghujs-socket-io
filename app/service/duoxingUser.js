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

});

class DuoxingUserService extends Service {

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
