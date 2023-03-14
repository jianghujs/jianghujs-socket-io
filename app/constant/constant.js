'use strict';

const dayjs = require('dayjs');
const _ = require('lodash')

module.exports.resourcePath = 'resource';

// TODO: 这里的代码需要删除，然后直接使用jianghu里的 socketForward
module.exports.socketForward = {
  bodyBuild: ({ packageId, appData }) =>
    resourcePackageBuild({
      packageId,
      packageType: "socketForward",
      appData,
    }),
  userNoticeBodyBuild: ({ packageId, appData: { appId, actionData } }) =>
    resourcePackageBuild({
      packageId,
      packageType: "socketForward",
      appData: { appId, pageId: "socket", actionId: "userNotice", actionData },
    })
};

function resourcePackageBuild ({ packageId, packageType, status, appData }) {
  return {
    packageId: packageId || `${Date.now()}_${_.random(1000000, 9999999)}`,
    packageType,
    status,
    timestamp: dayjs().format(),
    appData
  }
}