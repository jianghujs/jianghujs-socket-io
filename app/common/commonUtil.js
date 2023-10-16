"use strict";

const os = require("os");

module.exports = {
  // TODO: 使用egg挂载 方法到 ctx，然后使用 logger.error
  jsonParse(jsonString) {
    let json = null;
    try {
      json = JSON.parse(jsonString);
    } catch (err) {
      json = {};
      console.error(err);
    }
    return json;
  },
};
