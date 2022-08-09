/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : jianghujs_demo_socket_io

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 09/08/2022 22:57:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for _cache
-- ----------------------------
DROP TABLE IF EXISTS `_cache`;
CREATE TABLE `_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户Id',
  `content` longtext COMMENT '缓存数据',
  `md5` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='缓存表';

-- ----------------------------
-- Records of _cache
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _constant
-- ----------------------------
DROP TABLE IF EXISTS `_constant`;
CREATE TABLE `_constant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) DEFAULT NULL,
  `constantType` varchar(255) DEFAULT NULL COMMENT '常量类型; object, array',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `constantValue` text COMMENT '常量内容; object, array',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COMMENT='常量表; 软删除未启用;';

-- ----------------------------
-- Records of _constant
-- ----------------------------
BEGIN;
INSERT INTO `_constant` VALUES (6, 'notice', 'object', '', '{\"title\":\"4.3.7 版本发布\",\"content\":\"快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n\",\"imageSrc\":\"/noticeImage/1647076649263_719911_noticeImage.jpeg\",\"isImageShown\":false,\"isTextShown\":true}', 'update', 'admin01', 'admin01', '2022-03-12T17:19:50+08:00');
INSERT INTO `_constant` VALUES (59, 'userStatus', 'array', NULL, '[{\"value\": \"active\", \"text\": \"正常\"}, {\"value\": \"banned\", \"text\": \"禁用\"}]', 'insert', NULL, NULL, NULL);
INSERT INTO `_constant` VALUES (60, 'userType', 'array', NULL, '[{\"value\": \"common\", \"text\": \"普通用户\"}]', 'insert', NULL, NULL, NULL);
INSERT INTO `_constant` VALUES (61, 'gender', 'array', NULL, '[{\"value\": \"male\", \"text\": \"男\"}, {\"value\": \"female\", \"text\": \"女\"}]', 'insert', NULL, NULL, NULL);
INSERT INTO `_constant` VALUES (62, 'version', 'object', NULL, '{ \"version\": \"4.3.7\", \"title\": \"4.3.7 版本发布\", \"note\": \"新版本介绍\\n 1. 聊天输入优化\", \"apkVersion\": \"4.3.2\", \"apkLink\": \"\", \"apkNote\": \"\", \"desktopVersion\": \"4.3.2\", \"desktopLink\": \"http://192.168.110.215:8082/duoxing/upload/duoxing-1.0.1.dmg.zip\", \"desktopNote\": \"测试桌面客户端升级\" }', 'insert', NULL, NULL, NULL);
INSERT INTO `_constant` VALUES (64, 'emotion', 'array', NULL, '[\n  {\n    \"dir\":\"face01\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"png\",\n    \"cols\":5,\n    \"total\":86\n  },\n  {\n    \"dir\":\"face02\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face03\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face04\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face05\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":1,\n    \"total\":7\n  },\n  {\n    \"dir\":\"face06\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":24\n  },\n  {\n    \"dir\":\"face07\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face08\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":23\n  },\n  {\n    \"dir\":\"face09\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face10\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":20\n  },\n  {\n    \"dir\":\"face11\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":13\n  },\n  {\n    \"dir\":\"face12\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face13\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":15\n  },\n  {\n    \"dir\":\"face14\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  }\n]\n', 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _file
-- ----------------------------
DROP TABLE IF EXISTS `_file`;
CREATE TABLE `_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` varchar(255) DEFAULT NULL COMMENT 'fileId',
  `fileDirectory` varchar(255) DEFAULT NULL COMMENT '文件保存路径;',
  `filename` varchar(255) DEFAULT NULL COMMENT '文件名;',
  `filenameStorage` varchar(255) DEFAULT NULL COMMENT '文件保存名',
  `downloadPath` varchar(255) DEFAULT NULL COMMENT '文件下载路径',
  `fileType` varchar(255) DEFAULT NULL COMMENT '文件类型;(预留字段)',
  `fileDesc` varchar(255) DEFAULT NULL COMMENT '文件描述',
  `binarySize` varchar(255) DEFAULT NULL COMMENT '文件二进制大小',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `fileId_index` (`fileId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COMMENT='文件表; 软删除未启用;';

-- ----------------------------
-- Records of _file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _group
-- ----------------------------
DROP TABLE IF EXISTS `_group`;
CREATE TABLE `_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` varchar(255) NOT NULL COMMENT 'groupId',
  `groupName` varchar(255) DEFAULT NULL COMMENT '群组名',
  `groupType` varchar(255) DEFAULT NULL COMMENT '群组类型; system, cgg,course',
  `groupDesc` varchar(255) DEFAULT NULL COMMENT '群组描述',
  `groupAvatar` varchar(255) DEFAULT NULL COMMENT '群logo',
  `groupExtend` varchar(1024) DEFAULT '{}' COMMENT '拓展字段; { groupNotice: ''xx'' }',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `groupId_index` (`groupId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COMMENT='群组表; 软删除未启用;';

-- ----------------------------
-- Records of _group
-- ----------------------------
BEGIN;
INSERT INTO `_group` VALUES (1, 'adminGroup', '权限管理组', 'system', '管理组', '/groupAvatar/default.jpg', '{}', 'insert', NULL, NULL, NULL);
INSERT INTO `_group` VALUES (6, 'wudang', '武当', NULL, '武当', '/groupAvatar/default1.jpg', '{\"groupNotice\":\"11223322\"}', 'jhUpdate', 'W00001', '张三丰', '2022-03-14T12:59:36+08:00');
INSERT INTO `_group` VALUES (7, 'gaibang', '丐帮--', NULL, '丐帮', '/groupAvatar/default2.jpg', '{}', 'jhUpdate', 'G00001', '洪七公', '2022-03-14T16:27:34+08:00');
INSERT INTO `_group` VALUES (8, 'huashan', '华山派', NULL, '华山派', '/groupAvatar/default3.jpg', '{}', 'insert', NULL, NULL, NULL);
INSERT INTO `_group` VALUES (13, 'jd-_eJWCsaD90qKXcgzlH', '天下会', NULL, NULL, '/groupAvatar/default2.jpg', '{}', 'update', NULL, NULL, '2022-03-05T17:18:15+08:00');
INSERT INTO `_group` VALUES (15, 'C1vDvXCgb4uAsoa1K8mPC', 'admin测试群___', NULL, NULL, '/groupAvatar/default2.jpg', '{}', 'update', NULL, NULL, '2022-03-12T18:36:36+08:00');
INSERT INTO `_group` VALUES (16, 'JcCVYjEqySIdMZxcy8O11', '1111', NULL, NULL, '/groupAvatar/default2.jpg', '{}', 'jhUpdate', 'admin01', 'admin01', '2022-03-12T22:38:25+08:00');
INSERT INTO `_group` VALUES (17, '9U_ww9I2TtgL4Fsi4whCz', 'admin,洪七公,郭靖等4人群聊', NULL, NULL, '/groupAvatar/default5.jpg', '{}', 'jhInsert', 'admin01', 'admin01', '2022-03-12T22:38:19+08:00');
INSERT INTO `_group` VALUES (18, 'beS8LsS2pMfHic-hNuGrD', 'admin,洪七公,郭靖等3人群聊', NULL, NULL, '/groupAvatar/default1.jpg', '{}', 'jhInsert', 'admin01', 'admin01', '2022-03-12T22:46:32+08:00');
INSERT INTO `_group` VALUES (19, 'Iy1J3vWCnnrVaZhbeCSn_', '张三丰,洪七公,令狐冲等3人群聊', NULL, NULL, '/groupAvatar/default2.jpg', '{}', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:37:05+08:00');
INSERT INTO `_group` VALUES (20, 'gBK5SDgE0ebEMWAgF2n9Y', '张三丰,洪七公,令狐冲等3人群聊', NULL, NULL, '/groupAvatar/default4.jpg', '{}', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:43:34+08:00');
INSERT INTO `_group` VALUES (21, 'Q07o3miNRKsBXrbCFFpaV', '张三丰,洪七公,令狐冲等3人群聊', NULL, NULL, '/groupAvatar/default6.jpg', '{}', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:46:03+08:00');
INSERT INTO `_group` VALUES (22, 'BJbrcnzn-MwG9KJ6taPZg', '张三丰,洪七公,令狐冲等3人群聊', NULL, NULL, '/groupAvatar/default5.jpg', '{}', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:53:52+08:00');
INSERT INTO `_group` VALUES (23, 'NVVv8YlhskIX0QHimHMap', '张三丰,洪七公,令狐冲等3人群聊', NULL, NULL, '/groupAvatar/default6.jpg', '{}', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:54:55+08:00');
INSERT INTO `_group` VALUES (24, 'bhF6JQXgXUqwlkC1Pdl8J', '张三丰,洪七公,令狐冲等3人群聊2', NULL, NULL, '/groupAvatar/default4.jpg', '{}', 'jhUpdate', 'W00001', '张三丰', '2022-03-14T10:30:22+08:00');
INSERT INTO `_group` VALUES (25, 'FsTa3bUxZId4MAdowDbxw', '测试修改群名字1', NULL, NULL, '/groupAvatar/default3.jpg', '{}', 'jhUpdate', 'W00001', '张三丰', '2022-03-14T12:47:35+08:00');
INSERT INTO `_group` VALUES (26, '8CdYgl90D-Zz0OC6eA_Dk', '张三丰,admin01,令狐冲等3人群聊', NULL, NULL, '/groupAvatar/default1.jpg', '{}', 'jhInsert', 'W00001', '张三丰', '2022-03-14T20:44:11+08:00');
COMMIT;

-- ----------------------------
-- Table structure for _page
-- ----------------------------
DROP TABLE IF EXISTS `_page`;
CREATE TABLE `_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'pageId',
  `pageName` varchar(255) DEFAULT NULL COMMENT 'page name',
  `pageType` varchar(255) DEFAULT NULL COMMENT '页面类型; showInMenu, dynamicInMenu',
  `sort` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COMMENT='页面表; 软删除未启用;';

-- ----------------------------
-- Records of _page
-- ----------------------------
BEGIN;
INSERT INTO `_page` VALUES (2, 'help', '帮助', 'dynamicInMenu', '0', 'insert', NULL, NULL, NULL);
INSERT INTO `_page` VALUES (3, 'login', '登陆', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_page` VALUES (6, 'manual', '操作手册', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_page` VALUES (31, 'index', '聊天', 'showInMenu', '0', 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _record_history
-- ----------------------------
DROP TABLE IF EXISTS `_record_history`;
CREATE TABLE `_record_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) DEFAULT NULL COMMENT '表',
  `recordId` int(11) DEFAULT NULL COMMENT '数据在table中的主键id; recordContent.id',
  `recordContent` text NOT NULL COMMENT '数据JSON',
  `packageContent` text NOT NULL COMMENT '当时请求的 package JSON',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `index_record_id` (`recordId`),
  KEY `index_table_action` (`table`,`operation`)
) ENGINE=InnoDB AUTO_INCREMENT=4238 DEFAULT CHARSET=utf8mb4 COMMENT='数据历史表';

-- ----------------------------
-- Records of _record_history
-- ----------------------------
BEGIN;
INSERT INTO `_record_history` VALUES (4205, '_user_session', 175, '{\"id\":175,\"userId\":\"admin01\",\"userIp\":null,\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_c0e979ad_chrome\",\"socketStatus\":\"offline\",\"authToken\":\"QxYCeR71B8pGk8OYn3_kukOZA44nVvwGcAcH\",\"operation\":\"jhInsert\",\"operationByUserId\":null,\"operationByUser\":null,\"operationAt\":\"2022-04-27T21:15:38+08:00\"}', '{\"appData\":{\"pageId\":\"login\",\"actionId\":\"passwordLogin\",\"actionData\":{\"userId\":\"admin01\",\"password\":\"123456\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_c0e979ad_chrome\"},\"appId\":\"jianghujs_demo_socket_io\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\"},\"packageId\":\"1651065338097_2854992\",\"packageType\":\"httpRequest\"}', 'jhInsert', NULL, NULL, '2022-04-27T21:15:38+08:00');
INSERT INTO `_record_history` VALUES (4206, '_user_session', 175, '{\"id\":175,\"userId\":\"admin01\",\"userIp\":null,\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_c0e979ad_chrome\",\"socketStatus\":\"online\",\"authToken\":\"QxYCeR71B8pGk8OYn3_kukOZA44nVvwGcAcH\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-04-27T21:15:40+08:00\"}', '{\"packageId\":\"1651065339314_5950212\",\"packageType\":\"socketRequest\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_c0e979ad_chrome\",\"status\":null,\"timestamp\":\"2022-04-27T13:15:39.314Z\",\"appData\":{\"appId\":\"jianghujs_demo_socket_io\",\"pageId\":\"socket\",\"actionId\":\"connect\",\"actionData\":{\"socketId\":\"127.0.0.1:7001_Mac.10.15.7_c0e979ad_chrome::admin01\"}}}', 'jhUpdate', 'admin01', 'admin01', '2022-04-27T21:15:40+08:00');
INSERT INTO `_record_history` VALUES (4207, '_user_session', 295, '{\"id\":295,\"userId\":\"admin01\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"offline\",\"authToken\":\"_tSzAJLwfuxEMXcxPlWJ-RLlI7Psc_zBtVTQ\",\"operation\":\"jhInsert\",\"operationByUserId\":null,\"operationByUser\":null,\"operationAt\":\"2022-05-04T20:57:18+08:00\"}', '{\"appData\":{\"pageId\":\"login\",\"actionId\":\"passwordLogin\",\"actionData\":{\"userId\":\"admin01\",\"password\":\"123456\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\"},\"appId\":\"socket-io-demo\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\"},\"packageId\":\"1651669038250_5005050\",\"packageType\":\"httpRequest\"}', 'jhInsert', NULL, NULL, '2022-05-04T20:57:18+08:00');
INSERT INTO `_record_history` VALUES (4208, '_file', 118, '{\"id\":118,\"fileId\":\"1651675944074_830752\",\"fileDirectory\":\"admin01/2022/5/4/\",\"filename\":\"11.jpeg\",\"filenameStorage\":\"1651675944074_830752_11.jpeg\",\"downloadPath\":\"/admin01/2022/5/4//1651675944074_830752_11.jpeg\",\"fileType\":null,\"fileDesc\":null,\"binarySize\":\"54.19KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-05-04T22:52:24+08:00\"}', '{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"uploadFileDone\",\"actionData\":{\"hash\":\"4852d6e9b58d4f4588fddd3d48c340da\",\"total\":1,\"chunkSize\":3145728,\"filename\":\"11.jpeg\",\"fileDirectory\":\"admin01/2022/5/4/\"},\"appId\":\"socket-io-demo\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\"},\"packageId\":\"1651675943661_8829860\",\"packageType\":\"httpRequest\"}', 'jhInsert', 'admin01', 'admin01', '2022-05-04T22:52:24+08:00');
INSERT INTO `_record_history` VALUES (4209, '_file', 119, '{\"id\":119,\"fileId\":\"1651675951776_192376\",\"fileDirectory\":\"admin01/2022/5/4/\",\"filename\":\"11.jpeg\",\"filenameStorage\":\"1651675951776_192376_11.jpeg\",\"downloadPath\":\"/admin01/2022/5/4//1651675951776_192376_11.jpeg\",\"fileType\":null,\"fileDesc\":null,\"binarySize\":\"54.19KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-05-04T22:52:31+08:00\"}', '{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"uploadFileDone\",\"actionData\":{\"hash\":\"4852d6e9b58d4f4588fddd3d48c340da\",\"total\":1,\"chunkSize\":3145728,\"filename\":\"11.jpeg\",\"fileDirectory\":\"admin01/2022/5/4/\"},\"appId\":\"socket-io-demo\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\"},\"packageId\":\"1651675951372_8063832\",\"packageType\":\"httpRequest\"}', 'jhInsert', 'admin01', 'admin01', '2022-05-04T22:52:31+08:00');
INSERT INTO `_record_history` VALUES (4210, '_file', 120, '{\"id\":120,\"fileId\":\"1651675959922_334893\",\"fileDirectory\":\"admin01/2022/5/4/\",\"filename\":\"11.jpeg\",\"filenameStorage\":\"1651675959922_334893_11.jpeg\",\"downloadPath\":\"/admin01/2022/5/4//1651675959922_334893_11.jpeg\",\"fileType\":null,\"fileDesc\":null,\"binarySize\":\"54.19KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-05-04T22:52:39+08:00\"}', '{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"uploadFileDone\",\"actionData\":{\"hash\":\"4852d6e9b58d4f4588fddd3d48c340da\",\"total\":1,\"chunkSize\":3145728,\"filename\":\"11.jpeg\",\"fileDirectory\":\"admin01/2022/5/4/\"},\"appId\":\"socket-io-demo\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\"},\"packageId\":\"1651675959525_5394914\",\"packageType\":\"httpRequest\"}', 'jhInsert', 'admin01', 'admin01', '2022-05-04T22:52:39+08:00');
INSERT INTO `_record_history` VALUES (4211, '_file', 121, '{\"id\":121,\"fileId\":\"1651676170376_873134\",\"fileDirectory\":\"admin01/2022/5/4/\",\"filename\":\"PMBOK指南第6版-中文-new.pdf\",\"filenameStorage\":\"1651676170376_873134_PMBOK指南第6版-中文-new.pdf\",\"downloadPath\":\"/admin01/2022/5/4//1651676170376_873134_PMBOK指南第6版-中文-new.pdf\",\"fileType\":null,\"fileDesc\":null,\"binarySize\":\"19.84MB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-05-04T22:56:10+08:00\"}', '{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"uploadFileDone\",\"actionData\":{\"hash\":\"18a9e3ebc810dd5d87cf9ff8c584820d\",\"total\":7,\"chunkSize\":3145728,\"filename\":\"PMBOK指南第6版-中文-new.pdf\",\"fileDirectory\":\"admin01/2022/5/4/\"},\"appId\":\"socket-io-demo\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\"},\"packageId\":\"1651676169950_4828307\",\"packageType\":\"httpRequest\"}', 'jhInsert', 'admin01', 'admin01', '2022-05-04T22:56:10+08:00');
INSERT INTO `_record_history` VALUES (4212, '_file', 122, '{\"id\":122,\"fileId\":\"1651676241179_267645\",\"fileDirectory\":\"admin01/2022/5/4/\",\"filename\":\"11 (1).jpeg\",\"filenameStorage\":\"1651676241179_267645_11 (1).jpeg\",\"downloadPath\":\"/admin01/2022/5/4//1651676241179_267645_11 (1).jpeg\",\"fileType\":null,\"fileDesc\":null,\"binarySize\":\"54.19KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-05-04T22:57:21+08:00\"}', '{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"uploadFileDone\",\"actionData\":{\"hash\":\"4852d6e9b58d4f4588fddd3d48c340da\",\"total\":1,\"chunkSize\":3145728,\"filename\":\"11 (1).jpeg\",\"fileDirectory\":\"admin01/2022/5/4/\"},\"appId\":\"socket-io-demo\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\"},\"packageId\":\"1651676240770_3968231\",\"packageType\":\"httpRequest\"}', 'jhInsert', 'admin01', 'admin01', '2022-05-04T22:57:21+08:00');
INSERT INTO `_record_history` VALUES (4213, '_file', 123, '{\"id\":123,\"fileId\":\"1651676403188_701889\",\"fileDirectory\":\"admin01/2022/5/4/\",\"filename\":\"recordFile_224538.mp3\",\"filenameStorage\":\"1651676403188_701889_recordFile_224538.mp3\",\"downloadPath\":\"/admin01/2022/5/4//1651676403188_701889_recordFile_224538.mp3\",\"fileType\":null,\"fileDesc\":null,\"binarySize\":\"232.04KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-05-04T23:00:03+08:00\"}', '{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"uploadFileDone\",\"actionData\":{\"hash\":\"bd2809ba2c1aa0894f18476e8429a01b\",\"total\":1,\"chunkSize\":3145728,\"filename\":\"recordFile_224538.mp3\",\"fileDirectory\":\"admin01/2022/5/4/\"},\"appId\":\"socket-io-demo\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\"},\"packageId\":\"1651676402748_8668127\",\"packageType\":\"httpRequest\"}', 'jhInsert', 'admin01', 'admin01', '2022-05-04T23:00:03+08:00');
INSERT INTO `_record_history` VALUES (4214, '_user_session', 296, '{\"id\":296,\"userId\":\"admin01\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5071.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_c0e979ad_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"offline\",\"authToken\":\"hFMCOcDDBOX4dhUh-aP2PuT4uHO0JAbPBnF8\",\"operation\":\"jhInsert\",\"operationByUserId\":null,\"operationByUser\":null,\"operationAt\":\"2022-05-23T07:56:41+08:00\"}', '{\"appData\":{\"pageId\":\"login\",\"actionId\":\"passwordLogin\",\"actionData\":{\"userId\":\"admin01\",\"password\":\"123456\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_c0e979ad_chrome\",\"deviceType\":\"web\"},\"appId\":\"socket-io-demo\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5071.0 Safari/537.36\"},\"packageId\":\"1653263798806_6649832\",\"packageType\":\"httpRequest\"}', 'jhInsert', NULL, NULL, '2022-05-23T07:56:41+08:00');
INSERT INTO `_record_history` VALUES (4215, '_user_session', 297, '{\"id\":297,\"userId\":\"W00002\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"offline\",\"authToken\":\"IlErHTRMnT6RRAY5JyjYcr2JWFWG-JM6DaDQ\",\"operation\":\"jhInsert\",\"operationByUserId\":null,\"operationByUser\":null,\"operationAt\":\"2022-08-08T21:08:51+08:00\"}', '{\"appData\":{\"pageId\":\"login\",\"actionId\":\"passwordLogin\",\"actionData\":{\"userId\":\"W00002\",\"password\":\"123456\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\"},\"appId\":\"jianghujs_demo_socket_io\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\"},\"packageId\":\"1659964131176_4946078\",\"packageType\":\"httpRequest\"}', 'jhInsert', NULL, NULL, '2022-08-08T21:08:51+08:00');
INSERT INTO `_record_history` VALUES (4216, '_user_session', 297, '{\"id\":297,\"userId\":\"W00002\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"online\",\"authToken\":\"IlErHTRMnT6RRAY5JyjYcr2JWFWG-JM6DaDQ\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"W00002\",\"operationByUser\":\"张无忌\",\"operationAt\":\"2022-08-08T21:08:53+08:00\"}', '{\"packageId\":\"1659964133604_9439748\",\"packageType\":\"socketRequest\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"status\":null,\"timestamp\":\"2022-08-08T13:08:53.604Z\",\"appData\":{\"appId\":\"jianghujs_demo_socket_io\",\"pageId\":\"socket\",\"actionId\":\"connect\",\"actionData\":{\"socketId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome::W00002\"}}}', 'jhUpdate', 'W00002', '张无忌', '2022-08-08T21:08:53+08:00');
INSERT INTO `_record_history` VALUES (4217, '_user_session', 297, '{\"id\":297,\"userId\":\"W00002\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"online\",\"authToken\":\"\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"W00002\",\"operationByUser\":\"张无忌\",\"operationAt\":\"2022-08-08T21:09:01+08:00\"}', '{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"logout\",\"actionData\":{\"needSetCookies\":true},\"appId\":\"jianghujs_demo_socket_io\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\"},\"packageId\":\"1659964140972_7458506\",\"packageType\":\"httpRequest\"}', 'jhUpdate', 'W00002', '张无忌', '2022-08-08T21:09:01+08:00');
INSERT INTO `_record_history` VALUES (4218, '_user_session', 295, '{\"id\":295,\"userId\":\"admin01\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"online\",\"authToken\":\"HFtIOpiITCPyWTAfBY-m9sF4ikFkfS2Ckpqu\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-08T21:09:08+08:00\"}', '{\"appData\":{\"pageId\":\"login\",\"actionId\":\"passwordLogin\",\"actionData\":{\"userId\":\"admin01\",\"password\":\"123456\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\"},\"appId\":\"jianghujs_demo_socket_io\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\"},\"packageId\":\"1659964148273_9226515\",\"packageType\":\"httpRequest\"}', 'jhUpdate', 'admin01', 'admin01', '2022-08-08T21:09:08+08:00');
INSERT INTO `_record_history` VALUES (4219, '_user_session', 295, '{\"id\":295,\"userId\":\"admin01\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"online\",\"authToken\":\"HFtIOpiITCPyWTAfBY-m9sF4ikFkfS2Ckpqu\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-08T21:09:09+08:00\"}', '{\"packageId\":\"1659964148898_9649403\",\"packageType\":\"socketRequest\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"status\":null,\"timestamp\":\"2022-08-08T13:09:08.898Z\",\"appData\":{\"appId\":\"jianghujs_demo_socket_io\",\"pageId\":\"socket\",\"actionId\":\"connect\",\"actionData\":{\"socketId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome::admin01\"}}}', 'jhUpdate', 'admin01', 'admin01', '2022-08-08T21:09:09+08:00');
INSERT INTO `_record_history` VALUES (4220, '_user_session', 295, '{\"id\":295,\"userId\":\"admin01\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"online\",\"authToken\":\"HFtIOpiITCPyWTAfBY-m9sF4ikFkfS2Ckpqu\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-08T21:20:31+08:00\"}', '{\"packageId\":\"1659964148898_9649403\",\"packageType\":\"socketRequest\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"status\":null,\"timestamp\":\"2022-08-08T13:09:08.898Z\",\"appData\":{\"appId\":\"jianghujs_demo_socket_io\",\"pageId\":\"socket\",\"actionId\":\"connect\",\"actionData\":{\"socketId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome::admin01\"}}}', 'jhUpdate', 'admin01', 'admin01', '2022-08-08T21:20:31+08:00');
INSERT INTO `_record_history` VALUES (4221, '_user_session', 295, '{\"id\":295,\"userId\":\"admin01\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"online\",\"authToken\":\"HFtIOpiITCPyWTAfBY-m9sF4ikFkfS2Ckpqu\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-08T21:21:54+08:00\"}', '{\"packageId\":\"1659964913384_6030545\",\"packageType\":\"socketRequest\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"status\":null,\"timestamp\":\"2022-08-08T13:21:53.385Z\",\"appData\":{\"appId\":\"jianghujs_demo_socket_io\",\"pageId\":\"socket\",\"actionId\":\"connect\",\"actionData\":{\"socketId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome::admin01\"}}}', 'jhUpdate', 'admin01', 'admin01', '2022-08-08T21:21:54+08:00');
INSERT INTO `_record_history` VALUES (4222, '_user_session', 295, '{\"id\":295,\"userId\":\"admin01\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"online\",\"authToken\":\"HFtIOpiITCPyWTAfBY-m9sF4ikFkfS2Ckpqu\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-08T21:45:06+08:00\"}', '{\"packageId\":\"1659966306032_7918563\",\"packageType\":\"socketRequest\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"status\":null,\"timestamp\":\"2022-08-08T13:45:06.032Z\",\"appData\":{\"appId\":\"jianghujs_demo_socket_io\",\"pageId\":\"socket\",\"actionId\":\"connect\",\"actionData\":{\"socketId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome::admin01\"}}}', 'jhUpdate', 'admin01', 'admin01', '2022-08-08T21:45:06+08:00');
INSERT INTO `_record_history` VALUES (4223, '_user_session', 295, '{\"id\":295,\"userId\":\"admin01\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"online\",\"authToken\":\"HFtIOpiITCPyWTAfBY-m9sF4ikFkfS2Ckpqu\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-08T21:52:55+08:00\"}', '{\"packageId\":\"1659966775163_5415077\",\"packageType\":\"socketRequest\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"status\":null,\"timestamp\":\"2022-08-08T13:52:55.163Z\",\"appData\":{\"appId\":\"jianghujs_demo_socket_io\",\"pageId\":\"socket\",\"actionId\":\"connect\",\"actionData\":{\"socketId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome::admin01\"}}}', 'jhUpdate', 'admin01', 'admin01', '2022-08-08T21:52:55+08:00');
INSERT INTO `_record_history` VALUES (4224, '_user_session', 295, '{\"id\":295,\"userId\":\"admin01\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"online\",\"authToken\":\"HFtIOpiITCPyWTAfBY-m9sF4ikFkfS2Ckpqu\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-08T22:24:50+08:00\"}', '{\"packageId\":\"1659968690179_4629181\",\"packageType\":\"socketRequest\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"status\":null,\"timestamp\":\"2022-08-08T14:24:50.179Z\",\"appData\":{\"appId\":\"jianghujs_demo_socket_io\",\"pageId\":\"socket\",\"actionId\":\"connect\",\"actionData\":{\"socketId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome::admin01\"}}}', 'jhUpdate', 'admin01', 'admin01', '2022-08-08T22:24:50+08:00');
INSERT INTO `_record_history` VALUES (4225, '_user_session', 295, '{\"id\":295,\"userId\":\"admin01\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"online\",\"authToken\":\"HFtIOpiITCPyWTAfBY-m9sF4ikFkfS2Ckpqu\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-08T22:25:45+08:00\"}', '{\"packageId\":\"1659968690179_4629181\",\"packageType\":\"socketRequest\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"status\":null,\"timestamp\":\"2022-08-08T14:24:50.179Z\",\"appData\":{\"appId\":\"jianghujs_demo_socket_io\",\"pageId\":\"socket\",\"actionId\":\"connect\",\"actionData\":{\"socketId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome::admin01\"}}}', 'jhUpdate', 'admin01', 'admin01', '2022-08-08T22:25:45+08:00');
INSERT INTO `_record_history` VALUES (4226, '_user_session', 295, '{\"id\":295,\"userId\":\"admin01\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"online\",\"authToken\":\"HFtIOpiITCPyWTAfBY-m9sF4ikFkfS2Ckpqu\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-08T22:25:46+08:00\"}', '{\"packageId\":\"1659968746123_7681243\",\"packageType\":\"socketRequest\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"status\":null,\"timestamp\":\"2022-08-08T14:25:46.124Z\",\"appData\":{\"appId\":\"jianghujs_demo_socket_io\",\"pageId\":\"socket\",\"actionId\":\"connect\",\"actionData\":{\"socketId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome::admin01\"}}}', 'jhUpdate', 'admin01', 'admin01', '2022-08-08T22:25:46+08:00');
INSERT INTO `_record_history` VALUES (4227, '_user_session', 295, '{\"id\":295,\"userId\":\"admin01\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"online\",\"authToken\":\"HFtIOpiITCPyWTAfBY-m9sF4ikFkfS2Ckpqu\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-08T22:52:30+08:00\"}', '{\"packageId\":\"1659970350236_1325781\",\"packageType\":\"socketRequest\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"status\":null,\"timestamp\":\"2022-08-08T14:52:30.236Z\",\"appData\":{\"appId\":\"jianghujs_demo_socket_io\",\"pageId\":\"socket\",\"actionId\":\"connect\",\"actionData\":{\"socketId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome::admin01\"}}}', 'jhUpdate', 'admin01', 'admin01', '2022-08-08T22:52:30+08:00');
INSERT INTO `_record_history` VALUES (4228, '_user_session', 295, '{\"id\":295,\"userId\":\"admin01\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"online\",\"authToken\":\"\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-09T21:39:45+08:00\"}', '{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"logout\",\"actionData\":{\"needSetCookies\":true},\"appId\":\"jianghujs_demo_socket_io\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\"},\"packageId\":\"1660052385336_3482951\",\"packageType\":\"httpRequest\"}', 'jhUpdate', 'admin01', 'admin01', '2022-08-09T21:39:45+08:00');
INSERT INTO `_record_history` VALUES (4229, '_user_session', 295, '{\"id\":295,\"userId\":\"admin01\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"online\",\"authToken\":\"2xYpehvxqLCkMe0lwM0jJ7iudfIKN2uBQU-u\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-09T21:51:18+08:00\"}', '{\"appData\":{\"pageId\":\"login\",\"actionId\":\"passwordLogin\",\"actionData\":{\"userId\":\"admin01\",\"password\":\"123456\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\"},\"appId\":\"jianghujs_demo_socket_io\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\"},\"packageId\":\"1660053077866_2249594\",\"packageType\":\"httpRequest\"}', 'jhUpdate', 'admin01', 'admin01', '2022-08-09T21:51:18+08:00');
INSERT INTO `_record_history` VALUES (4230, '_file', 124, '{\"id\":124,\"fileId\":\"1660054309353_163847\",\"fileDirectory\":\"admin01/2022/8/9/\",\"filename\":\"recordFile_904032.mp3\",\"filenameStorage\":\"1660054309353_163847_recordFile_904032.mp3\",\"downloadPath\":\"/admin01/2022/8/9//1660054309353_163847_recordFile_904032.mp3\",\"fileType\":null,\"fileDesc\":null,\"binarySize\":\"184.04KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-09T22:11:49+08:00\"}', '{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"uploadFileDone\",\"actionData\":{\"hash\":\"b6a98cdb59ce5b7565d0a688d655f75e\",\"total\":1,\"chunkSize\":3145728,\"filename\":\"recordFile_904032.mp3\",\"fileDirectory\":\"admin01/2022/8/9/\"},\"appId\":\"jianghujs_demo_socket_io\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\"},\"packageId\":\"1660054309293_7820381\",\"packageType\":\"httpRequest\"}', 'jhInsert', 'admin01', 'admin01', '2022-08-09T22:11:49+08:00');
INSERT INTO `_record_history` VALUES (4231, '_file', 125, '{\"id\":125,\"fileId\":\"1660054317484_616526\",\"fileDirectory\":\"admin01/2022/8/9/\",\"filename\":\"recordFile_851044.mp3\",\"filenameStorage\":\"1660054317484_616526_recordFile_851044.mp3\",\"downloadPath\":\"/admin01/2022/8/9//1660054317484_616526_recordFile_851044.mp3\",\"fileType\":null,\"fileDesc\":null,\"binarySize\":\"320.04KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-09T22:11:57+08:00\"}', '{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"uploadFileDone\",\"actionData\":{\"hash\":\"0e22fc3801ad350f1b572487491db9f6\",\"total\":1,\"chunkSize\":3145728,\"filename\":\"recordFile_851044.mp3\",\"fileDirectory\":\"admin01/2022/8/9/\"},\"appId\":\"jianghujs_demo_socket_io\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\"},\"packageId\":\"1660054317447_7933852\",\"packageType\":\"httpRequest\"}', 'jhInsert', 'admin01', 'admin01', '2022-08-09T22:11:57+08:00');
INSERT INTO `_record_history` VALUES (4232, '_file', 126, '{\"id\":126,\"fileId\":\"1660054360879_998646\",\"fileDirectory\":\"admin01/2022/8/9/\",\"filename\":\"recordFile_202319.mp3\",\"filenameStorage\":\"1660054360879_998646_recordFile_202319.mp3\",\"downloadPath\":\"/admin01/2022/8/9//1660054360879_998646_recordFile_202319.mp3\",\"fileType\":null,\"fileDesc\":null,\"binarySize\":\"288.04KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-09T22:12:40+08:00\"}', '{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"uploadFileDone\",\"actionData\":{\"hash\":\"b1e5c3b78834bad6649f486417fb7680\",\"total\":1,\"chunkSize\":3145728,\"filename\":\"recordFile_202319.mp3\",\"fileDirectory\":\"admin01/2022/8/9/\"},\"appId\":\"jianghujs_demo_socket_io\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\"},\"packageId\":\"1660054360816_3551096\",\"packageType\":\"httpRequest\"}', 'jhInsert', 'admin01', 'admin01', '2022-08-09T22:12:40+08:00');
INSERT INTO `_record_history` VALUES (4233, '_file', 127, '{\"id\":127,\"fileId\":\"1660054473637_103978\",\"fileDirectory\":\"admin01/2022/8/9/\",\"filename\":\"WechatIMG5.jpeg\",\"filenameStorage\":\"1660054473637_103978_WechatIMG5.jpeg\",\"downloadPath\":\"/admin01/2022/8/9//1660054473637_103978_WechatIMG5.jpeg\",\"fileType\":null,\"fileDesc\":null,\"binarySize\":\"279.83KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-09T22:14:33+08:00\"}', '{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"uploadFileDone\",\"actionData\":{\"hash\":\"1ad6768c7fccd737351cb41f9b08cd53\",\"total\":1,\"chunkSize\":3145728,\"filename\":\"WechatIMG5.jpeg\",\"fileDirectory\":\"admin01/2022/8/9/\"},\"appId\":\"jianghujs_demo_socket_io\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\"},\"packageId\":\"1660054473599_7196959\",\"packageType\":\"httpRequest\"}', 'jhInsert', 'admin01', 'admin01', '2022-08-09T22:14:33+08:00');
INSERT INTO `_record_history` VALUES (4234, '_file', 128, '{\"id\":128,\"fileId\":\"1660055539825_424581\",\"fileDirectory\":\"admin01/2022/8/9/\",\"filename\":\"xiaochengxu.zip\",\"filenameStorage\":\"1660055539825_424581_xiaochengxu.zip\",\"downloadPath\":\"/admin01/2022/8/9//1660055539825_424581_xiaochengxu.zip\",\"fileType\":null,\"fileDesc\":null,\"binarySize\":\"314.93KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-09T22:32:20+08:00\"}', '{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"uploadFileDone\",\"actionData\":{\"hash\":\"710ddffacfd2bb47456bdb0a526034fc\",\"total\":1,\"chunkSize\":3145728,\"filename\":\"xiaochengxu.zip\",\"fileDirectory\":\"admin01/2022/8/9/\"},\"appId\":\"jianghujs_demo_socket_io\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\"},\"packageId\":\"1660055539641_4163324\",\"packageType\":\"httpRequest\"}', 'jhInsert', 'admin01', 'admin01', '2022-08-09T22:32:20+08:00');
INSERT INTO `_record_history` VALUES (4235, '_user_session', 295, '{\"id\":295,\"userId\":\"admin01\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"online\",\"authToken\":\"\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-09T22:42:34+08:00\"}', '{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"logout\",\"actionData\":{\"needSetCookies\":true},\"appId\":\"jianghujs_demo_socket_io\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\"},\"packageId\":\"1660056154386_9958590\",\"packageType\":\"httpRequest\"}', 'jhUpdate', 'admin01', 'admin01', '2022-08-09T22:42:34+08:00');
INSERT INTO `_record_history` VALUES (4236, '_user_session', 295, '{\"id\":295,\"userId\":\"admin01\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"online\",\"authToken\":\"euJzkbLE09aEQ9TjxLwC9rSV1JGPJ3WFrzzL\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-09T22:42:37+08:00\"}', '{\"appData\":{\"pageId\":\"login\",\"actionId\":\"passwordLogin\",\"actionData\":{\"userId\":\"admin01\",\"password\":\"123456\",\"deviceId\":\"127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome\",\"deviceType\":\"web\"},\"appId\":\"jianghujs_demo_socket_io\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\"},\"packageId\":\"1660056157553_9032950\",\"packageType\":\"httpRequest\"}', 'jhUpdate', 'admin01', 'admin01', '2022-08-09T22:42:37+08:00');
INSERT INTO `_record_history` VALUES (4237, '_file', 129, '{\"id\":129,\"fileId\":\"1660057003983_131840\",\"fileDirectory\":\"admin01/2022/8/9/\",\"filename\":\"WechatIMG5.jpeg\",\"filenameStorage\":\"1660057003983_131840_WechatIMG5.jpeg\",\"downloadPath\":\"/admin01/2022/8/9//1660057003983_131840_WechatIMG5.jpeg\",\"fileType\":null,\"fileDesc\":null,\"binarySize\":\"279.83KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin01\",\"operationByUser\":\"admin01\",\"operationAt\":\"2022-08-09T22:56:44+08:00\"}', '{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"uploadFileDone\",\"actionData\":{\"hash\":\"1ad6768c7fccd737351cb41f9b08cd53\",\"total\":1,\"chunkSize\":3145728,\"filename\":\"WechatIMG5.jpeg\",\"fileDirectory\":\"admin01/2022/8/9/\"},\"appId\":\"jianghujs_demo_socket_io\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\"},\"packageId\":\"1660057003913_2742215\",\"packageType\":\"httpRequest\"}', 'jhInsert', 'admin01', 'admin01', '2022-08-09T22:56:44+08:00');
COMMIT;

-- ----------------------------
-- Table structure for _resource
-- ----------------------------
DROP TABLE IF EXISTS `_resource`;
CREATE TABLE `_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accessControlTable` varchar(255) DEFAULT NULL COMMENT '数据规则控制表',
  `resourceHook` text COMMENT '[ "before": {"service": "xx", "serviceFunction": "xxx"}, "after": [] }',
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `actionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `resourceType` varchar(255) DEFAULT NULL COMMENT 'resource 类型; E.g: auth service sql',
  `appDataSchema` text COMMENT 'appData 参数校验',
  `resourceData` text COMMENT 'resource 数据; { "service": "auth", "serviceFunction": "passwordLogin" } or  { "table": "${tableName}", "action": "select" }',
  `requestDemo` text COMMENT '请求Demo',
  `responseDemo` text COMMENT '响应Demo',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=utf8mb4 COMMENT='请求资源表; 软删除未启用; resourceId=`${appId}.${pageId}.${actionId}`';

-- ----------------------------
-- Records of _resource
-- ----------------------------
BEGIN;
INSERT INTO `_resource` VALUES (101, NULL, NULL, 'allPage', 'getChunkInfo', '✅ 文件分片下载-获取分片信息', 'service', '{}', '{ \"service\": \"file\", \"serviceFunction\": \"getChunkInfo\" }', '', '', 'update', NULL, NULL, '2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` VALUES (102, NULL, NULL, 'allPage', 'uploadFileDone', '✅ 文件分片上传-所有分片上传完毕', 'service', '{}', '{ \"service\": \"file\", \"serviceFunction\": \"uploadFileDone\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` VALUES (105, NULL, NULL, 'allPage', 'httpUploadByStream', '✅ 文件分片上传-http文件流', 'service', '{}', '{ \"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByStream\" }', '', '', 'update', NULL, NULL, '2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` VALUES (106, NULL, NULL, 'allPage', 'httpUploadByBase64', '✅ 文件分片上传-http base64', 'service', '{}', '{ \"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByBase64\" }', '', '', 'update', NULL, NULL, '2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` VALUES (107, NULL, NULL, 'allPage', 'socketUploadByStream', '✅ 文件分片上传-socket 文件流', 'service', '{}', '{ \"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByBuffer\" }', '', '', 'update', NULL, NULL, '2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` VALUES (108, NULL, NULL, 'allPage', 'socketUploadByBase64', '✅ 文件分片上传-socket base64', 'service', '{}', '{ \"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByBase64\" }', '', '', 'update', NULL, NULL, '2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` VALUES (112, NULL, NULL, 'allPage', 'httpDownloadByBase64', '✅ 文件分片下载-http base64', 'service', '{}', '{ \"service\": \"file\", \"serviceFunction\": \"downloadFileChunkByBase64\" }', '', '', 'update', NULL, NULL, '2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` VALUES (113, NULL, NULL, 'allPage', 'socketDownloadByStream', '✅ 文件分片下载-socket文件流', 'service', '{}', '{ \"service\": \"file\", \"serviceFunction\": \"downloadFileChunkByBuffer\" }', '', '', 'update', NULL, NULL, '2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` VALUES (114, NULL, NULL, 'allPage', 'socketDownloadByBase64', '✅ 文件分片下载-socket base64', 'service', '{}', '{ \"service\": \"file\", \"serviceFunction\": \"downloadFileChunkByBase64\" }', '', '', 'update', NULL, NULL, '2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` VALUES (299, NULL, NULL, 'login', 'passwordLogin', '✅ 密码登录', 'service', '{}', '{ \"service\": \"user\", \"serviceFunction\": \"passwordLogin\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:41:08+08:00');
INSERT INTO `_resource` VALUES (301, NULL, NULL, 'allPage', 'getConstantList', '✅ 获取全局常量', 'sql', '{}', '{ \"table\": \"_constant\", \"operation\": \"select\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:42:43+08:00');
INSERT INTO `_resource` VALUES (302, NULL, NULL, 'allPage', 'userInfo', '✅ 用户信息', 'service', '{}', '{ \"service\": \"user\", \"serviceFunction\": \"userInfo\" }', '', '', 'update', NULL, NULL, '2022-03-05T21:44:23+08:00');
INSERT INTO `_resource` VALUES (303, NULL, NULL, 'allPage', 'uploadByBase64', '✅ 上传base64的文件', 'service', '{}', '{ \"service\": \"file\", \"serviceFunction\": \"uploadByBase64\" }', '', '', 'update', NULL, NULL, '2022-03-10T22:34:20+08:00');
INSERT INTO `_resource` VALUES (304, NULL, NULL, 'allPage', 'uploadByStream', '✅ 上传流文件', 'service', '{}', '{ \"service\": \"file\", \"serviceFunction\": \"uploadByStream\" }', '', '', 'update', NULL, NULL, '2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` VALUES (305, NULL, NULL, 'allPage', 'logout', '✅ 退出登录', 'service', '{}', '{ \"service\": \"user\", \"serviceFunction\": \"logout\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:41:03+08:00');
INSERT INTO `_resource` VALUES (332, NULL, NULL, 'user', 'setUserDetail', '✅ 设置用户信息', 'service', '{}', '{ \"service\": \"duoxingUser\", \"serviceFunction\": \"setUserDetail\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` VALUES (351, NULL, NULL, 'chat', 'getUserInfo', '✅ 查询用户信息', 'sql', '{}', '{ \"table\": \"view01_user\", \"operation\": \"select\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:42:14+08:00');
INSERT INTO `_resource` VALUES (352, NULL, NULL, 'chat', 'getUserFriend', '✅ 查询好友列表', 'service', '{}', '{ \"service\": \"duoxingFriend\", \"serviceFunction\": \"getUserFriend\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:42:13+08:00');
INSERT INTO `_resource` VALUES (353, NULL, NULL, 'chat', 'getUserFriendRequest', '✅ 查询好友请求列表', 'service', '{}', '{ \"service\": \"duoxingFriend\", \"serviceFunction\": \"getUserFriendRequest\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:42:13+08:00');
INSERT INTO `_resource` VALUES (357, NULL, NULL, 'chat', 'delUserFriend', '✅ 删除好友', 'service', '{}', '{ \"service\": \"duoxingFriend\", \"serviceFunction\": \"delUserFriend\" }', '', '', 'update', NULL, NULL, '2022-03-10T22:30:54+08:00');
INSERT INTO `_resource` VALUES (358, NULL, '{ \"before\": [{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"groupOpeartionBeforeHook\" }], \"after\": [] }', 'chat', 'getGroupInfo', '✅ 获取群信息（群成员列表）', 'service', '{}', '{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"getGroupInfo\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:41:25+08:00');
INSERT INTO `_resource` VALUES (367, NULL, NULL, 'chat', 'getChatSession', '✅ 会话列表', 'service', '{}', '{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"getChatSession\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:42:13+08:00');
INSERT INTO `_resource` VALUES (368, NULL, NULL, 'chat', 'getMessageHistory', '✅ 消息列表[往历史找]', 'service', '{}', '{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"getMessageHistory\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:42:15+08:00');
INSERT INTO `_resource` VALUES (369, NULL, NULL, 'chat', 'getMessageHistoryByMaxId', '✅ 消息列表[往最新找]', 'service', '{}', '{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"getMessageHistory\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` VALUES (370, NULL, NULL, 'chat', 'revokeMessage', '✅ 撤回消息', 'service', '{}', '{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"revokeMessage\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:07:46+08:00');
INSERT INTO `_resource` VALUES (371, NULL, NULL, 'chat', 'delMessageOffline', '✅ 删除离线消息', 'service', '{}', '{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"delMessageOffline\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:40:51+08:00');
INSERT INTO `_resource` VALUES (374, NULL, NULL, 'chat', 'toggleChatSession', '✅ 置顶会话', 'service', '{}', '{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"toggleChatSession\" }', '', '', 'update', NULL, NULL, '2022-03-11T21:57:48+08:00');
INSERT INTO `_resource` VALUES (375, NULL, NULL, 'chat', 'deleteChatSession', '✅ 删除会话', 'service', '{}', '{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"deleteChatSession\" }', '', '', 'update', NULL, NULL, '2022-03-10T20:57:28+08:00');
INSERT INTO `_resource` VALUES (501, NULL, '', 'socket', 'connect', '✅ socket 连接', 'service', '{}', '{ \"service\": \"duoxingSocket\", \"serviceFunction\": \"connect\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:35:05+08:00');
INSERT INTO `_resource` VALUES (502, NULL, NULL, 'socket', 'disconnect', '✅ socket 关闭连接', 'service', '{}', '{ \"service\": \"duoxingSocket\", \"serviceFunction\": \"disconnect\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` VALUES (503, NULL, NULL, 'socket', 'userSendMessageToUser', '✅ socket 发送一对一聊天信息', 'service', '{}', '{ \"service\": \"duoxingSocket\", \"serviceFunction\": \"userSendMessageToUser\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:08:02+08:00');
INSERT INTO `_resource` VALUES (504, NULL, NULL, 'socket', 'userSendMessageToGroup', '✅ socket 发送群聊天信息', 'service', '{}', '{ \"service\": \"duoxingSocket\", \"serviceFunction\": \"userSendMessageToGroup\" }', '', '', 'update', NULL, NULL, '2022-03-12T20:28:15+08:00');
COMMIT;

-- ----------------------------
-- Table structure for _resource_request_log
-- ----------------------------
DROP TABLE IF EXISTS `_resource_request_log`;
CREATE TABLE `_resource_request_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` varchar(255) DEFAULT NULL COMMENT 'resource id;',
  `packageId` varchar(255) DEFAULT NULL COMMENT 'resource package id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip;',
  `userAgent` text COMMENT '设备信息',
  `userId` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `userIpRegion` varchar(255) DEFAULT NULL COMMENT '用户Ip区域',
  `executeSql` varchar(255) DEFAULT NULL COMMENT '执行的sql',
  `requestBody` mediumtext COMMENT '请求body',
  `responseBody` mediumtext COMMENT '响应body',
  `responseStatus` varchar(255) DEFAULT NULL COMMENT '执行的结果;  success, fail',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `resourceId_index` (`resourceId`),
  KEY `packageId_index` (`packageId`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COMMENT='文件表; 软删除未启用;';

-- ----------------------------
-- Records of _resource_request_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _role
-- ----------------------------
DROP TABLE IF EXISTS `_role`;
CREATE TABLE `_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(255) DEFAULT NULL COMMENT 'roleId',
  `roleName` varchar(255) DEFAULT NULL COMMENT 'role name',
  `roleDesc` varchar(255) DEFAULT NULL COMMENT 'role desc',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='角色表; 软删除未启用;';

-- ----------------------------
-- Records of _role
-- ----------------------------
BEGIN;
INSERT INTO `_role` VALUES (6, 'groupUser', '群员', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_role` VALUES (7, 'groupAdmin', '群管理员', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_role` VALUES (8, 'groupOwner', '群主', NULL, 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _ui
-- ----------------------------
DROP TABLE IF EXISTS `_ui`;
CREATE TABLE `_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'page id; E.g: index',
  `uiActionType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ui 动作类型，如：fetchData, postData, changeUi',
  `uiActionId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `uiActionHook` text COLLATE utf8mb4_bin COMMENT '[{"service": "xx", "serviceFunction": "xxx"}]',
  `uiActionConfig` text COLLATE utf8mb4_bin COMMENT 'ui 动作数据',
  `appDataSchema` text COLLATE utf8mb4_bin COMMENT 'ui 校验数据',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='ui 施工方案';

-- ----------------------------
-- Records of _ui
-- ----------------------------
BEGIN;
INSERT INTO `_ui` VALUES (1, 'allPage', 'data', 'getConstantList', '✅获取常量', NULL, '{\"main\": [{\"function\": \"getConstantList\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (100, 'index', 'ui', 'disableSystemEvent', '✅禁止系统菜单和文字选中\r\n', NULL, '{\"main\": [{\"function\": \"disableSystemEvent\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (101, 'index', 'ui', 'setSyncStatusToSyncing', '✅同步中', NULL, '{\"main\": [{\"function\": \"setSyncStatusToSyncing\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (102, 'index', 'ui', 'initDefaultVariable', '✅初始化状态变量\r\n', NULL, '{\"main\": [{\"function\": \"initDefaultVariable\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (103, 'index', 'ui', 'initWebSocket', '✅初始化socket\r\n', NULL, '{\"main\": [{\"function\": \"initWebSocket\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (104, 'index', 'ui', 'getUserInfo', '✅获取登录用户信息', NULL, '{\"main\": [{\"function\": \"getUserInfo\", \"vueComponent\": \"root\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (105, 'index', 'ui', 'windowBack', '✅手动后退', NULL, '{\"main\": [{\"function\": \"windowBack\", \"vueComponent\": \"root\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (106, 'index', 'ui', 'logout', '✅登出', NULL, '{\"main\": [{\"function\": \"logout\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (108, 'index', 'ui', 'setSyncStatusToSuccess', '✅同步成功', NULL, '{\"main\": [{\"function\": \"setSyncStatusToSuccess\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (119, 'index', 'ui', 'onSocketReConnect', '✅断线重连', NULL, '{\"main\": [{\"function\": \"onSocketReConnect\", \"vueComponent\": \"root\"}, {\"function\": \"onSocketReConnect\", \"vueComponent\": \"chatSession\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (120, 'index', 'ui', 'pushState', '✅更改路径state', NULL, '{\"main\": [{\"function\": \"pushState\", \"vueComponent\": \"root\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (121, 'index', 'data', 'getGroupInfo', '✅获取群信息', NULL, '{\"main\": [{\"function\": \"getGroupInfo\", \"vueComponent\": \"rightPanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (124, 'index', 'ui', 'reFilterList', '✅过滤和排序列表', NULL, '{\"main\": [{\"function\": \"reFilterList\", \"vueComponent\": \"root\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (127, 'index', 'data', 'sendMsg', '✅socket 发送消息', NULL, '{\"main\": [{\"function\": \"sendMsg\", \"vueComponent\": \"middlePanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (128, 'index', 'ui', 'onGroupMessage', '✅接收群消息后回调', NULL, '{\"main\": [{\"function\": \"onGroupMessage\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (129, 'index', 'ui', 'onToggleChatSession', '✅收到聊天消息回调', NULL, '{\"main\": [{\"function\": \"onToggleChatSession\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (130, 'index', 'ui', 'onDelMessageOffline', '✅收到聊天消息删除的消息回调', NULL, '{\"main\": [{\"function\": \"onDelMessageOffline\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (131, 'index', 'ui', 'onDeleteChatSession', '✅收到聊天删除的消息回调', NULL, '{\"main\": [{\"function\": \"onDeleteChatSession\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (132, 'index', 'ui', 'onUserMessage', '✅接收到用户消息后回调', NULL, '{\"main\": [{\"function\": \"onUserMessage\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (133, 'index', 'ui', 'onUserNotice', '✅接收到用户通知后回调', NULL, '{\"main\": [{\"function\": \"onUserNotice\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (134, 'index', 'ui', 'onGroupNotice', '✅接收到群组通知后回调', NULL, '{\"main\": [{\"function\": \"onGroupNotice\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (135, 'index', 'ui', 'showAccount', '✅打开用户信息弹框', NULL, '{\"main\": [{\"function\": \"showAccount\", \"vueComponent\": \"root\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (137, 'index', 'data', 'getChatSessionList', '✅获取聊天列表', NULL, '{\"main\": [{\"function\": \"getChatSessionList\", \"vueComponent\": \"leftPanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (139, 'index', 'ui', 'windowBack', '✅返回上一页', NULL, '{\"main\": [{\"function\": \"windowBack\", \"vueComponent\": \"root\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (143, 'index', 'ui', 'onQuoteMsg', '✅引用消息', NULL, '{\"main\": [{\"function\": \"onQuoteMsg\", \"vueComponent\": \"middlePanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (145, 'index', 'data', 'delMessageOffline', '✅消息已读', NULL, '{\"main\": [{\"function\": \"delMessageOffline\", \"vueComponent\": \"middlePanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (146, 'index', 'data', 'sendRevokeMsg', '✅发送撤回消息', NULL, '{\"main\": [{\"function\": \"sendRevokeMsg\", \"vueComponent\": \"middlePanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (147, 'index', 'data', 'reSendMsg', '✅重新发送消息', NULL, '{\"main\": [{\"function\": \"reSendMsg\", \"vueComponent\": \"middlePanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (148, 'index', 'ui', 'moreSel', '✅打开多选', NULL, '{\"main\": [{\"function\": \"moreSel\", \"vueComponent\": \"middlePanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (149, 'index', 'ui', 'preventDefault', '✅现代浏览器阻止默认事件', NULL, '{\"main\": [{\"function\": \"preventDefault\", \"vueComponent\": \"root\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (151, 'index', 'ui', 'scrollToBottom', '✅消息栏划到最新消息处', NULL, '{\"main\": [{\"function\": \"scrollToBottom\", \"vueComponent\": \"chatSession\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (155, 'index', 'data', 'fileInputTap', '✅选择文件并发送', NULL, '{\"main\": [{\"function\": \"fileInputTap\", \"vueComponent\": \"chatInput\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (156, 'index', 'data', 'startRecordMethod', '✅PC开始录音', NULL, '{\"main\": [{\"function\": \"startRecordMethod\", \"vueComponent\": \"chatInput\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (160, 'index', 'data', 'sendAudioMsg', '✅发送语音消息', NULL, '{\"main\": [{\"function\": \"sendAudioMsg\", \"vueComponent\": \"chatInput\"}]}', NULL, 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _user
-- ----------------------------
DROP TABLE IF EXISTS `_user`;
CREATE TABLE `_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `userAvatar` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `contactNumber` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `gender` varchar(255) DEFAULT 'male' COMMENT '性别; male, female',
  `birthday` varchar(255) DEFAULT NULL COMMENT '生日E.g: 2021-05-28T10:24:54+08:00 ',
  `signature` varchar(255) DEFAULT NULL COMMENT '签名',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `clearTextPassword` varchar(255) DEFAULT NULL COMMENT '初始明文密码',
  `password` varchar(255) DEFAULT NULL COMMENT 'password',
  `md5Salt` varchar(255) DEFAULT NULL COMMENT 'md5Salt',
  `userType` varchar(255) DEFAULT 'common' COMMENT '用户类型; common, xiaochengxu',
  `userStatus` varchar(255) DEFAULT 'active' COMMENT '用户类型; active, banned',
  `config` mediumtext COMMENT '置顶信息',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `userId_unique` (`userId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COMMENT='用户表; 软删除未启用;';

-- ----------------------------
-- Records of _user
-- ----------------------------
BEGIN;
INSERT INTO `_user` VALUES (1, 'admin01', 'admin01', '/userAvatar/1647177682138_271319_函数.png', '17177777001', 'male', NULL, 'FX', NULL, '123456', '9d868aad4af212de6a26e39efbdd86ee', '4ThJGJbAPe5m', 'common', 'active', NULL, 'jhUpdate', 'admin01', 'admin01', '2022-03-13T21:21:55+08:00');
INSERT INTO `_user` VALUES (140, 'W00001', '张三丰', '/userAvatar/default.jpg', NULL, 'male', NULL, NULL, NULL, '123456', '9d868aad4af212de6a26e39efbdd86ee', '4ThJGJbAPe5m', 'common', 'active', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_user` VALUES (141, 'W00002', '张无忌', '/userAvatar/default.jpg', NULL, 'male', NULL, NULL, NULL, '123456', '9d868aad4af212de6a26e39efbdd86ee', '4ThJGJbAPe5m', 'common', 'active', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_user` VALUES (142, 'G00001', '洪七公', '/userAvatar/1647159405350_605667_圣经.png', NULL, 'male', NULL, '-------dd', NULL, '123456', 'a3742afefe3dfccfca90d5ed0652464a', 'q1Ukk16Wh6lw', 'common', 'active', NULL, 'jhRestore', 'admin01', 'admin01', '2022-03-14T16:25:14+08:00');
INSERT INTO `_user` VALUES (143, 'G00002', '郭靖', '/userAvatar/default.jpg', NULL, 'male', NULL, NULL, NULL, '123456', '9d868aad4af212de6a26e39efbdd86ee', '4ThJGJbAPe5m', 'common', 'active', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_user` VALUES (144, 'H00001', '岳不群', '/userAvatar/default.jpg', NULL, 'male', '2022-03-03T00:00:00+08:00', NULL, NULL, '123456', 'ac96a1e461f0476a12cee572e9893093', 'yByNcDMxMm8W', 'common', 'active', NULL, 'update', 'admin01', 'admin01', '2022-03-03T23:05:53+08:00');
INSERT INTO `_user` VALUES (145, 'H00002', '令狐冲', '/userAvatar/default.jpg', NULL, 'male', NULL, NULL, NULL, '123456', 'a5cd3a36d1ef78c49694166123a67e41', 'ry3dW5EfkRsf', 'common', 'active', NULL, 'update', NULL, NULL, '2022-03-04T20:15:47+08:00');
INSERT INTO `_user` VALUES (146, 'G00003', '汪剑通', '/userAvatar/default.jpg', NULL, 'male', NULL, NULL, NULL, '123456', 'd5447df63bb9f717c960735e25ee2367', 'VHjtoRKtOF7r', 'common', 'active', NULL, 'jhUpdate', 'admin01', 'admin01', '2022-03-12T21:52:02+08:00');
COMMIT;

-- ----------------------------
-- Table structure for _user_group_role
-- ----------------------------
DROP TABLE IF EXISTS `_user_group_role`;
CREATE TABLE `_user_group_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户id',
  `groupId` varchar(255) NOT NULL COMMENT '群组Id',
  `roleId` varchar(255) DEFAULT NULL COMMENT '角色Id',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `groupId_index` (`groupId`),
  KEY `userId_index` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=663 DEFAULT CHARSET=utf8mb4 COMMENT='用户群组角色关联表; 软删除未启用;';

-- ----------------------------
-- Records of _user_group_role
-- ----------------------------
BEGIN;
INSERT INTO `_user_group_role` VALUES (569, 'W00001', 'wudang', 'groupOwner', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role` VALUES (570, 'W00002', 'wudang', 'groupUser', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role` VALUES (573, 'G00001', 'gaibang', 'groupOwner', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role` VALUES (574, 'G00002', 'gaibang', 'groupUser', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role` VALUES (577, 'H00001', 'huashan', 'groupOwner', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role` VALUES (578, 'H00002', 'huashan', 'groupUser', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role` VALUES (587, 'admin01', 'wudang', 'groupAdmin', 'update', NULL, NULL, '2022-03-10T22:33:58+08:00');
INSERT INTO `_user_group_role` VALUES (588, 'admin01', 'huashan', 'groupAdmin', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role` VALUES (590, 'H00001', 'gaibang', 'groupUser', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role` VALUES (591, 'W00001', 'gaibang', 'groupUser', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role` VALUES (615, 'admin01', 'jd-_eJWCsaD90qKXcgzlH', 'groupOwner', 'insert', NULL, NULL, '2022-03-05T17:17:46+08:00');
INSERT INTO `_user_group_role` VALUES (616, 'H00001', 'jd-_eJWCsaD90qKXcgzlH', 'groupUser', 'insert', NULL, NULL, '2022-03-05T17:17:46+08:00');
INSERT INTO `_user_group_role` VALUES (617, 'W00001', 'jd-_eJWCsaD90qKXcgzlH', 'groupUser', 'insert', NULL, NULL, '2022-03-05T17:17:46+08:00');
INSERT INTO `_user_group_role` VALUES (621, 'admin01', 'C1vDvXCgb4uAsoa1K8mPC', 'groupOwner', 'insert', NULL, NULL, '2022-03-09T22:51:01+08:00');
INSERT INTO `_user_group_role` VALUES (622, 'H00001', 'C1vDvXCgb4uAsoa1K8mPC', 'groupUser', 'insert', NULL, NULL, '2022-03-09T22:51:01+08:00');
INSERT INTO `_user_group_role` VALUES (624, 'W00001', 'C1vDvXCgb4uAsoa1K8mPC', 'groupUser', 'insert', NULL, NULL, '2022-03-12T19:56:31+08:00');
INSERT INTO `_user_group_role` VALUES (627, 'G00002', 'C1vDvXCgb4uAsoa1K8mPC', 'groupUser', 'insert', NULL, NULL, '2022-03-12T19:56:31+08:00');
INSERT INTO `_user_group_role` VALUES (629, 'G00002', 'JcCVYjEqySIdMZxcy8O11', 'groupOwner', 'jhUpdate', 'admin01', 'admin01', '2022-03-12T22:44:36+08:00');
INSERT INTO `_user_group_role` VALUES (630, 'G00001', 'JcCVYjEqySIdMZxcy8O11', 'groupUser', 'jhInsert', 'admin01', 'admin01', '2022-03-12T22:38:16+08:00');
INSERT INTO `_user_group_role` VALUES (631, 'H00002', 'JcCVYjEqySIdMZxcy8O11', 'groupUser', 'jhInsert', 'admin01', 'admin01', '2022-03-12T22:38:16+08:00');
INSERT INTO `_user_group_role` VALUES (633, 'G00002', '9U_ww9I2TtgL4Fsi4whCz', 'groupUser', 'jhInsert', 'admin01', 'admin01', '2022-03-12T22:38:19+08:00');
INSERT INTO `_user_group_role` VALUES (634, 'G00001', '9U_ww9I2TtgL4Fsi4whCz', 'groupOwner', 'jhUpdate', 'admin01', 'admin01', '2022-03-12T22:41:47+08:00');
INSERT INTO `_user_group_role` VALUES (636, 'admin01', 'beS8LsS2pMfHic-hNuGrD', 'groupOwner', 'jhInsert', 'admin01', 'admin01', '2022-03-12T22:46:32+08:00');
INSERT INTO `_user_group_role` VALUES (637, 'G00002', 'beS8LsS2pMfHic-hNuGrD', 'groupUser', 'jhInsert', 'admin01', 'admin01', '2022-03-12T22:46:32+08:00');
INSERT INTO `_user_group_role` VALUES (638, 'G00001', 'beS8LsS2pMfHic-hNuGrD', 'groupUser', 'jhInsert', 'admin01', 'admin01', '2022-03-12T22:46:32+08:00');
INSERT INTO `_user_group_role` VALUES (639, 'W00001', 'Iy1J3vWCnnrVaZhbeCSn_', 'groupOwner', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:37:05+08:00');
INSERT INTO `_user_group_role` VALUES (640, 'G00001', 'Iy1J3vWCnnrVaZhbeCSn_', 'groupUser', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:37:05+08:00');
INSERT INTO `_user_group_role` VALUES (642, 'W00001', 'gBK5SDgE0ebEMWAgF2n9Y', 'groupOwner', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:43:35+08:00');
INSERT INTO `_user_group_role` VALUES (644, 'G00001', 'gBK5SDgE0ebEMWAgF2n9Y', 'groupUser', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:43:35+08:00');
INSERT INTO `_user_group_role` VALUES (645, 'W00001', 'Q07o3miNRKsBXrbCFFpaV', 'groupOwner', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:46:04+08:00');
INSERT INTO `_user_group_role` VALUES (647, 'G00001', 'Q07o3miNRKsBXrbCFFpaV', 'groupUser', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:46:04+08:00');
INSERT INTO `_user_group_role` VALUES (648, 'W00001', 'BJbrcnzn-MwG9KJ6taPZg', 'groupOwner', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:53:53+08:00');
INSERT INTO `_user_group_role` VALUES (650, 'G00001', 'BJbrcnzn-MwG9KJ6taPZg', 'groupUser', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:53:53+08:00');
INSERT INTO `_user_group_role` VALUES (651, 'W00001', 'NVVv8YlhskIX0QHimHMap', 'groupOwner', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:54:55+08:00');
INSERT INTO `_user_group_role` VALUES (653, 'G00001', 'NVVv8YlhskIX0QHimHMap', 'groupUser', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:54:55+08:00');
INSERT INTO `_user_group_role` VALUES (654, 'W00001', 'bhF6JQXgXUqwlkC1Pdl8J', 'groupOwner', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:58:09+08:00');
INSERT INTO `_user_group_role` VALUES (656, 'G00001', 'bhF6JQXgXUqwlkC1Pdl8J', 'groupUser', 'jhInsert', 'W00001', '张三丰', '2022-03-13T21:58:09+08:00');
INSERT INTO `_user_group_role` VALUES (657, 'W00001', 'FsTa3bUxZId4MAdowDbxw', 'groupOwner', 'jhInsert', 'W00001', '张三丰', '2022-03-14T11:20:37+08:00');
INSERT INTO `_user_group_role` VALUES (658, 'H00002', 'FsTa3bUxZId4MAdowDbxw', 'groupUser', 'jhInsert', 'W00001', '张三丰', '2022-03-14T11:20:37+08:00');
INSERT INTO `_user_group_role` VALUES (660, 'W00001', '8CdYgl90D-Zz0OC6eA_Dk', 'groupOwner', 'jhInsert', 'W00001', '张三丰', '2022-03-14T20:44:11+08:00');
INSERT INTO `_user_group_role` VALUES (661, 'admin01', '8CdYgl90D-Zz0OC6eA_Dk', 'groupUser', 'jhInsert', 'W00001', '张三丰', '2022-03-14T20:44:11+08:00');
INSERT INTO `_user_group_role` VALUES (662, 'H00002', '8CdYgl90D-Zz0OC6eA_Dk', 'groupUser', 'jhInsert', 'W00001', '张三丰', '2022-03-14T20:44:11+08:00');
COMMIT;

-- ----------------------------
-- Table structure for _user_group_role_page
-- ----------------------------
DROP TABLE IF EXISTS `_user_group_role_page`;
CREATE TABLE `_user_group_role_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `page` varchar(255) DEFAULT NULL COMMENT 'pageId id',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COMMENT='用户群组角色 - 页面 映射表; 软删除未启用;';

-- ----------------------------
-- Records of _user_group_role_page
-- ----------------------------
BEGIN;
INSERT INTO `_user_group_role_page` VALUES (17, '*', 'public', '*', 'login', 'allow', '登陆页; 开放给所有用户;', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_page` VALUES (18, '*', 'login', '*', 'manual', 'allow', '操作手册页; 开放给登陆用户;', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_page` VALUES (19, '*', 'login', '*', 'help', 'allow', '帮助页; 开放给登陆用户;', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_page` VALUES (31, '*', 'login', '*', 'index', 'allow', '聊天', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_page` VALUES (32, '*', 'login', '*', 'xiaochengxu', 'allow', '小程序页面; 开放给登陆用户;', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_page` VALUES (33, 'admin01', '*', '*', '*', 'allow', '所有页面权限; 只开放给admin01', 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _user_group_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `_user_group_role_resource`;
CREATE TABLE `_user_group_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `resource` varchar(255) DEFAULT NULL COMMENT 'resourceId 或者 通配符; 通配符: *, !resourceId',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COMMENT='用户群组角色 - 请求资源 映射表; 软删除未启用;';

-- ----------------------------
-- Records of _user_group_role_resource
-- ----------------------------
BEGIN;
INSERT INTO `_user_group_role_resource` VALUES (1, 'admin01', '*', '*', '*', 'allow', '所有resource 权限, 开放给 admin01用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (2, '*', 'public', '*', 'login.passwordLogin', 'allow', '登陆resource, 开放给所有用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (11, '*', 'public', '*', 'allPage.getConstantList', 'allow', '查询常量resource, 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (31, '*', 'login', '*', 'allPage.logout', 'allow', '登出resource, 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (33, '*', 'login', '*', 'allPage.userInfo', 'allow', '用户个人信息resource, 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (34, '*', 'login', '*', 'allPage.uploadByBase64', 'allow', '上传文件resource, 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (35, '*', 'login', '*', 'allPage.uploadByStream', 'allow', '上传文件resource, 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (36, '*', 'login', '*', 'allPage.*', 'allow', 'allPage相关resource; 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (37, '*', 'login', '*', 'user.*', 'allow', '用户个人信息相关resource; 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (38, '*', 'login', '*', 'chat.*', 'allow', '聊天相关resource; 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (39, '*', 'login', '*', 'socket.*', 'allow', 'socket相关resource; 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (136, '*', '*', 'groupOwner', 'chat.destroyGroup', 'allow', '销毁群, 开放给 当前群主', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (137, '*', '*', 'groupOwner,groupAdmin,groupUser', 'chat.addGroupUser', 'allow', '添加群用户, 开放给当前群管理员 & 群主 & 群用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (138, '*', '*', 'groupOwner,groupAdmin', 'chat.delGroupUser', 'allow', '删除群用户, 开放给 当前群管理员 & 群主', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (139, '*', '*', 'groupOwner,groupAdmin', 'chat.setGroupInfo', 'allow', '设置群信息, 开放给 当前群管理员 & 群主', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (140, '*', '*', 'groupOwner,groupAdmin', 'chat.setGroupUserRole', 'allow', '设置群用户角色, 开放给当前群主', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (141, '*', '*', 'groupOwner', 'chat.transferGroup', 'allow', '移交群, 开放给 当前群主', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` VALUES (142, '*', '*', 'groupOwner,groupAdmin,groupUser', 'chat.quitGroup', 'allow', '退出群, 开放给所有用户', 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _user_session
-- ----------------------------
DROP TABLE IF EXISTS `_user_session`;
CREATE TABLE `_user_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip',
  `userIpRegion` varchar(255) DEFAULT NULL COMMENT '用户Ip区域',
  `userAgent` text COMMENT '请求的 agent',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `deviceType` varchar(255) DEFAULT 'web' COMMENT '设备类型; flutter, web, bot_databot, bot_chatbot, bot_xiaochengxu',
  `socketStatus` varchar(255) DEFAULT 'offline' COMMENT 'socket状态',
  `authToken` varchar(255) DEFAULT NULL COMMENT 'auth token',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId_deviceId_index` (`userId`,`deviceId`) USING BTREE,
  KEY `userId_index` (`userId`),
  KEY `authToken_index` (`authToken`)
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=utf8mb4 COMMENT='用户session表; deviceId 维度;';

-- ----------------------------
-- Records of _user_session
-- ----------------------------
BEGIN;
INSERT INTO `_user_session` VALUES (295, 'admin01', '127.0.0.1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome', 'web', 'online', 'euJzkbLE09aEQ9TjxLwC9rSV1JGPJ3WFrzzL', 'update', 'admin01', 'admin01', '2022-08-09T22:56:32+08:00');
INSERT INTO `_user_session` VALUES (296, 'admin01', '127.0.0.1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5071.0 Safari/537.36', '127.0.0.1:7001_Mac.10.15.7_c0e979ad_chrome', 'web', 'online', 'hFMCOcDDBOX4dhUh-aP2PuT4uHO0JAbPBnF8', 'update', 'admin01', 'admin01', '2022-05-23T07:57:11+08:00');
INSERT INTO `_user_session` VALUES (297, 'W00002', '127.0.0.1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome', 'web', 'online', '', 'jhUpdate', 'W00002', '张无忌', '2022-08-08T21:09:01+08:00');
COMMIT;

-- ----------------------------
-- Table structure for duoxing_chat_session
-- ----------------------------
DROP TABLE IF EXISTS `duoxing_chat_session`;
CREATE TABLE `duoxing_chat_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `chatId` varchar(255) DEFAULT NULL COMMENT '聊天ID',
  `lastMessageHistoryId` int(11) DEFAULT NULL COMMENT '最近一条历史消息id',
  `topChatOrder` varchar(255) NOT NULL DEFAULT '' COMMENT '置顶顺序',
  `muted` int(11) DEFAULT '0' COMMENT '免打扰',
  `unreadCount` int(11) NOT NULL DEFAULT '0' COMMENT '未读数',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `_chat_session_chatId_type_userId_index` (`chatId`,`type`,`userId`),
  KEY `_userId_topChatOrder_lastMessageHistoryId_index` (`userId`,`topChatOrder`,`lastMessageHistoryId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7566 DEFAULT CHARSET=utf8mb4 COMMENT='聊天会话';

-- ----------------------------
-- Records of duoxing_chat_session
-- ----------------------------
BEGIN;
INSERT INTO `duoxing_chat_session` VALUES (7559, 'W00001', 'user', 'admin01', 12788, '', 0, 33, 'update', 'admin01', 'admin01', '2022-08-09T22:56:44+08:00');
INSERT INTO `duoxing_chat_session` VALUES (7560, 'admin01', 'user', 'W00001', 12788, '2022-03-17T13:29:40+08:00', 0, 0, 'update', 'admin01', 'admin01', '2022-08-09T22:56:44+08:00');
INSERT INTO `duoxing_chat_session` VALUES (7561, 'W00002', 'user', 'admin01', 12785, '', 0, 16, 'update', 'admin01', 'admin01', '2022-08-09T22:47:11+08:00');
INSERT INTO `duoxing_chat_session` VALUES (7562, 'admin01', 'user', 'W00002', 12785, '', 1, 0, 'update', 'admin01', 'admin01', '2022-08-09T22:47:11+08:00');
INSERT INTO `duoxing_chat_session` VALUES (7563, 'G00002', 'group', 'JcCVYjEqySIdMZxcy8O11', 12750, '', 0, 4, 'update', 'G00001', '洪七公', '2022-03-17T13:59:54+08:00');
INSERT INTO `duoxing_chat_session` VALUES (7564, 'G00001', 'group', 'JcCVYjEqySIdMZxcy8O11', 12750, '', 0, 0, 'update', 'G00001', '洪七公', '2022-03-17T13:59:54+08:00');
INSERT INTO `duoxing_chat_session` VALUES (7565, 'H00002', 'group', 'JcCVYjEqySIdMZxcy8O11', 12750, '', 0, 4, 'update', 'G00001', '洪七公', '2022-03-17T13:59:54+08:00');
COMMIT;

-- ----------------------------
-- Table structure for duoxing_message_history
-- ----------------------------
DROP TABLE IF EXISTS `duoxing_message_history`;
CREATE TABLE `duoxing_message_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `historyId` varchar(255) DEFAULT NULL COMMENT '历史消息id;',
  `messageFingerprint` varchar(255) DEFAULT NULL COMMENT '消息指纹, 多个消息id对应一个指纹',
  `fromUserId` varchar(255) DEFAULT NULL COMMENT '消息发送方userId',
  `toUserId` varchar(255) DEFAULT NULL COMMENT '接收方userId',
  `toGroupId` varchar(255) DEFAULT NULL COMMENT '接收方groupId',
  `messageType` varchar(255) DEFAULT NULL COMMENT '消息类型; user: 用户聊天, group:群组聊天',
  `noticeType` varchar(255) DEFAULT NULL COMMENT '通知类型; E.g delGroupUser,addGroupUser ',
  `messageContent` text COMMENT '消息内容',
  `messageContentType` varchar(255) DEFAULT NULL COMMENT '消息内容类型;  text,atText,image,file,notice,audio,video,userCard,revoke',
  `messageTimeString` varchar(255) DEFAULT NULL COMMENT '发送消息的时间; 格式: 2021-11-16 14:45:34',
  `messageStatus` varchar(255) DEFAULT 'active' COMMENT '消息状态 active revoke',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `messageFingerprint_unique_index` (`messageFingerprint`) USING BTREE,
  KEY `messageType_index` (`messageType`) USING BTREE,
  KEY `fromUser_index` (`fromUserId`) USING BTREE,
  KEY `toUserId_index` (`toUserId`) USING BTREE,
  KEY `toGroupId_index` (`toGroupId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12789 DEFAULT CHARSET=utf8mb4 COMMENT='消息历史表; 软删除未启用;';

-- ----------------------------
-- Records of duoxing_message_history
-- ----------------------------
BEGIN;
INSERT INTO `duoxing_message_history` VALUES (12730, NULL, '0prX1Nl60ywzGvWN7q9ou', 'admin01', 'W00001', NULL, 'user', NULL, '1', 'text', '2022-03-17T11:55:45+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-03-17T11:55:45+08:00');
INSERT INTO `duoxing_message_history` VALUES (12731, NULL, 'mdRXGA7lUaopyXtgdhY9A', 'admin01', 'W00002', NULL, 'user', NULL, '1', 'text', '2022-03-17T11:55:49+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-03-17T11:55:49+08:00');
INSERT INTO `duoxing_message_history` VALUES (12732, NULL, 'HDB642IDZYI_9nbjY_QKt', 'admin01', 'W00002', NULL, 'user', NULL, '2', 'text', '2022-03-17T11:55:59+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-03-17T11:55:59+08:00');
INSERT INTO `duoxing_message_history` VALUES (12733, NULL, 'XeeXxiXggxeJZn48T0aDT', 'admin01', 'W00001', NULL, 'user', NULL, '123', 'text', '2022-03-17T12:02:08+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-03-17T12:02:08+08:00');
INSERT INTO `duoxing_message_history` VALUES (12734, NULL, 'uq9oywQF0-dIKdu4df2cR', 'admin01', 'W00002', NULL, 'user', NULL, '123', 'text', '2022-03-17T12:02:17+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-03-17T12:02:17+08:00');
INSERT INTO `duoxing_message_history` VALUES (12735, NULL, 'gxNhR_8P09ZaE1dgTHJfZ', 'admin01', 'W00002', NULL, 'user', NULL, '123', 'text', '2022-03-17T12:10:55+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-03-17T12:10:55+08:00');
INSERT INTO `duoxing_message_history` VALUES (12736, NULL, 'N-B6GrijWGMLLOjudOy8H', 'admin01', 'W00002', NULL, 'user', NULL, '2222', 'text', '2022-03-17T12:10:58+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-03-17T12:10:58+08:00');
INSERT INTO `duoxing_message_history` VALUES (12737, NULL, 'Aei6tgnRCJLfbld8mlPWC', 'admin01', 'W00002', NULL, 'user', NULL, '1234', 'text', '2022-03-17T12:12:50+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-03-17T12:12:50+08:00');
INSERT INTO `duoxing_message_history` VALUES (12738, NULL, 'zG4hVgfn_0YBbwgvs3WT3', 'admin01', 'W00002', NULL, 'user', NULL, '22222', 'text', '2022-03-17T12:13:54+08:00', 'revoke', 'update', 'admin01', 'admin01', '2022-03-17T12:19:30+08:00');
INSERT INTO `duoxing_message_history` VALUES (12739, NULL, 'dZRgsgllmYi5cbTCkMNzk', 'admin01', 'W00002', NULL, 'user', NULL, '123123111', 'text', '2022-03-17T12:16:47+08:00', 'revoke', 'update', 'admin01', 'admin01', '2022-03-17T12:19:39+08:00');
INSERT INTO `duoxing_message_history` VALUES (12740, NULL, '5F4yxW84FmGycVTrIEZT2', 'admin01', 'W00002', NULL, 'user', NULL, 'vvvvvvv', 'text', '2022-03-17T12:17:45+08:00', 'revoke', 'update', 'admin01', 'admin01', '2022-03-17T12:17:54+08:00');
INSERT INTO `duoxing_message_history` VALUES (12741, NULL, '2lWYiUcJWdDmjXAhjTjgI', 'admin01', 'W00002', NULL, 'user', NULL, '安师大发生的发', 'text', '2022-03-17T12:18:33+08:00', 'revoke', 'update', 'admin01', 'admin01', '2022-03-17T12:19:21+08:00');
INSERT INTO `duoxing_message_history` VALUES (12742, NULL, '6JGe0SO-cGN9RETv5atuC', 'admin01', 'W00002', NULL, 'user', NULL, '阿斯顿发生的发生的发烧', 'text', '2022-03-17T12:19:35+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-03-17T12:19:35+08:00');
INSERT INTO `duoxing_message_history` VALUES (12743, NULL, 'kxQVFyYLsAjxOrjf8tB2d', 'admin01', 'W00002', NULL, 'user', NULL, '123333', 'text', '2022-03-17T13:27:22+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-03-17T13:27:22+08:00');
INSERT INTO `duoxing_message_history` VALUES (12744, NULL, 'Z9to7f-mPWzgQTFmjJQmg', 'admin01', 'W00002', NULL, 'user', NULL, '123123123', 'text', '2022-03-17T13:28:08+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-03-17T13:28:08+08:00');
INSERT INTO `duoxing_message_history` VALUES (12745, NULL, 't2vNEEaWaZhxy81KcCUhz', 'admin01', 'W00002', NULL, 'user', NULL, '123123123123', 'text', '2022-03-17T13:28:32+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-03-17T13:28:33+08:00');
INSERT INTO `duoxing_message_history` VALUES (12746, NULL, 'HCglPwJnrho778CPE8TTw', 'G00001', NULL, 'JcCVYjEqySIdMZxcy8O11', 'group', NULL, '111', 'text', '2022-03-17T13:55:10+08:00', 'active', 'insert', 'G00001', '洪七公', '2022-03-17T13:55:10+08:00');
INSERT INTO `duoxing_message_history` VALUES (12747, NULL, 'QPl4YqgJGuj2uUCVrShx_', 'G00001', NULL, 'JcCVYjEqySIdMZxcy8O11', 'group', NULL, '111', 'text', '2022-03-17T13:59:20+08:00', 'active', 'insert', 'G00001', '洪七公', '2022-03-17T13:59:20+08:00');
INSERT INTO `duoxing_message_history` VALUES (12748, NULL, 'T7gvO8qJDXvTYdjatOkv0', 'G00001', NULL, 'JcCVYjEqySIdMZxcy8O11', 'group', NULL, '33', 'text', '2022-03-17T13:59:23+08:00', 'active', 'insert', 'G00001', '洪七公', '2022-03-17T13:59:23+08:00');
INSERT INTO `duoxing_message_history` VALUES (12753, NULL, 'wcND1_VB2m25h6xlRwveh', 'admin01', NULL, 'C1vDvXCgb4uAsoa1K8mPC', 'group', NULL, '1', 'text', '2022-03-17T21:39:20+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-03-17T21:39:21+08:00');
INSERT INTO `duoxing_message_history` VALUES (12754, 'UFIA0TusGslRRJJWLRvOF', 'EHZnkMGMMTioKXzySAdAz', 'admin01', 'W00001', NULL, 'user', NULL, '1111', 'text', '2022-04-27T21:15:43+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-04-27T21:15:43+08:00');
INSERT INTO `duoxing_message_history` VALUES (12755, 'dpsP3dVo2jgVLIajGTLX0', 'eQwA7_zKu-rvAon4Pg_2r', 'admin01', 'W00001', NULL, 'user', NULL, '333', 'text', '2022-04-27T21:15:44+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-04-27T21:15:44+08:00');
INSERT INTO `duoxing_message_history` VALUES (12756, NULL, '_GmwT5Zta4ivwEQ2L18xz', 'admin01', 'W00002', NULL, 'user', NULL, '安师大发生的发', 'text', '2022-05-04T20:57:28+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-05-04T20:57:28+08:00');
INSERT INTO `duoxing_message_history` VALUES (12757, NULL, 'dQMafXhW-JQi1a6wazLdG', 'admin01', 'W00001', NULL, 'user', NULL, '12341234', 'text', '2022-05-04T22:29:31+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-05-04T22:29:31+08:00');
INSERT INTO `duoxing_message_history` VALUES (12758, NULL, 'KsYaI7xO3jZJIYh0g2hxX', 'admin01', 'W00001', NULL, 'user', NULL, '@1234', 'text', '2022-05-04T22:32:59+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-05-04T22:32:59+08:00');
INSERT INTO `duoxing_message_history` VALUES (12759, NULL, 'KHu31ADZYh91p4_gdr_L4', 'admin01', 'W00001', NULL, 'user', NULL, 'test', 'text', '2022-05-04T22:33:29+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-05-04T22:33:29+08:00');
INSERT INTO `duoxing_message_history` VALUES (12760, NULL, 'QyVVNupndJxY_Woe5aTxR', 'admin01', 'W00001', NULL, 'user', NULL, '12341234', 'text', '2022-05-04T22:33:33+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-05-04T22:33:33+08:00');
INSERT INTO `duoxing_message_history` VALUES (12761, NULL, '6DFliOV02O0lTMOU0dTbj', 'admin01', 'W00001', NULL, 'user', NULL, '1234', 'text', '2022-05-04T22:38:25+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-05-04T22:38:26+08:00');
INSERT INTO `duoxing_message_history` VALUES (12762, NULL, 'a7MLxMYnBkEJ5InaWKMqP', 'admin01', 'W00001', NULL, 'user', NULL, '1234', 'text', '2022-05-04T22:38:31+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-05-04T22:38:31+08:00');
INSERT INTO `duoxing_message_history` VALUES (12763, NULL, 'rlJsE5nAHXnZ86GJ1dOZp', 'admin01', 'W00001', NULL, 'user', NULL, '1234', 'text', '2022-05-04T22:40:08+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-05-04T22:40:08+08:00');
INSERT INTO `duoxing_message_history` VALUES (12764, NULL, 'AUa8_xY_9Uh_dFq9J770I', 'admin01', 'W00001', NULL, 'user', NULL, '1234', 'text', '2022-05-04T22:44:01+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-05-04T22:44:01+08:00');
INSERT INTO `duoxing_message_history` VALUES (12765, NULL, 'WLot1JM9qEPj1UCauN4SP', 'admin01', 'W00001', NULL, 'user', NULL, '1234', 'text', '2022-05-04T22:48:10+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-05-04T22:48:10+08:00');
INSERT INTO `duoxing_message_history` VALUES (12766, NULL, 'UzzOVhlmUKlh5s9iOdQEL', 'admin01', 'W00001', NULL, 'user', NULL, '{\"filename\":\"11.jpeg\",\"downloadPath\":\"/admin01/2022/5/4//1651675951776_192376_11.jpeg\",\"binarySize\":\"54.19KB\"}', 'image', '2022-05-04T22:52:32+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-05-04T22:52:32+08:00');
INSERT INTO `duoxing_message_history` VALUES (12767, NULL, 'tEsvIAGnS688tW-rfOhnz', 'admin01', 'W00001', NULL, 'user', NULL, '{\"filename\":\"11.jpeg\",\"downloadPath\":\"/admin01/2022/5/4//1651675959922_334893_11.jpeg\",\"binarySize\":\"54.19KB\"}', 'file', '2022-05-04T22:52:40+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-05-04T22:52:40+08:00');
INSERT INTO `duoxing_message_history` VALUES (12768, NULL, 'Q16bIHkrwmLQPdEKyB9X5', 'admin01', 'W00001', NULL, 'user', NULL, '{\"filename\":\"PMBOK指南第6版-中文-new.pdf\",\"downloadPath\":\"/admin01/2022/5/4//1651676170376_873134_PMBOK指南第6版-中文-new.pdf\",\"binarySize\":\"19.84MB\"}', 'file', '2022-05-04T22:56:11+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-05-04T22:56:11+08:00');
INSERT INTO `duoxing_message_history` VALUES (12769, NULL, 'lOcdrWZVIb9fDgacJoy1z', 'admin01', 'W00001', NULL, 'user', NULL, '{\"filename\":\"11 (1).jpeg\",\"downloadPath\":\"/admin01/2022/5/4//1651676241179_267645_11 (1).jpeg\",\"binarySize\":\"54.19KB\"}', 'image', '2022-05-04T22:57:21+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-05-04T22:57:21+08:00');
INSERT INTO `duoxing_message_history` VALUES (12770, NULL, 'xYY3UPYxofzHacGxRJTnD', 'admin01', 'W00001', NULL, 'user', NULL, '[emoji_face01_25.png]', 'text', '2022-05-04T22:57:33+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-05-04T22:57:33+08:00');
INSERT INTO `duoxing_message_history` VALUES (12771, NULL, 'CiTr0V3YRj5K_cZmh4e60', 'admin01', 'W00001', NULL, 'user', NULL, '{\"filename\":\"recordFile_224538.mp3\",\"downloadPath\":\"/admin01/2022/5/4//1651676403188_701889_recordFile_224538.mp3\",\"binarySize\":\"232.04KB\"}', 'audio', '2022-05-04T23:00:03+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-05-04T23:00:03+08:00');
INSERT INTO `duoxing_message_history` VALUES (12772, 'H3QQaBBGMei4EHskmWKYS', 'cMM19o6vF11XcZgr4vGT9', 'admin01', 'W00001', NULL, 'user', NULL, '1234', 'text', '2022-08-08T21:09:14+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-08T21:09:14+08:00');
INSERT INTO `duoxing_message_history` VALUES (12773, '9zucMTouUCWteqeEaiek6', 'fhUqhBCDZca0yXaDF9p2E', 'admin01', 'W00001', NULL, 'user', NULL, '1234', 'text', '2022-08-08T21:09:20+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-08T21:09:20+08:00');
INSERT INTO `duoxing_message_history` VALUES (12774, 'l3y5MG0qWuPlcvmWoWzQB', 'QrDkONXugufYAbzZFU5BE', 'admin01', 'W00001', NULL, 'user', NULL, '{\"downloadPath\":\"/emotion/face04/6.gif\"}', 'image', '2022-08-08T21:09:27+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-08T21:09:27+08:00');
INSERT INTO `duoxing_message_history` VALUES (12775, 'dYjFQ-Qf-7u4DcwdecHm7', 'mwZ-D4nC6o4FnkXf5Nj7_', 'admin01', 'W00001', NULL, 'user', NULL, '{\"downloadPath\":\"/emotion/face07/6.gif\"}', 'image', '2022-08-08T21:09:36+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-08T21:09:36+08:00');
INSERT INTO `duoxing_message_history` VALUES (12776, NULL, 'RNN-ZicybusAzcBSpyvXK', 'admin01', 'W00001', NULL, 'user', NULL, '[/emotion/face04/6.gif,,,image] \n------------------------\n Re @admin01: ', 'text', '2022-08-09T22:00:47+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-09T22:00:47+08:00');
INSERT INTO `duoxing_message_history` VALUES (12777, NULL, 'UupSH6qasa1pgi99nelKv', 'admin01', 'W00001', NULL, 'user', NULL, '@!', 'text', '2022-08-09T22:03:56+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-09T22:03:56+08:00');
INSERT INTO `duoxing_message_history` VALUES (12778, NULL, '5larS-vi7Bq8-m0FQjmp-', 'admin01', 'W00001', NULL, 'user', NULL, '{\"filename\":\"recordFile_904032.mp3\",\"downloadPath\":\"/admin01/2022/8/9//1660054309353_163847_recordFile_904032.mp3\",\"binarySize\":\"184.04KB\"}', 'audio', '2022-08-09T22:11:49+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-09T22:11:49+08:00');
INSERT INTO `duoxing_message_history` VALUES (12779, NULL, 'esPkwVqQOid7DEaZxXJ1N', 'admin01', 'W00001', NULL, 'user', NULL, '{\"filename\":\"recordFile_851044.mp3\",\"downloadPath\":\"/admin01/2022/8/9//1660054317484_616526_recordFile_851044.mp3\",\"binarySize\":\"320.04KB\"}', 'audio', '2022-08-09T22:11:57+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-09T22:11:57+08:00');
INSERT INTO `duoxing_message_history` VALUES (12780, NULL, 'aGluEvrn3lMpTfP_g-9Xc', 'admin01', 'W00001', NULL, 'user', NULL, '{\"filename\":\"recordFile_202319.mp3\",\"downloadPath\":\"/admin01/2022/8/9//1660054360879_998646_recordFile_202319.mp3\",\"binarySize\":\"288.04KB\"}', 'audio', '2022-08-09T22:12:41+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-09T22:12:41+08:00');
INSERT INTO `duoxing_message_history` VALUES (12781, NULL, 'aqCQV6syeTcOSCh2080dj', 'admin01', 'W00001', NULL, 'user', NULL, '{\"filename\":\"WechatIMG5.jpeg\",\"downloadPath\":\"/admin01/2022/8/9//1660054473637_103978_WechatIMG5.jpeg\",\"binarySize\":\"279.83KB\"}', 'image', '2022-08-09T22:14:33+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-09T22:14:33+08:00');
INSERT INTO `duoxing_message_history` VALUES (12782, NULL, '61SI-CRlSijd6VjbSw2iJ', 'admin01', 'W00001', NULL, 'user', NULL, '[emoji_face01_26.png]', 'text', '2022-08-09T22:14:41+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-09T22:14:41+08:00');
INSERT INTO `duoxing_message_history` VALUES (12783, NULL, 'BOQlSZ_3RtchNUqzTcgrZ', 'admin01', 'W00001', NULL, 'user', NULL, '{\"filename\":\"xiaochengxu.zip\",\"downloadPath\":\"/admin01/2022/8/9//1660055539825_424581_xiaochengxu.zip\",\"binarySize\":\"314.93KB\"}', 'file', '2022-08-09T22:32:20+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-09T22:32:20+08:00');
INSERT INTO `duoxing_message_history` VALUES (12784, NULL, '3t5YYSFesjmxN3oPnMiaa', 'admin01', 'W00001', NULL, 'user', NULL, '123', 'text', '2022-08-09T22:39:11+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-09T22:39:11+08:00');
INSERT INTO `duoxing_message_history` VALUES (12785, NULL, '51ok1KKgJxd5m6DngrlC1', 'admin01', 'W00002', NULL, 'user', NULL, '345', 'text', '2022-08-09T22:47:11+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-09T22:47:11+08:00');
INSERT INTO `duoxing_message_history` VALUES (12786, NULL, 'RPIfBA6k5OLROvugw1N_Q', 'admin01', 'W00001', NULL, 'user', NULL, '1234', 'text', '2022-08-09T22:53:02+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-09T22:53:02+08:00');
INSERT INTO `duoxing_message_history` VALUES (12787, NULL, 'dnCL6lDbnQ9Wb5o204xM8', 'admin01', 'W00001', NULL, 'user', NULL, 'aaa', 'text', '2022-08-09T22:56:37+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-09T22:56:37+08:00');
INSERT INTO `duoxing_message_history` VALUES (12788, NULL, 'rCDj_9JS4idxivSu6zEHo', 'admin01', 'W00001', NULL, 'user', NULL, '{\"filename\":\"WechatIMG5.jpeg\",\"downloadPath\":\"/admin01/2022/8/9//1660057003983_131840_WechatIMG5.jpeg\",\"binarySize\":\"279.83KB\"}', 'image', '2022-08-09T22:56:44+08:00', 'active', 'insert', 'admin01', 'admin01', '2022-08-09T22:56:44+08:00');
COMMIT;

-- ----------------------------
-- Table structure for duoxing_user_friend
-- ----------------------------
DROP TABLE IF EXISTS `duoxing_user_friend`;
CREATE TABLE `duoxing_user_friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id;',
  `friendId` varchar(255) DEFAULT NULL COMMENT '好友id',
  `friendStatus` varchar(255) DEFAULT NULL COMMENT '请求加好友状态; isFriend, notFriend, waitingApprove, rejectApply',
  `requestTime` varchar(255) DEFAULT NULL COMMENT '请求时间; ''2022-03-05T14:23:59.077+08:00''',
  `requestRemark` varchar(255) DEFAULT NULL COMMENT '备注',
  `responseTime` varchar(255) DEFAULT NULL COMMENT '响应时间; ''2022-03-05T14:23:59.077+08:00''',
  `rejectTimes` varchar(255) DEFAULT NULL COMMENT '拒绝次数',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `userId_index` (`userId`) USING BTREE,
  KEY `friend_index` (`friendId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=471 DEFAULT CHARSET=utf8mb4 COMMENT='好友表; 软删除未启用;';

-- ----------------------------
-- Records of duoxing_user_friend
-- ----------------------------
BEGIN;
INSERT INTO `duoxing_user_friend` VALUES (365, 'H00001', 'H00002', NULL, NULL, NULL, NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-03T22:29:14+08:00');
INSERT INTO `duoxing_user_friend` VALUES (366, 'H00002', 'H00001', NULL, NULL, NULL, NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-03T22:29:14+08:00');
INSERT INTO `duoxing_user_friend` VALUES (379, 'H00002', 'W00001', 'isFriend', '2022-03-14T14:17:03+08:00', '', '2022-03-13T21:42:46+08:00', NULL, 'jhUpdate', 'H00002', '令狐冲', '2022-03-14T14:17:32+08:00');
INSERT INTO `duoxing_user_friend` VALUES (380, 'W00001', 'H00002', 'isFriend', '2022-03-12T23:50:09+08:00', '', '2022-03-08T21:59:13+08:00', NULL, 'jhUpdate', 'H00002', '令狐冲', '2022-03-14T14:17:32+08:00');
INSERT INTO `duoxing_user_friend` VALUES (381, 'W00001', 'H00001', 'notFriend', NULL, NULL, NULL, NULL, 'jhUpdate', 'W00001', '张三丰', '2022-03-12T22:25:40+08:00');
INSERT INTO `duoxing_user_friend` VALUES (382, 'H00001', 'W00001', 'notFriend', '2022-03-10T22:01:15+08:00', '', NULL, NULL, 'jhUpdate', 'W00001', '张三丰', '2022-03-12T22:25:40+08:00');
INSERT INTO `duoxing_user_friend` VALUES (391, 'G00003', 'G00001', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-12T15:35:48+08:00');
INSERT INTO `duoxing_user_friend` VALUES (392, 'G00001', 'G00003', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-12T15:35:48+08:00');
INSERT INTO `duoxing_user_friend` VALUES (393, 'G00003', 'G00002', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-12T15:35:55+08:00');
INSERT INTO `duoxing_user_friend` VALUES (394, 'G00002', 'G00003', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-12T15:35:55+08:00');
INSERT INTO `duoxing_user_friend` VALUES (395, 'G00003', 'H00001', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-12T15:36:15+08:00');
INSERT INTO `duoxing_user_friend` VALUES (396, 'H00001', 'G00003', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-12T15:36:15+08:00');
INSERT INTO `duoxing_user_friend` VALUES (399, 'W00001', 'G00002', 'notFriend', NULL, NULL, NULL, NULL, 'insert', NULL, NULL, '2022-03-12T21:22:15+08:00');
INSERT INTO `duoxing_user_friend` VALUES (400, 'G00002', 'W00001', 'waitingApprove', '2022-03-12T21:22:16+08:00', '', NULL, NULL, 'update', NULL, NULL, '2022-03-12T21:22:16+08:00');
INSERT INTO `duoxing_user_friend` VALUES (417, 'admin01', 'G00001', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'admin01', 'admin01', '2022-03-12T23:21:17+08:00');
INSERT INTO `duoxing_user_friend` VALUES (418, 'G00001', 'admin01', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'admin01', 'admin01', '2022-03-12T23:21:17+08:00');
INSERT INTO `duoxing_user_friend` VALUES (419, 'admin01', 'G00002', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'admin01', 'admin01', '2022-03-12T23:37:59+08:00');
INSERT INTO `duoxing_user_friend` VALUES (420, 'G00002', 'admin01', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'admin01', 'admin01', '2022-03-12T23:37:59+08:00');
INSERT INTO `duoxing_user_friend` VALUES (421, 'admin01', 'G00003', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'admin01', 'admin01', '2022-03-12T23:43:28+08:00');
INSERT INTO `duoxing_user_friend` VALUES (422, 'G00003', 'admin01', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'admin01', 'admin01', '2022-03-12T23:43:28+08:00');
INSERT INTO `duoxing_user_friend` VALUES (423, 'admin01', 'H00001', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'admin01', 'admin01', '2022-03-12T23:44:10+08:00');
INSERT INTO `duoxing_user_friend` VALUES (424, 'H00001', 'admin01', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'admin01', 'admin01', '2022-03-12T23:44:10+08:00');
INSERT INTO `duoxing_user_friend` VALUES (425, 'admin01', 'H00002', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'admin01', 'admin01', '2022-03-12T23:40:01+08:00');
INSERT INTO `duoxing_user_friend` VALUES (426, 'H00002', 'admin01', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'admin01', 'admin01', '2022-03-12T23:40:01+08:00');
INSERT INTO `duoxing_user_friend` VALUES (427, 'admin01', 'W00001', 'isFriend', '2022-03-14T16:15:06+08:00', '', NULL, NULL, 'jhUpdate', 'admin01', 'admin01', '2022-03-14T16:15:13+08:00');
INSERT INTO `duoxing_user_friend` VALUES (428, 'W00001', 'admin01', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'admin01', 'admin01', '2022-03-14T16:15:13+08:00');
INSERT INTO `duoxing_user_friend` VALUES (429, 'admin01', 'W00002', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-12T23:47:14+08:00');
INSERT INTO `duoxing_user_friend` VALUES (430, 'W00002', 'admin01', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-12T23:47:14+08:00');
INSERT INTO `duoxing_user_friend` VALUES (431, 'G00001', 'G00002', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'G00001', '洪七公', '2022-03-12T23:50:58+08:00');
INSERT INTO `duoxing_user_friend` VALUES (432, 'G00002', 'G00001', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'G00001', '洪七公', '2022-03-12T23:50:58+08:00');
INSERT INTO `duoxing_user_friend` VALUES (433, 'G00001', 'H00001', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'G00001', '洪七公', '2022-03-12T23:51:22+08:00');
INSERT INTO `duoxing_user_friend` VALUES (434, 'H00001', 'G00001', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'G00001', '洪七公', '2022-03-12T23:51:22+08:00');
INSERT INTO `duoxing_user_friend` VALUES (435, 'G00001', 'H00002', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'G00001', '洪七公', '2022-03-12T23:52:37+08:00');
INSERT INTO `duoxing_user_friend` VALUES (436, 'H00002', 'G00001', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'G00001', '洪七公', '2022-03-12T23:52:37+08:00');
INSERT INTO `duoxing_user_friend` VALUES (437, 'W00001', 'G00001', 'notFriend', NULL, '后台添加好友', NULL, NULL, 'jhUpdate', 'W00001', '张三丰', '2022-03-14T13:34:09+08:00');
INSERT INTO `duoxing_user_friend` VALUES (438, 'G00001', 'W00001', 'notFriend', '2022-03-14T13:33:27+08:00', '', NULL, NULL, 'jhUpdate', 'W00001', '张三丰', '2022-03-14T13:34:09+08:00');
INSERT INTO `duoxing_user_friend` VALUES (443, 'admin01', 'chatbot02', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T19:53:13+08:00');
INSERT INTO `duoxing_user_friend` VALUES (444, 'chatbot02', 'admin01', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T19:53:13+08:00');
INSERT INTO `duoxing_user_friend` VALUES (445, 'admin01', 'xiaochengxu02', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T19:53:22+08:00');
INSERT INTO `duoxing_user_friend` VALUES (446, 'xiaochengxu02', 'admin01', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T19:53:22+08:00');
INSERT INTO `duoxing_user_friend` VALUES (447, 'admin01', 'chatbot01', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T19:53:26+08:00');
INSERT INTO `duoxing_user_friend` VALUES (448, 'chatbot01', 'admin01', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T19:53:26+08:00');
INSERT INTO `duoxing_user_friend` VALUES (449, 'W00001', 'chatbot01', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T21:00:25+08:00');
INSERT INTO `duoxing_user_friend` VALUES (450, 'chatbot01', 'W00001', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T21:00:25+08:00');
INSERT INTO `duoxing_user_friend` VALUES (451, 'W00001', 'chatbot02', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T21:00:30+08:00');
INSERT INTO `duoxing_user_friend` VALUES (452, 'chatbot02', 'W00001', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T21:00:30+08:00');
INSERT INTO `duoxing_user_friend` VALUES (455, 'W00001', 'xiaochengxu02', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T21:00:40+08:00');
INSERT INTO `duoxing_user_friend` VALUES (456, 'xiaochengxu02', 'W00001', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T21:00:40+08:00');
INSERT INTO `duoxing_user_friend` VALUES (457, 'W00002', 'chatbot01', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T21:01:39+08:00');
INSERT INTO `duoxing_user_friend` VALUES (458, 'chatbot01', 'W00002', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T21:01:39+08:00');
INSERT INTO `duoxing_user_friend` VALUES (459, 'G00001', 'chatbot01', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T21:01:44+08:00');
INSERT INTO `duoxing_user_friend` VALUES (460, 'chatbot01', 'G00001', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T21:01:44+08:00');
INSERT INTO `duoxing_user_friend` VALUES (461, 'G00002', 'chatbot01', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T21:01:47+08:00');
INSERT INTO `duoxing_user_friend` VALUES (462, 'chatbot01', 'G00002', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T21:01:47+08:00');
INSERT INTO `duoxing_user_friend` VALUES (463, 'G00003', 'chatbot01', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T21:01:53+08:00');
INSERT INTO `duoxing_user_friend` VALUES (464, 'chatbot01', 'G00003', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-13T21:01:53+08:00');
INSERT INTO `duoxing_user_friend` VALUES (467, 'G00001', 'xiaochengxu02', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-14T14:43:08+08:00');
INSERT INTO `duoxing_user_friend` VALUES (468, 'xiaochengxu02', 'G00001', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-14T14:43:08+08:00');
INSERT INTO `duoxing_user_friend` VALUES (469, 'G00001', 'chatbot02', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-14T14:43:12+08:00');
INSERT INTO `duoxing_user_friend` VALUES (470, 'chatbot02', 'G00001', 'isFriend', NULL, '后台添加好友', NULL, NULL, 'jhInsert', 'admin01', 'admin01', '2022-03-14T14:43:12+08:00');
COMMIT;

-- ----------------------------
-- View structure for view01_duoxing_chat_session
-- ----------------------------
DROP VIEW IF EXISTS `view01_duoxing_chat_session`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view01_duoxing_chat_session` AS select `duoxing_chat_session`.`id` AS `id`,`duoxing_chat_session`.`userId` AS `userId`,`duoxing_chat_session`.`type` AS `type`,`duoxing_chat_session`.`chatId` AS `chatId`,`duoxing_chat_session`.`lastMessageHistoryId` AS `lastMessageHistoryId`,`duoxing_chat_session`.`topChatOrder` AS `topChatOrder`,`duoxing_chat_session`.`muted` AS `muted`,`duoxing_chat_session`.`unreadCount` AS `unreadCount`,`_user`.`username` AS `chatUsername`,`_user`.`userAvatar` AS `chatUserAvatar`,`_group`.`groupName` AS `chatGroupName`,`_group`.`groupAvatar` AS `chatGroupAvatar` from ((`duoxing_chat_session` left join `_user` on(((`duoxing_chat_session`.`chatId` = `_user`.`userId`) and (`duoxing_chat_session`.`type` = 'user')))) left join `_group` on(((`duoxing_chat_session`.`chatId` = `_group`.`groupId`) and (`duoxing_chat_session`.`type` = 'group'))));

-- ----------------------------
-- View structure for view01_duoxing_message_history
-- ----------------------------
DROP VIEW IF EXISTS `view01_duoxing_message_history`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view01_duoxing_message_history` AS select `dmh`.`id` AS `id`,`dmh`.`messageType` AS `messageType`,`dmh`.`fromUserId` AS `fromUserId`,`fromUser`.`username` AS `fromUsername`,`fromUser`.`userAvatar` AS `fromUserAvatar`,`dmh`.`toUserId` AS `toUserId`,`toUser`.`username` AS `toUsername`,`toUser`.`userAvatar` AS `toUserAvatar`,`dmh`.`toGroupId` AS `toGroupId`,`dmh`.`messageContent` AS `messageContent`,`dmh`.`historyId` AS `historyId`,`dmh`.`messageFingerprint` AS `messageFingerprint`,`dmh`.`messageTimeString` AS `messageTimeString`,`dmh`.`messageContentType` AS `messageContentType`,`dmh`.`noticeType` AS `noticeType`,`dmh`.`messageStatus` AS `messageStatus` from ((`duoxing_message_history` `dmh` left join `_user` `fromUser` on((`fromUser`.`userId` = `dmh`.`fromUserId`))) left join `_user` `toUser` on((`toUser`.`userId` = `dmh`.`toUserId`)));

-- ----------------------------
-- View structure for view01_duoxing_user_friend
-- ----------------------------
DROP VIEW IF EXISTS `view01_duoxing_user_friend`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view01_duoxing_user_friend` AS select `duoxing_user_friend`.`id` AS `id`,`duoxing_user_friend`.`userId` AS `userId`,`user`.`username` AS `username`,`user`.`userAvatar` AS `userAvatar`,`duoxing_user_friend`.`friendId` AS `friendId`,`friend`.`username` AS `friendUsername`,`friend`.`userAvatar` AS `friendUserAvatar`,`duoxing_user_friend`.`friendStatus` AS `friendStatus`,`duoxing_user_friend`.`requestTime` AS `requestTime`,`duoxing_user_friend`.`requestRemark` AS `requestRemark`,`duoxing_user_friend`.`responseTime` AS `responseTime`,`duoxing_user_friend`.`rejectTimes` AS `rejectTimes`,count((`_user_session`.`socketStatus` = 'online')) AS `socketOnlineCount` from (((`duoxing_user_friend` left join `_user` `friend` on((`friend`.`userId` = `duoxing_user_friend`.`friendId`))) left join `_user` `user` on((`duoxing_user_friend`.`userId` = `user`.`userId`))) left join `_user_session` on((`duoxing_user_friend`.`friendId` = `_user_session`.`userId`))) group by `duoxing_user_friend`.`userId`,`duoxing_user_friend`.`friendId`;

-- ----------------------------
-- View structure for view01_duoxing_user_friend_management
-- ----------------------------
DROP VIEW IF EXISTS `view01_duoxing_user_friend_management`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view01_duoxing_user_friend_management` AS select `duoxing_user_friend`.`id` AS `id`,`duoxing_user_friend`.`userId` AS `userId`,`user`.`username` AS `username`,`user`.`userAvatar` AS `userAvatar`,`duoxing_user_friend`.`friendId` AS `friendId`,`friend`.`username` AS `friendUsername`,`friend`.`userAvatar` AS `friendUserAvatar`,`duoxing_user_friend`.`operation` AS `operation`,`duoxing_user_friend`.`operationByUserId` AS `operationByUserId`,`duoxing_user_friend`.`operationByUser` AS `operationByUser`,`duoxing_user_friend`.`operationAt` AS `operationAt` from ((`duoxing_user_friend` join `_user` `user` on((`duoxing_user_friend`.`userId` = `user`.`userId`))) join `_user` `friend` on((`duoxing_user_friend`.`friendId` = `friend`.`userId`)));

-- ----------------------------
-- View structure for view01_group_info
-- ----------------------------
DROP VIEW IF EXISTS `view01_group_info`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view01_group_info` AS select `g`.`groupId` AS `groupId`,`g`.`groupName` AS `groupName`,`g`.`groupAvatar` AS `groupAvatar`,`g`.`groupDesc` AS `groupDesc`,`g`.`groupExtend` AS `groupExtend`,count(`ugr`.`userId`) AS `groupUserCount` from (`_group` `g` left join `_user_group_role` `ugr` on((`g`.`groupId` = `ugr`.`groupId`))) group by `g`.`groupId`;

-- ----------------------------
-- View structure for view01_user
-- ----------------------------
DROP VIEW IF EXISTS `view01_user`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view01_user` AS select `_user`.`id` AS `id`,`_user`.`userId` AS `userId`,`_user`.`username` AS `username`,`_user`.`userAvatar` AS `userAvatar`,`_user`.`contactNumber` AS `contactNumber`,`_user`.`gender` AS `gender`,`_user`.`birthday` AS `birthday`,`_user`.`signature` AS `signature`,`_user`.`email` AS `email`,`_user`.`userType` AS `userType`,`_user`.`userStatus` AS `userStatus`,`_user`.`config` AS `config` from `_user`;

-- ----------------------------
-- View structure for view01_user_group_role
-- ----------------------------
DROP VIEW IF EXISTS `view01_user_group_role`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view01_user_group_role` AS select `_user_group_role`.`id` AS `id`,`_user_group_role`.`userId` AS `userId`,`_user_group_role`.`groupId` AS `groupId`,`_user_group_role`.`roleId` AS `roleId`,`_user`.`username` AS `username`,`_user`.`userAvatar` AS `userAvatar`,`_role`.`roleName` AS `roleName`,`_group`.`groupName` AS `groupName`,`_group`.`groupAvatar` AS `groupAvatar`,`_user_group_role`.`operation` AS `operation`,`_user_group_role`.`operationByUserId` AS `operationByUserId`,`_user_group_role`.`operationByUser` AS `operationByUser`,`_user_group_role`.`operationAt` AS `operationAt` from (((`_user_group_role` join `_user` on((`_user_group_role`.`userId` = `_user`.`userId`))) join `_group` on((`_user_group_role`.`groupId` = `_group`.`groupId`))) join `_role` on((`_user_group_role`.`roleId` = `_role`.`roleId`)));

-- ----------------------------
-- View structure for _view01_user
-- ----------------------------
DROP VIEW IF EXISTS `_view01_user`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `_view01_user` AS select `_user`.`id` AS `id`,`_user`.`userId` AS `userId`,`_user`.`username` AS `username`,`_user`.`userAvatar` AS `userAvatar`,`_user`.`contactNumber` AS `contactNumber`,`_user`.`gender` AS `gender`,`_user`.`birthday` AS `birthday`,`_user`.`signature` AS `signature`,`_user`.`email` AS `email`,`_user`.`clearTextPassword` AS `clearTextPassword`,`_user`.`password` AS `password`,`_user`.`md5Salt` AS `md5Salt`,`_user`.`userType` AS `userType`,`_user`.`userStatus` AS `userStatus`,`_user`.`config` AS `config` from `_user`;

SET FOREIGN_KEY_CHECKS = 1;
