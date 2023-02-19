'use strict';

const path = require('path');

const { middleware, middlewareMatch } = require('@jianghujs/jianghu/config/middlewareConfig');

const eggJianghuDirResolve = require.resolve('@jianghujs/jianghu');
const eggJianghuDir = path.join(eggJianghuDirResolve, '../');

module.exports = appInfo => {

  const appId = 'jianghujs_demo_socket_io';

  return {
    jiangHuConfig: {
      enableSocket: true,
      ignoreListOfResourceRequestLog: [
        'allPage.getConstantList', 'allPage.httpUploadByStream', 'allPage.httpUploadByBase64', 'allPage.httpDownloadByBase64',
        'socket.disconnect', 'socket.connect', 'index.pingRecord', 'chat.getRoomInfo', 'chat.getGroupInfo',
        'allPage.getUserRoomRoleList', 'allPage.getUserGroupRoleList', 'allPage.userInfo', 'chat.getMessageHistory', 'index.getSrsToken',
        'index.srsRtcRequest', 'index.cleanCurrentUserRoomSession', 'index.cleanCurrentUserGroupSession',
      ],
      // Tip: 兼容配置, 下一个大版本删除
      compatibleConfig: {
        resourceRequestLogRecordUserId: true
      }
    },
    // duoxing应用配置
    duoxingConfig: {
      defaultAvatar: {
        user: "/userAvatar/default.jpg",
        room: "/roomAvatar/default.jpg",
      },
      enableSyncChatSession: true,
      syncChatSessionInterval: "5m", // 5m 30s
    },
    appId,
    appTitle: "Socket IO 演示",
    appLogo: `${appId}/public/img/logo.svg`,
    indexPage: `/${appId}/page/index`,
    loginPage: `/${appId}/page/login`,
    helpPage: `/${appId}/page/help`,

    uploadDir: path.join(appInfo.baseDir, 'upload'),
    downloadBasePath: `/${appId}/upload`,

    primaryColor: "#0cc1e2",
    primaryColorA80: "#F1FDFF",

    static: {
      dynamic: true,
      preload: false,
      maxAge: 31536000,
      buffer: true,
      dir: [
        { prefix: `/${appId}/public/`, dir: path.join(appInfo.baseDir, 'app/public') },
        { prefix: `/${appId}/public/`, dir: path.join(eggJianghuDir, 'app/public') },
      ],
    },
    jianghuConfig: {
      enableUploadStaticFileCache: true,
      enableUploadStaticFileAuthorization: false,
    },

    view: {
      defaultViewEngine: 'nunjucks',
      mapping: { '.html': 'nunjucks' },
      root: [
        path.join(appInfo.baseDir, 'app/view'),
        path.join(eggJianghuDir, 'app/view'),
      ].join(','),
    },

    middleware,
    ...middlewareMatch,
    socketIO: {
      path: `/${appId}/socket.io`,
      serveClient: true,
      connectTimeout: 45000,
      // 多work模式下需要 启用 redis adapter
      // redis: {
      //   host: "127.0.0.1",
      //   port: "6379",
      //   // password: '',
      //   db: 0,
      // },
    },
  };

};
