'use strict';

const path = require('path');
const assert = require('assert');

const { middleware, middlewareMatch } = require('egg-jianghu/config/middlewareConfig');
const eggJianghuPathTemp = require.resolve('egg-jianghu');
const eggJianghuPath = path.join(eggJianghuPathTemp, '../');

module.exports = appInfo => {
  assert(appInfo);

  const appId = 'jianghujs_demo_socket_io';
  const uploadDir = path.join(appInfo.baseDir, 'upload');
  const downloadBasePath = `/${appId}/upload`;

  return {
    jiangHuConfig: {
      enableSocket: true,
    },
    appId,
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
        { prefix: `/${appId}/public/`, dir: path.join(eggJianghuPath, "app/public") },
        { prefix: `/${appId}/upload/`, dir: uploadDir },
      ],
    },
    view: {
      defaultViewEngine: "nunjucks",
      mapping: { ".html": "nunjucks" },
      root: [path.join(appInfo.baseDir, "app/view"), path.join(eggJianghuPath, "app/view")].join(
        ","
      ),
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

    // duoxing应用配置
    duoxingConfig: {
      defaultAvatar: {
        user: "/userAvatar/default.jpg",
        group: "/groupAvatar/default.jpg",
      },
    },
  };

};
