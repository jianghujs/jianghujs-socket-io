'use strict';
// 每天定时归档 requestLog

const dayjs = require('dayjs');
const { tableEnum } = require('../constant/constant');
const fs = require('fs');
const path = require('path');

module.exports = {
  schedule: {
    // immediate: true, // 应用启动后触发
    cron: '0 0 3 * * *', // 每天 3 点执行
    type: 'worker', // worker: 只有一个worker执行
    disable: true
  },
  // 定时任务的入口
  async task (ctx) {
    const startTime = new Date().getTime();
    const { app } = ctx;
    const { knex, logger } = app;

    // 处理 3 天前的数据，即只处理小于 2 天前的数据
    const handleDate = dayjs(new Date(new Date().setDate(new Date().getDate() - 3))).format('YYYY-MM-DD');
    const compareDate = dayjs(new Date(new Date().setDate(new Date().getDate() - 2))).format('YYYY-MM-DD');
    // TODO: 验证下是否会被 eggjs 更新掉
    const stream = fs.createWriteStream(path.resolve(__dirname, `../../logs/${tableEnum._resource_request_log}_${handleDate}.log`));

    async function writeLogFile(logs) {
      logs.forEach(log => {
        stream.write(JSON.stringify(log) + '\n');
      })
    }

    // 每次 select 最旧的 1000 条，每 5w 条数据换一个文件
    for (let i = 0; i < 10000; i++) {
      const last1000 = await knex(tableEnum._resource_request_log).limit(1000).select();
      const olderThanDate = last1000.filter(o => o.createAt < compareDate);
      if (olderThanDate.length <= 0) {
        break;
      }
      logger.info('[archiveRequestLog.js] archive', { count: olderThanDate.length });
      await writeLogFile(olderThanDate)
      await knex(tableEnum._resource_request_log).whereIn('id', olderThanDate.map(o => o.id)).delete();
    }
    stream.end();

    const endTime = new Date().getTime();
    logger.info('[archiveRequestLog.js]', { useTime: `${endTime - startTime}/ms` });
  }

};
