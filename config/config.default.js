'use strict';

const path = require('path');
const assert = require('assert');

const { middleware, middlewareMatch } = require('@jianghujs/jianghu/config/middlewareConfig');
const jianghuPathTemp = require.resolve('@jianghujs/jianghu');
const jianghuPath = path.join(jianghuPathTemp, '../');

module.exports = appInfo => {
  assert(appInfo);

  const appId = 'jianghujs_demo_socket_io';
  const uploadDir = path.join(appInfo.baseDir, 'upload');
  const downloadBasePath = `/${appId}/upload`;

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
    primaryColor: "#0cc1e2",
    primaryColorA80: "#F1FDFF",
    appTitle: "Socket IO 演示",
    appLogo: `${appId}/public/img/logo.png`,
    appType: "single",
    appDirectoryLink: "",
    indexPage: `/${appId}/page/index`,
    loginPage: `/${appId}/page/login`,
    helpPage: `/${appId}/page/help`,
    uploadDir,
    downloadBasePath,
    static: {
      maxAge: 0,
      buffer: false,
      preload: false,
      maxFiles: 0,
      dir: [
        { prefix: `/${appId}/public/`, dir: path.join(appInfo.baseDir, "app/public") },
        { prefix: `/${appId}/public/`, dir: path.join(jianghuPath, "app/public") },
      ],
    },
    view: {
      defaultViewEngine: "nunjucks",
      mapping: { ".html": "nunjucks" },
      root: [path.join(appInfo.baseDir, "app/view"), path.join(jianghuPath, "app/view")].join(","),
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
