'use strict';
// 每天定时归档 requestLog

const dayjs = require('dayjs');
const {tableEnum} = require('../constant/constant');
const fs = require('fs');
const path = require('path');
const _ = require("lodash");

module.exports = {
  schedule: {
    immediate: true, // 应用启动后触发
    cron: '0 0 3 * * *', // 每天 3 点执行
    type: 'worker', // worker: 只有一个worker执行
    disable: false
    // interval: '10s'
  },
  // 定时任务的入口
  async task(ctx) {
    const startTime = new Date().getTime();
    const {app} = ctx;
    const {knex, logger} = app;

    const roomList = await knex(tableEnum.room).select();
    for (const room of roomList) {
      const roomUserList = await knex(tableEnum.view01_user_room_role).where('roomId', room.roomId).select();
      const allRoomUsername = roomUserList.map(user => user.username).join(',');
      let roomExtendMap = room.roomExtend || '{}';
      if (roomExtendMap && (typeof roomExtendMap === 'string')) {
        roomExtendMap = JSON.parse(roomExtendMap);
      }
      const roomExtend = Object.assign(roomExtendMap, {allRoomUsername});
      await knex(tableEnum.room).where('id', room.id)
        .update({roomExtend: JSON.stringify(roomExtend)});
    }

    const endTime = new Date().getTime();
    logger.info('[perfectRoomExtend.js]', {useTime: `${endTime - startTime}/ms`});
  }

};
