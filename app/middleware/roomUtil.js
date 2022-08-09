'use strict';
const {tableEnum} = require("../constant/constant");

module.exports = {
  async getUserRoomList(ctx) {
    let userId;
    if(ctx.request.body.appData.pageId === 'login') {
      userId = ctx.request.body.appData.actionData.userId;
    } else {
      userId = ctx.userInfo.user.userId;
    }
    // const {userId} = ctx.requestBody;
    let userRoomRoleList = [];
    if(userId) {
      userRoomRoleList = await ctx.app.jianghuKnex(`${tableEnum.user_room_role} as a`)
        .innerJoin(`${tableEnum.room} as b`, "b.roomId", "a.roomId")
        .innerJoin(`${tableEnum._role} as c`, "c.roleId", "a.roleId")
        .where({"a.userId": userId})
        .select(
          "a.*",
          "b.roomName",
          "b.roomAvatar",
          "b.roomExtend",
          "c.roleName"
        );
    }
    return userRoomRoleList;
  }
}
