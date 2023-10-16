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
    }),
  roomNoticeBodyBuild: ({ packageId, appData: { appId, actionData } }) =>
    resourcePackageBuild({
      packageId,
      packageType: "socketForward",
      appData: { appId, pageId: "socket", actionId: "roomNotice", actionData },
    }),
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

module.exports.duoxingChatMessageTypeEnum = Object.freeze({
  notice: "notice",
  user: "user",
  room: "room",
  bot: "bot",
});

module.exports.deviceTypeEnum = Object.freeze({
  user: "user",
  bot_databot: "bot_databot",
  bot_chatbot: "bot_chatbot",
  bot_xiaochengxu: "bot_xiaochengxu",
});


module.exports.duoxingAddFriendRequestStatusEnum = Object.freeze({
  init: 'init',
  read: 'read',
  accept: 'accept',
  reject: 'reject'
})

module.exports.duoxingAddFriendRequestStatusSortEnum = Object.freeze({
  init: 1,
  read: 1,
  accept: 2,
  reject: 2
})

module.exports.duoxingSocketStatusEnum = Object.freeze({
  online: 'online',
  offline: 'offline'
})

module.exports.noticeTypeEnum = Object.freeze({
  // 非聊天记录类型
  onlineNotice: 'onlineNotice',
  offlineNotice: 'offlineNotice',
  errorNotice: 'errorNotice'
})

module.exports.duoxingRoomRoleInfoEnum = Object.freeze({
  roomOwner: {
    roleId: 'roomOwner',
    roleName: '群主',
    sort: 1
  },
  roomAdmin: {
    roleId: 'roomAdmin',
    roleName: '群管理员',
    sort: 2
  },
  roomUser: {
    roleId: 'roomUser',
    roleName: '群用户',
    sort: 3
  }
})

module.exports.genderEnum = Object.freeze({
  male: 'male',
  female: 'female'
})

module.exports.duoxingMessageContentTypeEnum = Object.freeze({
  text: "text",
  atText: "atText",
  image: "image",
  file: "file",
  notice: "notice",
  audio: "audio",
  video: "video",
  userCard: "userCard",
  chatbotRequest: "chatbotRequest",
  chatbotResponse: "chatbotResponse",
  xiaochengxuRequest: "xiaochengxuRequest",
  xiaochengxuResponse: "xiaochengxuResponse",
  databotRequest: "databotRequest",
  databotResponse: "databotResponse",
  revoke: "revoke",
});

module.exports.userTypeEnum = Object.freeze({
  common: 'common',
  admin: 'admin'
})

module.exports.duoxingMessageStatusEnum = Object.freeze({
  active: 'active',
  revoke: 'revoke'
})

module.exports.cacheKey = Object.freeze({
  allUserList: 'allUserList',
  allRoomList: 'allRoomList',
  allResourceList: 'allResourceList',
  allPageList: 'allPageList',
  allUserRoomRolePageList: 'allUserRoomRolePageList',
  allUserRoomRoleResourceList: 'allUserRoomRoleResourceList'
})

module.exports.duoxingFriendStatusEnum = Object.freeze({
  isFriend: "isFriend",
  notFriend: "notFriend",
  waitingApprove: "waitingApprove",
  rejectApply: "rejectApply",
});

