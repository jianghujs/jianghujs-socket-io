'use strict';
const path = require('path');
const eggJianghuDirResolve = require.resolve('@jianghujs/jianghu');
const eggJianghuDir = path.join(eggJianghuDirResolve, '../');

/** @type Egg.EggPlugin */
module.exports = {
  socketIO: {
    enable: true,
    path: path.join(eggJianghuDir, 'plugins/socket-io')
  }
};
