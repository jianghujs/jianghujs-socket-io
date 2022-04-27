'use strict';

// app.js
class AppBootHook {
  constructor(app) {
    this.app = app;
  }

  // 所有配置已经加载完毕，用于自定义 Loader 挂载。
  async didLoad() {
  }
}

module.exports = AppBootHook;

