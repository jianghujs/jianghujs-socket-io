/*
 Navicat Premium Data Transfer

 Source Server         : junshi
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:40002
 Source Schema         : jianghujs_demo_socket_io

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 08/08/2022 21:05:40
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COMMENT='文件表; 软删除未启用;';

-- ----------------------------
-- Records of _file
-- ----------------------------
BEGIN;
INSERT INTO `_file` VALUES (12, '1646481609285_723939', 'W00002', 'country_ids.txt', '1646481609285_723939_country_ids.txt', '/W00002/1646481609285_723939_country_ids.txt', 'file', NULL, '0.00KB', 'jhInsert', 'W00002', '张无忌', '2022-03-05T20:00:09+08:00');
INSERT INTO `_file` VALUES (13, '1646481771965_253291', 'W00002', 'country_ids.txt', '1646481771965_253291_country_ids.txt', '/W00002/1646481771965_253291_country_ids.txt', 'file', NULL, '0.00KB', 'jhInsert', 'W00002', '张无忌', '2022-03-05T20:02:51+08:00');
INSERT INTO `_file` VALUES (14, '1646481795617_438450', 'W00002', '11.jpeg', '1646481795617_438450_11.jpeg', '/W00002/1646481795617_438450_11.jpeg', 'file', NULL, '54.19KB', 'jhInsert', 'W00002', '张无忌', '2022-03-05T20:03:15+08:00');
INSERT INTO `_file` VALUES (15, '1646481808699_204549', 'W00002', '11.jpeg', '1646481808699_204549_11.jpeg', '/W00002/1646481808699_204549_11.jpeg', 'file', NULL, '54.19KB', 'jhInsert', 'W00002', '张无忌', '2022-03-05T20:03:28+08:00');
INSERT INTO `_file` VALUES (16, '1646481984933_695968', 'W00002', '11.jpeg', '1646481984933_695968_11.jpeg', '/W00002/1646481984933_695968_11.jpeg', 'file', NULL, '54.19KB', 'jhInsert', 'W00002', '张无忌', '2022-03-05T20:06:24+08:00');
INSERT INTO `_file` VALUES (17, '1646482583309_887002', 'W00002', 'recordFile_152154.mp3', '1646482583309_887002_recordFile_152154.mp3', '/W00002/1646482583309_887002_recordFile_152154.mp3', 'base64', NULL, '232.04KB', 'jhInsert', 'W00002', '张无忌', '2022-03-05T20:16:23+08:00');
INSERT INTO `_file` VALUES (18, '1646482786423_695229', 'W00002', 'recordFile_178380.mp3', '1646482786423_695229_recordFile_178380.mp3', '/W00002/1646482786423_695229_recordFile_178380.mp3', 'base64', NULL, '216.04KB', 'jhInsert', 'W00002', '张无忌', '2022-03-05T20:20:32+08:00');
INSERT INTO `_file` VALUES (19, '1646483134179_581553', 'W00002', 'recordFile_635547.mp3', '1646483134179_581553_recordFile_635547.mp3', '/W00002/1646483134179_581553_recordFile_635547.mp3', 'base64', NULL, '232.04KB', 'jhInsert', 'W00002', '张无忌', '2022-03-05T20:25:36+08:00');
INSERT INTO `_file` VALUES (20, '1646483179579_640822', 'W00002', 'recordFile_409182.mp3', '1646483179579_640822_recordFile_409182.mp3', '/W00002/1646483179579_640822_recordFile_409182.mp3', 'base64', NULL, '200.04KB', 'jhInsert', 'W00002', '张无忌', '2022-03-05T20:26:21+08:00');
INSERT INTO `_file` VALUES (21, '1646483409066_428251', 'W00002', 'recordFile_296804.mp3', '1646483409066_428251_recordFile_296804.mp3', '/W00002/1646483409066_428251_recordFile_296804.mp3', 'base64', NULL, '224.04KB', 'jhInsert', 'W00002', '张无忌', '2022-03-05T20:30:09+08:00');
INSERT INTO `_file` VALUES (22, '1646485527289_225344', 'W00002', '11.jpeg', '1646485527289_225344_11.jpeg', '/W00002/1646485527289_225344_11.jpeg', 'file', NULL, '54.19KB', 'jhInsert', 'W00002', '张无忌', '2022-03-05T21:05:27+08:00');
INSERT INTO `_file` VALUES (23, '1646485532454_399728', 'W00002', '11.jpeg', '1646485532454_399728_11.jpeg', '/W00002/1646485532454_399728_11.jpeg', 'file', NULL, '54.19KB', 'jhInsert', 'W00002', '张无忌', '2022-03-05T21:05:32+08:00');
INSERT INTO `_file` VALUES (24, '1646485541111_150396', 'W00002', 'recordFile_735585.mp3', '1646485541111_150396_recordFile_735585.mp3', '/W00002/1646485541111_150396_recordFile_735585.mp3', 'base64', NULL, '224.04KB', 'jhInsert', 'W00002', '张无忌', '2022-03-05T21:05:41+08:00');
INSERT INTO `_file` VALUES (25, '1646485841464_255777', 'W00002', 'recordFile_648840.mp3', '1646485841464_255777_recordFile_648840.mp3', '/W00002/1646485841464_255777_recordFile_648840.mp3', 'base64', NULL, '240.04KB', 'jhInsert', 'W00002', '张无忌', '2022-03-05T21:10:41+08:00');
INSERT INTO `_file` VALUES (26, '1646485890497_319028', 'W00002', 'recordFile_462050.mp3', '1646485890497_319028_recordFile_462050.mp3', '/W00002/1646485890497_319028_recordFile_462050.mp3', 'base64', NULL, '200.04KB', 'jhInsert', 'W00002', '张无忌', '2022-03-05T21:11:30+08:00');
INSERT INTO `_file` VALUES (27, '1646488532031_271583', 'admin01', '11.jpeg', '1646488532031_271583_11.jpeg', '/admin/1646488532031_271583_11.jpeg', 'file', NULL, '54.19KB', 'jhInsert', 'admin01', 'admin01', '2022-03-05T21:55:32+08:00');
INSERT INTO `_file` VALUES (28, '1646488534478_699658', 'admin01', '11.jpeg', '1646488534478_699658_11.jpeg', '/admin/1646488534478_699658_11.jpeg', 'file', NULL, '54.19KB', 'jhInsert', 'admin01', 'admin01', '2022-03-05T21:55:34+08:00');
INSERT INTO `_file` VALUES (29, '1646660897023_496994', 'W00002', 'recordFile_554362.mp3', '1646660897023_496994_recordFile_554362.mp3', '/W00002/1646660897023_496994_recordFile_554362.mp3', 'base64', NULL, '160.04KB', 'jhInsert', 'W00002', '张无忌', '2022-03-07T21:48:17+08:00');
INSERT INTO `_file` VALUES (30, '1646661033901_368232', 'W00002', 'recordFile_928612.mp3', '1646661033901_368232_recordFile_928612.mp3', '/W00002/1646661033901_368232_recordFile_928612.mp3', 'base64', NULL, '200.04KB', 'jhInsert', 'W00002', '张无忌', '2022-03-07T21:50:33+08:00');
INSERT INTO `_file` VALUES (31, '1646743719720_739028', 'admin01', '1642409847352.jpg', '1646743719720_739028_1642409847352.jpg', '/admin/1646743719720_739028_1642409847352.jpg', 'file', NULL, '1.10KB', 'jhInsert', 'admin01', 'admin01', '2022-03-08T20:48:39+08:00');
INSERT INTO `_file` VALUES (32, '1646743750365_711677', 'admin01', '1642409847352.jpg', '1646743750365_711677_1642409847352.jpg', '/admin/1646743750365_711677_1642409847352.jpg', 'file', NULL, '1.10KB', 'jhInsert', 'admin01', 'admin01', '2022-03-08T20:49:10+08:00');
INSERT INTO `_file` VALUES (33, '1646743822582_847728', 'admin01', 'recordFile_309556.mp3', '1646743822582_847728_recordFile_309556.mp3', '/admin/1646743822582_847728_recordFile_309556.mp3', 'base64', NULL, '136.04KB', 'jhInsert', 'admin01', 'admin01', '2022-03-08T20:50:22+08:00');
INSERT INTO `_file` VALUES (34, '1646743901516_283216', 'W00001', 'recordFile_106719.mp3', '1646743901516_283216_recordFile_106719.mp3', '/W00001/1646743901516_283216_recordFile_106719.mp3', 'base64', NULL, '21.88KB', 'jhInsert', 'W00001', '张三丰', '2022-03-08T20:51:41+08:00');
INSERT INTO `_file` VALUES (35, '1646805933536_867442', 'admin01', '后退 (1).png', '1646805933536_867442_后退 (1).png', '/admin/1646805933536_867442_后退 (1).png', 'file', NULL, '2.98KB', 'jhInsert', 'admin01', 'admin01', '2022-03-09T14:05:33+08:00');
INSERT INTO `_file` VALUES (36, '1646805944076_941576', 'admin01', '1642409847352.jpg', '1646805944076_941576_1642409847352.jpg', '/admin/1646805944076_941576_1642409847352.jpg', 'file', NULL, '1.10KB', 'jhInsert', 'admin01', 'admin01', '2022-03-09T14:05:44+08:00');
INSERT INTO `_file` VALUES (37, '1646806646424_172373', 'admin01', 'IMG_37_9601280.jpeg', '1646806646424_172373_IMG_37_9601280.jpeg', '/admin/1646806646424_172373_IMG_37_9601280.jpeg', 'base64', NULL, '142.08KB', 'jhInsert', 'admin01', 'admin01', '2022-03-09T14:17:26+08:00');
INSERT INTO `_file` VALUES (38, '1646806672008_306704', 'admin01', 'IMG_20220309_141653.jpg', '1646806672008_306704_IMG_20220309_141653.jpg', '/admin/1646806672008_306704_IMG_20220309_141653.jpg', 'base64', NULL, '142.08KB', 'jhInsert', 'admin01', 'admin01', '2022-03-09T14:17:52+08:00');
INSERT INTO `_file` VALUES (39, '1646807191657_579212', 'admin01', 'draw9png.zip', '1646807191657_579212_draw9png.zip', '/admin/1646807191657_579212_draw9png.zip', 'file', NULL, '576.87KB', 'jhInsert', 'admin01', 'admin01', '2022-03-09T14:26:31+08:00');
INSERT INTO `_file` VALUES (40, '1646834564301_438952', 'admin01', 'WechatIMG1841.jpeg', '1646834564301_438952_WechatIMG1841.jpeg', '/admin/1646834564301_438952_WechatIMG1841.jpeg', 'file', NULL, '188.42KB', 'jhInsert', 'admin01', 'admin01', '2022-03-09T22:02:44+08:00');
INSERT INTO `_file` VALUES (41, '1646835011506_773489', 'admin01', 'WechatIMG1841.jpeg', '1646835011506_773489_WechatIMG1841.jpeg', '/admin/1646835011506_773489_WechatIMG1841.jpeg', 'file', NULL, '188.42KB', 'jhInsert', 'admin01', 'admin01', '2022-03-09T22:10:11+08:00');
INSERT INTO `_file` VALUES (42, '1646922441917_738597', 'W00001', '11.jpeg', '1646922441917_738597_11.jpeg', '/W00001/1646922441917_738597_11.jpeg', 'file', NULL, '54.19KB', 'jhInsert', 'W00001', '张三丰', '2022-03-10T22:27:21+08:00');
INSERT INTO `_file` VALUES (43, '1646922452739_664374', 'W00001', '11.jpeg', '1646922452739_664374_11.jpeg', '/W00001/1646922452739_664374_11.jpeg', 'file', NULL, '54.19KB', 'jhInsert', 'W00001', '张三丰', '2022-03-10T22:27:32+08:00');
INSERT INTO `_file` VALUES (44, '1646922859992_720203', 'W00001', 'recordFile_703158.mp3', '1646922859992_720203_recordFile_703158.mp3', '/W00001/1646922859992_720203_recordFile_703158.mp3', 'base64', NULL, '128.04KB', 'jhInsert', 'W00001', '张三丰', '2022-03-10T22:34:19+08:00');
INSERT INTO `_file` VALUES (45, '1647074860764_575048', 'noticeImage', 'noticeImage.jpeg', '1647074860764_575048_noticeImage.jpeg', '/noticeImage/1647074860764_575048_noticeImage.jpeg', 'file', NULL, '188.42KB', 'jhInsert', 'admin01', 'admin01', '2022-03-12T16:47:40+08:00');
INSERT INTO `_file` VALUES (46, '1647075095866_138783', 'noticeImage', 'noticeImage.jpeg', '1647075095866_138783_noticeImage.jpeg', '/noticeImage/1647075095866_138783_noticeImage.jpeg', 'file', NULL, '188.42KB', 'jhInsert', 'admin01', 'admin01', '2022-03-12T16:51:35+08:00');
INSERT INTO `_file` VALUES (47, '1647075171782_692555', 'noticeImage', 'noticeImage.jpeg', '1647075171782_692555_noticeImage.jpeg', '/noticeImage/1647075171782_692555_noticeImage.jpeg', 'file', NULL, '188.42KB', 'jhInsert', 'admin01', 'admin01', '2022-03-12T16:52:51+08:00');
INSERT INTO `_file` VALUES (48, '1647075183810_584533', 'noticeImage', 'noticeImage.jpeg', '1647075183810_584533_noticeImage.jpeg', '/noticeImage/1647075183810_584533_noticeImage.jpeg', 'file', NULL, '188.42KB', 'jhInsert', 'admin01', 'admin01', '2022-03-12T16:53:03+08:00');
INSERT INTO `_file` VALUES (49, '1647075254516_131010', 'noticeImage', 'noticeImage.jpeg', '1647075254516_131010_noticeImage.jpeg', '/noticeImage/1647075254516_131010_noticeImage.jpeg', 'file', NULL, '188.42KB', 'jhInsert', 'admin01', 'admin01', '2022-03-12T16:54:14+08:00');
INSERT INTO `_file` VALUES (50, '1647076649263_719911', 'noticeImage', 'noticeImage.jpeg', '1647076649263_719911_noticeImage.jpeg', '/noticeImage/1647076649263_719911_noticeImage.jpeg', 'file', NULL, '188.42KB', 'jhInsert', 'admin01', 'admin01', '2022-03-12T17:17:29+08:00');
INSERT INTO `_file` VALUES (51, '1647081079233_117034', 'noticeImage', 'noticeImage.jpeg', '1647081079233_117034_noticeImage.jpeg', '/noticeImage/1647081079233_117034_noticeImage.jpeg', 'file', NULL, '188.42KB', 'jhInsert', 'admin01', 'admin01', '2022-03-12T18:31:19+08:00');
INSERT INTO `_file` VALUES (52, '1647081108914_142468', 'noticeImage', 'noticeImage.jpeg', '1647081108914_142468_noticeImage.jpeg', '/noticeImage/1647081108914_142468_noticeImage.jpeg', 'file', NULL, '188.42KB', 'jhInsert', 'admin01', 'admin01', '2022-03-12T18:31:48+08:00');
INSERT INTO `_file` VALUES (53, '1647081124110_142919', 'noticeImage', '函数.png', '1647081124110_142919_函数.png', '/noticeImage/1647081124110_142919_函数.png', 'file', NULL, '4.40KB', 'jhInsert', 'admin01', 'admin01', '2022-03-12T18:32:04+08:00');
INSERT INTO `_file` VALUES (54, '1647081128617_358066', 'noticeImage', '圣经.png', '1647081128617_358066_圣经.png', '/noticeImage/1647081128617_358066_圣经.png', 'file', NULL, '4.05KB', 'jhInsert', 'admin01', 'admin01', '2022-03-12T18:32:08+08:00');
INSERT INTO `_file` VALUES (55, '1647153521207_357253', 'userAvatar', '圣经.png', '1647153521207_357253_圣经.png', '/userAvatar/1647153521207_357253_圣经.png', 'file', NULL, '4.05KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T14:38:41+08:00');
INSERT INTO `_file` VALUES (56, '1647153533471_947719', 'userAvatar', '数据库.png', '1647153533471_947719_数据库.png', '/userAvatar/1647153533471_947719_数据库.png', 'file', NULL, '5.11KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T14:38:53+08:00');
INSERT INTO `_file` VALUES (57, '1647153546633_200990', 'userAvatar', 'colin.ico', '1647153546633_200990_colin.ico', '/userAvatar/1647153546633_200990_colin.ico', 'file', NULL, '23.06KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T14:39:06+08:00');
INSERT INTO `_file` VALUES (58, '1647154240737_677122', 'userAvatar', '圣经.png', '1647154240737_677122_圣经.png', '/userAvatar/1647154240737_677122_圣经.png', 'file', NULL, '4.05KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T14:50:40+08:00');
INSERT INTO `_file` VALUES (59, '1647154303624_513578', 'userAvatar', 'avatar.png', '1647154303624_513578_avatar.png', '/userAvatar/1647154303624_513578_avatar.png', 'file', NULL, '6.19KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T14:51:43+08:00');
INSERT INTO `_file` VALUES (60, '1647154343499_164583', 'userAvatar', '变量设置模板.png', '1647154343499_164583_变量设置模板.png', '/userAvatar/1647154343499_164583_变量设置模板.png', 'file', NULL, '8.53KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T14:52:23+08:00');
INSERT INTO `_file` VALUES (61, '1647154723477_889449', 'userAvatar', '学校.png', '1647154723477_889449_学校.png', '/userAvatar/1647154723477_889449_学校.png', 'file', NULL, '5.40KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T14:58:43+08:00');
INSERT INTO `_file` VALUES (62, '1647154770778_252828', 'userAvatar', '数据库.png', '1647154770778_252828_数据库.png', '/userAvatar/1647154770778_252828_数据库.png', 'file', NULL, '5.11KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T14:59:30+08:00');
INSERT INTO `_file` VALUES (63, '1647154826654_742377', 'userAvatar', 'duoxing.png', '1647154826654_742377_duoxing.png', '/userAvatar/1647154826654_742377_duoxing.png', 'file', NULL, '15.63KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T15:00:26+08:00');
INSERT INTO `_file` VALUES (64, '1647154834735_406538', 'userAvatar', 'musk-min.jpg', '1647154834735_406538_musk-min.jpg', '/userAvatar/1647154834735_406538_musk-min.jpg', 'file', NULL, '9.25KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T15:00:34+08:00');
INSERT INTO `_file` VALUES (65, '1647154848427_630817', 'userAvatar', 'task.png', '1647154848427_630817_task.png', '/userAvatar/1647154848427_630817_task.png', 'file', NULL, '3.85KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T15:00:48+08:00');
INSERT INTO `_file` VALUES (66, '1647159074029_847206', 'userAvatar', 'avatar.png', '1647159074029_847206_avatar.png', '/userAvatar/1647159074029_847206_avatar.png', 'file', NULL, '6.19KB', 'jhInsert', 'admin01', 'admin01', '2022-03-13T16:11:14+08:00');
INSERT INTO `_file` VALUES (67, '1647159083727_149514', 'userAvatar', '圣经.png', '1647159083727_149514_圣经.png', '/userAvatar/1647159083727_149514_圣经.png', 'file', NULL, '4.05KB', 'jhInsert', 'admin01', 'admin01', '2022-03-13T16:11:23+08:00');
INSERT INTO `_file` VALUES (68, '1647159099530_518648', 'userAvatar', 'm54j0qc54o5.jpeg', '1647159099530_518648_m54j0qc54o5.jpeg', '/userAvatar/1647159099530_518648_m54j0qc54o5.jpeg', 'file', NULL, '11.26KB', 'jhInsert', 'admin01', 'admin01', '2022-03-13T16:11:39+08:00');
INSERT INTO `_file` VALUES (69, '1647159119836_595331', 'userAvatar', 'm54j0qc54o5.jpeg', '1647159119836_595331_m54j0qc54o5.jpeg', '/userAvatar/1647159119836_595331_m54j0qc54o5.jpeg', 'file', NULL, '11.26KB', 'jhInsert', 'admin01', 'admin01', '2022-03-13T16:11:59+08:00');
INSERT INTO `_file` VALUES (70, '1647159215154_244316', 'userAvatar', 'duoxing.png', '1647159215154_244316_duoxing.png', '/userAvatar/1647159215154_244316_duoxing.png', 'file', NULL, '15.63KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:13:35+08:00');
INSERT INTO `_file` VALUES (71, '1647159405350_605667', 'userAvatar', '圣经.png', '1647159405350_605667_圣经.png', '/userAvatar/1647159405350_605667_圣经.png', 'file', NULL, '4.05KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:16:45+08:00');
INSERT INTO `_file` VALUES (72, '1647159426866_578442', 'G00001', 'recordFile_988589.mp3', '1647159426866_578442_recordFile_988589.mp3', '/G00001/1647159426866_578442_recordFile_988589.mp3', 'file', NULL, '416.04KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:17:06+08:00');
INSERT INTO `_file` VALUES (73, '1647159448292_418946', 'G00001', 'recordFile_891067.mp3', '1647159448292_418946_recordFile_891067.mp3', '/G00001/1647159448292_418946_recordFile_891067.mp3', 'file', NULL, '640.04KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:17:28+08:00');
INSERT INTO `_file` VALUES (74, '1647159906006_793759', 'G00001', 'recordFile_512163.mp3', '1647159906006_793759_recordFile_512163.mp3', '/G00001/1647159906006_793759_recordFile_512163.mp3', 'file', NULL, '208.04KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:25:06+08:00');
INSERT INTO `_file` VALUES (75, '1647159933360_200642', 'G00001', '圣经.png', '1647159933360_200642_圣经.png', '/G00001/1647159933360_200642_圣经.png', 'file', NULL, '4.05KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:25:33+08:00');
INSERT INTO `_file` VALUES (76, '1647159949407_965616', 'G00001', 'recordFile_701443.mp3', '1647159949407_965616_recordFile_701443.mp3', '/G00001/1647159949407_965616_recordFile_701443.mp3', 'file', NULL, '264.04KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:25:49+08:00');
INSERT INTO `_file` VALUES (77, '1647159976316_937207', 'G00001', '数据库.png', '1647159976316_937207_数据库.png', '/G00001/1647159976316_937207_数据库.png', 'file', NULL, '5.11KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:26:16+08:00');
INSERT INTO `_file` VALUES (78, '1647160046366_132601', 'G00001', '数据库.png', '1647160046366_132601_数据库.png', '/G00001/1647160046366_132601_数据库.png', 'file', NULL, '5.11KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:27:26+08:00');
INSERT INTO `_file` VALUES (79, '1647160078195_914686', 'G00001', '数据库.png', '1647160078195_914686_数据库.png', '/G00001/1647160078195_914686_数据库.png', 'file', NULL, '5.11KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:27:58+08:00');
INSERT INTO `_file` VALUES (80, '1647160273115_325469', 'G00001', 'duoxing.png', '1647160273115_325469_duoxing.png', '/G00001/1647160273115_325469_duoxing.png', 'file', NULL, '15.63KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:31:13+08:00');
INSERT INTO `_file` VALUES (81, '1647160363891_358452', 'G00001', '数据库.png', '1647160363891_358452_数据库.png', '/G00001/1647160363891_358452_数据库.png', 'file', NULL, '5.11KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:32:43+08:00');
INSERT INTO `_file` VALUES (82, '1647160391874_962827', 'G00001', 'duoxing.png', '1647160391874_962827_duoxing.png', '/G00001/1647160391874_962827_duoxing.png', 'file', NULL, '15.63KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:33:11+08:00');
INSERT INTO `_file` VALUES (83, '1647160419852_265859', 'G00001', 'colin.ico', '1647160419852_265859_colin.ico', '/G00001/1647160419852_265859_colin.ico', 'file', NULL, '23.06KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:33:39+08:00');
INSERT INTO `_file` VALUES (84, '1647160436308_527615', 'G00001', 'm54j0qc54o5.jpeg', '1647160436308_527615_m54j0qc54o5.jpeg', '/G00001/1647160436308_527615_m54j0qc54o5.jpeg', 'file', NULL, '11.26KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:33:56+08:00');
INSERT INTO `_file` VALUES (85, '1647160537622_367700', 'G00001', 'colin.ico', '1647160537622_367700_colin.ico', '/G00001/1647160537622_367700_colin.ico', 'file', NULL, '23.06KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:35:37+08:00');
INSERT INTO `_file` VALUES (86, '1647160553853_530946', 'G00001', 'm54j0qc54o5.jpeg', '1647160553853_530946_m54j0qc54o5.jpeg', '/G00001/1647160553853_530946_m54j0qc54o5.jpeg', 'file', NULL, '11.26KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:35:53+08:00');
INSERT INTO `_file` VALUES (87, '1647160588745_994225', 'G00001', '函数.png', '1647160588745_994225_函数.png', '/G00001/1647160588745_994225_函数.png', 'file', NULL, '4.40KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:36:28+08:00');
INSERT INTO `_file` VALUES (88, '1647160609226_318970', 'G00001', '学校.png', '1647160609226_318970_学校.png', '/G00001/1647160609226_318970_学校.png', 'file', NULL, '5.40KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:36:49+08:00');
INSERT INTO `_file` VALUES (89, '1647160651506_553732', 'G00001', '圣经.png', '1647160651506_553732_圣经.png', '/G00001/1647160651506_553732_圣经.png', 'file', NULL, '4.05KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:37:31+08:00');
INSERT INTO `_file` VALUES (90, '1647160910978_753825', 'G00001', 'recordFile_162495.mp3', '1647160910978_753825_recordFile_162495.mp3', '/G00001/1647160910978_753825_recordFile_162495.mp3', 'file', NULL, '296.04KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:41:50+08:00');
INSERT INTO `_file` VALUES (91, '1647160912171_971805', 'G00001', 'recordFile_390908.mp3', '1647160912171_971805_recordFile_390908.mp3', '/G00001/1647160912171_971805_recordFile_390908.mp3', 'file', NULL, '296.04KB', 'jhInsert', 'G00001', '洪七公', '2022-03-13T16:41:52+08:00');
INSERT INTO `_file` VALUES (92, '1647163546914_512891', 'admin01', 'recordFile_805749.mp3', '1647163546914_512891_recordFile_805749.mp3', '/admin/1647163546914_512891_recordFile_805749.mp3', 'file', NULL, '5.27KB', 'jhInsert', 'admin01', 'admin01', '2022-03-13T17:25:46+08:00');
INSERT INTO `_file` VALUES (93, '1647164146004_204624', 'W00001', 'recordFile_146053.mp3', '1647164146004_204624_recordFile_146053.mp3', '/W00001/1647164146004_204624_recordFile_146053.mp3', 'file', NULL, '176.04KB', 'jhInsert', 'W00001', '张三丰', '2022-03-13T17:35:46+08:00');
INSERT INTO `_file` VALUES (94, '1647164252398_279298', 'W00001', 'recordFile_685791.mp3', '1647164252398_279298_recordFile_685791.mp3', '/W00001/1647164252398_279298_recordFile_685791.mp3', 'file', NULL, '160.04KB', 'jhInsert', 'W00001', '张三丰', '2022-03-13T17:37:32+08:00');
INSERT INTO `_file` VALUES (95, '1647167226493_575482', 'W00001', 'recordFile_234520.mp3', '1647167226493_575482_recordFile_234520.mp3', '/W00001/1647167226493_575482_recordFile_234520.mp3', 'file', NULL, '328.04KB', 'jhInsert', 'W00001', '张三丰', '2022-03-13T18:27:06+08:00');
INSERT INTO `_file` VALUES (96, '1647167299463_982675', 'W00001', 'recordFile_911362.mp3', '1647167299463_982675_recordFile_911362.mp3', '/W00001/1647167299463_982675_recordFile_911362.mp3', 'file', NULL, '168.04KB', 'jhInsert', 'W00001', '张三丰', '2022-03-13T18:28:19+08:00');
INSERT INTO `_file` VALUES (97, '1647167383557_672686', 'W00001', 'recordFile_862034.mp3', '1647167383557_672686_recordFile_862034.mp3', '/W00001/1647167383557_672686_recordFile_862034.mp3', 'file', NULL, '224.04KB', 'jhInsert', 'W00001', '张三丰', '2022-03-13T18:29:43+08:00');
INSERT INTO `_file` VALUES (98, '1647167872469_949668', 'admin01', 'recordFile_650063.mp3', '1647167872469_949668_recordFile_650063.mp3', '/admin/1647167872469_949668_recordFile_650063.mp3', 'file', NULL, '5.14KB', 'jhInsert', 'admin01', 'admin01', '2022-03-13T18:37:52+08:00');
INSERT INTO `_file` VALUES (99, '1647168164570_656919', 'W00001', 'recordFile_534081.mp3', '1647168164570_656919_recordFile_534081.mp3', '/W00001/1647168164570_656919_recordFile_534081.mp3', 'file', NULL, '240.04KB', 'jhInsert', 'W00001', '张三丰', '2022-03-13T18:42:44+08:00');
INSERT INTO `_file` VALUES (100, '1647168337808_518536', 'admin01', 'IMG_34_205100.jpeg', '1647168337808_518536_IMG_34_205100.jpeg', '/admin/1647168337808_518536_IMG_34_205100.jpeg', 'file', NULL, '1.10KB', 'jhInsert', 'admin01', 'admin01', '2022-03-13T18:45:37+08:00');
INSERT INTO `_file` VALUES (101, '1647168390447_955201', 'admin01', 'image_picker_camera_a1398766-7bea-4b67-9107-9731916709fa.jpg', '1647168390447_955201_image_picker_camera_a1398766-7bea-4b67-9107-9731916709fa.jpg', '/admin/1647168390447_955201_image_picker_camera_a1398766-7bea-4b67-9107-9731916709fa.jpg', 'file', NULL, '816.61KB', 'jhInsert', 'admin01', 'admin01', '2022-03-13T18:46:30+08:00');
INSERT INTO `_file` VALUES (102, '1647174635974_473645', 'W00001', 'recordFile_613430.mp3', '1647174635974_473645_recordFile_613430.mp3', '/W00001/1647174635974_473645_recordFile_613430.mp3', 'file', NULL, '160.04KB', 'jhInsert', 'W00001', '张三丰', '2022-03-13T20:30:35+08:00');
INSERT INTO `_file` VALUES (103, '1647174663587_590718', 'W00001', '1.gif', '1647174663587_590718_1.gif', '/W00001/1647174663587_590718_1.gif', 'file', NULL, '359.65KB', 'jhInsert', 'W00001', '张三丰', '2022-03-13T20:31:03+08:00');
INSERT INTO `_file` VALUES (104, '1647174684507_913196', 'W00001', '1642409847352.jpg', '1647174684507_913196_1642409847352.jpg', '/W00001/1647174684507_913196_1642409847352.jpg', 'file', NULL, '1.10KB', 'jhInsert', 'W00001', '张三丰', '2022-03-13T20:31:24+08:00');
INSERT INTO `_file` VALUES (105, '1647174759589_421617', 'admin01', 'IMG_34_205100.jpeg', '1647174759589_421617_IMG_34_205100.jpeg', '/admin/1647174759589_421617_IMG_34_205100.jpeg', 'file', NULL, '1.10KB', 'jhInsert', 'admin01', 'admin01', '2022-03-13T20:32:39+08:00');
INSERT INTO `_file` VALUES (106, '1647174779034_352770', 'admin01', 'recordFile_357174.mp3', '1647174779034_352770_recordFile_357174.mp3', '/admin/1647174779034_352770_recordFile_357174.mp3', 'file', NULL, '5.14KB', 'jhInsert', 'admin01', 'admin01', '2022-03-13T20:32:59+08:00');
INSERT INTO `_file` VALUES (107, '1647174789485_674704', 'admin01', 'image_picker_camera_a1398766-7bea-4b67-9107-9731916709fa.jpg', '1647174789485_674704_image_picker_camera_a1398766-7bea-4b67-9107-9731916709fa.jpg', '/admin/1647174789485_674704_image_picker_camera_a1398766-7bea-4b67-9107-9731916709fa.jpg', 'file', NULL, '816.61KB', 'jhInsert', 'admin01', 'admin01', '2022-03-13T20:33:09+08:00');
INSERT INTO `_file` VALUES (108, '1647175603082_615238', 'admin01', 'image_picker_camera_a1398766-7bea-4b67-9107-9731916709fa.jpg', '1647175603082_615238_image_picker_camera_a1398766-7bea-4b67-9107-9731916709fa.jpg', '/admin/1647175603082_615238_image_picker_camera_a1398766-7bea-4b67-9107-9731916709fa.jpg', 'file', NULL, '816.61KB', 'jhInsert', 'admin01', 'admin01', '2022-03-13T20:46:43+08:00');
INSERT INTO `_file` VALUES (109, '1647177682138_271319', 'userAvatar', '函数.png', '1647177682138_271319_函数.png', '/userAvatar/1647177682138_271319_函数.png', 'file', NULL, '4.40KB', 'jhInsert', 'admin01', 'admin01', '2022-03-13T21:21:22+08:00');
INSERT INTO `_file` VALUES (110, '1647223677275_283492', 'W00001', 'image.png', '1647223677275_283492_image.png', '/W00001/1647223677275_283492_image.png', 'file', NULL, '103.98KB', 'jhInsert', 'W00001', '张三丰', '2022-03-14T10:07:57+08:00');
INSERT INTO `_file` VALUES (111, '1647223684461_389667', 'W00001', 'image.png', '1647223684461_389667_image.png', '/W00001/1647223684461_389667_image.png', 'file', NULL, '103.98KB', 'jhInsert', 'W00001', '张三丰', '2022-03-14T10:08:04+08:00');
INSERT INTO `_file` VALUES (112, '1647223696376_167863', 'W00001', 'image.png', '1647223696376_167863_image.png', '/W00001/1647223696376_167863_image.png', 'file', NULL, '103.98KB', 'jhInsert', 'W00001', '张三丰', '2022-03-14T10:08:16+08:00');
INSERT INTO `_file` VALUES (113, '1647255220359_365046', 'W00001', 'image.png', '1647255220359_365046_image.png', '/W00001/1647255220359_365046_image.png', 'file', NULL, '29.59KB', 'jhInsert', 'W00001', '张三丰', '2022-03-14T18:53:40+08:00');
INSERT INTO `_file` VALUES (114, '1647259979131_379900', 'W00001', 'image.png', '1647259979131_379900_image.png', '/W00001/1647259979131_379900_image.png', 'file', NULL, '122.04KB', 'jhInsert', 'W00001', '张三丰', '2022-03-14T20:12:59+08:00');
INSERT INTO `_file` VALUES (115, '1647259986945_473125', 'W00001', 'recordFile_863877.mp3', '1647259986945_473125_recordFile_863877.mp3', '/W00001/1647259986945_473125_recordFile_863877.mp3', 'file', NULL, '208.04KB', 'jhInsert', 'W00001', '张三丰', '2022-03-14T20:13:06+08:00');
INSERT INTO `_file` VALUES (116, '1647260000160_170523', 'W00001', '1642409847352.jpg', '1647260000160_170523_1642409847352.jpg', '/W00001/1647260000160_170523_1642409847352.jpg', 'file', NULL, '1.10KB', 'jhInsert', 'W00001', '张三丰', '2022-03-14T20:13:20+08:00');
INSERT INTO `_file` VALUES (117, '1647260004903_898972', 'W00001', '1642409847352.jpg', '1647260004903_898972_1642409847352.jpg', '/W00001/1647260004903_898972_1642409847352.jpg', 'file', NULL, '1.10KB', 'jhInsert', 'W00001', '张三丰', '2022-03-14T20:13:24+08:00');
INSERT INTO `_file` VALUES (118, '1651675944074_830752', 'admin01/2022/5/4/', '11.jpeg', '1651675944074_830752_11.jpeg', '/admin01/2022/5/4//1651675944074_830752_11.jpeg', NULL, NULL, '54.19KB', 'jhInsert', 'admin01', 'admin01', '2022-05-04T22:52:24+08:00');
INSERT INTO `_file` VALUES (119, '1651675951776_192376', 'admin01/2022/5/4/', '11.jpeg', '1651675951776_192376_11.jpeg', '/admin01/2022/5/4//1651675951776_192376_11.jpeg', NULL, NULL, '54.19KB', 'jhInsert', 'admin01', 'admin01', '2022-05-04T22:52:31+08:00');
INSERT INTO `_file` VALUES (120, '1651675959922_334893', 'admin01/2022/5/4/', '11.jpeg', '1651675959922_334893_11.jpeg', '/admin01/2022/5/4//1651675959922_334893_11.jpeg', NULL, NULL, '54.19KB', 'jhInsert', 'admin01', 'admin01', '2022-05-04T22:52:39+08:00');
INSERT INTO `_file` VALUES (121, '1651676170376_873134', 'admin01/2022/5/4/', 'PMBOK指南第6版-中文-new.pdf', '1651676170376_873134_PMBOK指南第6版-中文-new.pdf', '/admin01/2022/5/4//1651676170376_873134_PMBOK指南第6版-中文-new.pdf', NULL, NULL, '19.84MB', 'jhInsert', 'admin01', 'admin01', '2022-05-04T22:56:10+08:00');
INSERT INTO `_file` VALUES (122, '1651676241179_267645', 'admin01/2022/5/4/', '11 (1).jpeg', '1651676241179_267645_11 (1).jpeg', '/admin01/2022/5/4//1651676241179_267645_11 (1).jpeg', NULL, NULL, '54.19KB', 'jhInsert', 'admin01', 'admin01', '2022-05-04T22:57:21+08:00');
INSERT INTO `_file` VALUES (123, '1651676403188_701889', 'admin01/2022/5/4/', 'recordFile_224538.mp3', '1651676403188_701889_recordFile_224538.mp3', '/admin01/2022/5/4//1651676403188_701889_recordFile_224538.mp3', NULL, NULL, '232.04KB', 'jhInsert', 'admin01', 'admin01', '2022-05-04T23:00:03+08:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=4215 DEFAULT CHARSET=utf8mb4 COMMENT='数据历史表';

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
INSERT INTO `_resource` VALUES (334, NULL, NULL, 'user', 'resetPassword', '✅ 修改用户密码', 'service', '{}', '{ \"service\": \"user\", \"serviceFunction\": \"resetPassword\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` VALUES (351, NULL, NULL, 'chat', 'getUserInfo', '✅ 查询用户信息', 'sql', '{}', '{ \"table\": \"view01_user\", \"operation\": \"select\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:42:14+08:00');
INSERT INTO `_resource` VALUES (352, NULL, NULL, 'chat', 'getUserFriend', '✅ 查询好友列表', 'service', '{}', '{ \"service\": \"duoxingFriend\", \"serviceFunction\": \"getUserFriend\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:42:13+08:00');
INSERT INTO `_resource` VALUES (353, NULL, NULL, 'chat', 'getUserFriendRequest', '✅ 查询好友请求列表', 'service', '{}', '{ \"service\": \"duoxingFriend\", \"serviceFunction\": \"getUserFriendRequest\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:42:13+08:00');
INSERT INTO `_resource` VALUES (354, NULL, NULL, 'chat', 'addUserFriend', '✅ 添加好友', 'service', '{}', '{ \"service\": \"duoxingFriend\", \"serviceFunction\": \"addUserFriend\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:22:16+08:00');
INSERT INTO `_resource` VALUES (355, NULL, NULL, 'chat', 'acceptUserFriend', '✅ 同意好友申请', 'service', '{}', '{ \"service\": \"duoxingFriend\", \"serviceFunction\": \"acceptUserFriend\" }', '', '', 'update', NULL, NULL, '2022-03-10T21:35:41+08:00');
INSERT INTO `_resource` VALUES (356, NULL, NULL, 'chat', 'rejectUserFriend', '✅ 拒绝好友申请', 'service', '{}', '{ \"service\": \"duoxingFriend\", \"serviceFunction\": \"rejectUserFriend\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` VALUES (357, NULL, NULL, 'chat', 'delUserFriend', '✅ 删除好友', 'service', '{}', '{ \"service\": \"duoxingFriend\", \"serviceFunction\": \"delUserFriend\" }', '', '', 'update', NULL, NULL, '2022-03-10T22:30:54+08:00');
INSERT INTO `_resource` VALUES (358, NULL, '{ \"before\": [{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"groupOpeartionBeforeHook\" }], \"after\": [] }', 'chat', 'getGroupInfo', '✅ 获取群信息（群成员列表）', 'service', '{}', '{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"getGroupInfo\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:41:25+08:00');
INSERT INTO `_resource` VALUES (359, NULL, NULL, 'chat', 'createGroup', '✅ 创建群', 'service', '{}', '{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"createGroup\" }', '', '', 'update', NULL, NULL, '2022-03-09T22:51:01+08:00');
INSERT INTO `_resource` VALUES (360, NULL, '{ \"before\": [{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"groupOpeartionBeforeHook\" }], \"after\": [] }', 'chat', 'destroyGroup', '[需要指定groupId]✅ 删除群', 'service', '{}', '{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"destroyGroup\", \"isGroupIdRequired\": true }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` VALUES (361, NULL, '{ \"before\": [{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"groupOpeartionBeforeHook\" }], \"after\": [] }', 'chat', 'addGroupUser', '[需要指定groupId]✅ 邀请入群', 'service', '{}', '{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"addGroupUser\", \"isGroupIdRequired\": true }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` VALUES (362, NULL, '{ \"before\": [{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"groupOpeartionBeforeHook\" }], \"after\": [] }', 'chat', 'delGroupUser', '[需要指定groupId]✅ 删除群成员', 'service', '{}', '{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"delGroupUser\", \"isGroupIdRequired\": true}', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` VALUES (363, NULL, '{ \"before\": [{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"groupOpeartionBeforeHook\" }], \"after\": [] }', 'chat', 'setGroupInfo', '[需要指定groupId]✅ 设置群信息', 'service', '{}', '{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"setGroupInfo\", \"isGroupIdRequired\": true }', '', '', 'update', NULL, NULL, '2022-03-11T20:21:19+08:00');
INSERT INTO `_resource` VALUES (364, NULL, '{ \"before\": [{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"groupOpeartionBeforeHook\" }], \"after\": [] }', 'chat', 'setGroupUserRole', '[需要指定groupId]✅ 设置群成员角色', 'service', '{}', '{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"setGroupUserRole\", \"isGroupIdRequired\": true }', '', '', 'update', NULL, NULL, '2022-03-10T22:33:59+08:00');
INSERT INTO `_resource` VALUES (365, NULL, '{ \"before\": [{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"groupOpeartionBeforeHook\" }], \"after\": [] }', 'chat', 'transferGroup', '[需要指定groupId]✅ 移交群', 'service', '{}', '{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"transferGroup\", \"isGroupIdRequired\": true }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` VALUES (366, NULL, '{ \"before\": [{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"groupOpeartionBeforeHook\" }], \"after\": [] }', 'chat', 'quitGroup', '[需要指定groupId]✅ 退出群', 'service', '{}', '{ \"service\": \"duoxingGroup\", \"serviceFunction\": \"quitGroup\", \"isGroupIdRequired\": true }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` VALUES (367, NULL, NULL, 'chat', 'getChatSession', '✅ 会话列表', 'service', '{}', '{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"getChatSession\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:42:13+08:00');
INSERT INTO `_resource` VALUES (368, NULL, NULL, 'chat', 'getMessageHistory', '✅ 消息列表[往历史找]', 'service', '{}', '{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"getMessageHistory\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:42:15+08:00');
INSERT INTO `_resource` VALUES (369, NULL, NULL, 'chat', 'getMessageHistoryByMaxId', '✅ 消息列表[往最新找]', 'service', '{}', '{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"getMessageHistory\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` VALUES (370, NULL, NULL, 'chat', 'revokeMessage', '✅ 撤回消息', 'service', '{}', '{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"revokeMessage\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:07:46+08:00');
INSERT INTO `_resource` VALUES (371, NULL, NULL, 'chat', 'delMessageOffline', '✅ 删除离线消息', 'service', '{}', '{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"delMessageOffline\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:40:51+08:00');
INSERT INTO `_resource` VALUES (374, NULL, NULL, 'chat', 'toggleChatSession', '✅ 置顶会话', 'service', '{}', '{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"toggleChatSession\" }', '', '', 'update', NULL, NULL, '2022-03-11T21:57:48+08:00');
INSERT INTO `_resource` VALUES (375, NULL, NULL, 'chat', 'deleteChatSession', '✅ 删除会话', 'service', '{}', '{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"deleteChatSession\" }', '', '', 'update', NULL, NULL, '2022-03-10T20:57:28+08:00');
INSERT INTO `_resource` VALUES (376, NULL, NULL, 'chat', 'getXiaochengxuList', '✅查询小程序用户列表', 'sql', '{}', '{ \"table\": \"view01_user\", \"operation\": \"select\" }', '', '', 'update', NULL, NULL, '2022-03-10T20:57:28+08:00');
INSERT INTO `_resource` VALUES (501, NULL, '', 'socket', 'connect', '✅ socket 连接', 'service', '{}', '{ \"service\": \"duoxingSocket\", \"serviceFunction\": \"connect\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:35:05+08:00');
INSERT INTO `_resource` VALUES (502, NULL, NULL, 'socket', 'disconnect', '✅ socket 关闭连接', 'service', '{}', '{ \"service\": \"duoxingSocket\", \"serviceFunction\": \"disconnect\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` VALUES (503, NULL, NULL, 'socket', 'userSendMessageToUser', '✅ socket 发送一对一聊天信息', 'service', '{}', '{ \"service\": \"duoxingSocket\", \"serviceFunction\": \"userSendMessageToUser\" }', '', '', 'update', NULL, NULL, '2022-03-12T21:08:02+08:00');
INSERT INTO `_resource` VALUES (504, NULL, NULL, 'socket', 'userSendMessageToGroup', '✅ socket 发送群聊天信息', 'service', '{}', '{ \"service\": \"duoxingSocket\", \"serviceFunction\": \"userSendMessageToGroup\" }', '', '', 'update', NULL, NULL, '2022-03-12T20:28:15+08:00');
INSERT INTO `_resource` VALUES (506, NULL, NULL, 'socket', 'xiaochengxuExchange', '✅ 小程序交换消息', 'service', '{}', '{ \"service\": \"duoxingSocket\", \"serviceFunction\": \"xiaochengxuExchange\" }', '', '', 'update', NULL, NULL, '2022-03-12T20:28:15+08:00');
INSERT INTO `_resource` VALUES (601, NULL, NULL, 'external', 'getUserGroupRoleListByGroupIdList', '✅ 批量获取群组的 userGroupRole 列表', 'service', '{}', '{ \"service\": \"duoxingUser\", \"serviceFunction\": \"getUserGroupRoleListByGroupIdList\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` VALUES (602, NULL, NULL, 'external', 'getCggGroupList', '✅ 获取 cgg 类型的 group 列表', 'sql', '{}', '{ \"table\": \"_group\", \"operation\": \"select\", \"where\":{\"groupType\": \"\'cgg\'\" }}', '', '', 'insert', NULL, NULL, NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文件表; 软删除未启用;';

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
INSERT INTO `_ui` VALUES (122, 'index', 'ui', 'closeGroupDialog', '✅关闭右侧group弹框', NULL, '{\"main\": [{\"function\": \"close\", \"vueComponent\": \"rightPanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (123, 'index', 'ui', 'mobileShowChattingPage', '✅移动端展开聊天窗口', NULL, '{\"main\": [{\"function\": \"mobileShowChattingPage\", \"vueComponent\": \"root\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (124, 'index', 'ui', 'reFilterList', '✅过滤和排序列表', NULL, '{\"main\": [{\"function\": \"reFilterList\", \"vueComponent\": \"root\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (125, 'index', 'ui', 'atGroupUser', '✅艾特群用户', NULL, '{\"main\": [{\"function\": \"atGroupUser\", \"vueComponent\": \"root\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (126, 'index', 'ui', 'openFriendDialog', '✅打开朋友选择框', NULL, '{\"main\": [{\"function\": \"openFriendDialog\", \"vueComponent\": \"middlePanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
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
INSERT INTO `_ui` VALUES (144, 'index', 'ui', 'forwardSimple', '✅单条转发', NULL, '{\"main\": [{\"function\": \"forwardSimple\", \"vueComponent\": \"middlePanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (145, 'index', 'data', 'delMessageOffline', '✅消息已读', NULL, '{\"main\": [{\"function\": \"delMessageOffline\", \"vueComponent\": \"middlePanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (146, 'index', 'data', 'sendRevokeMsg', '✅发送撤回消息', NULL, '{\"main\": [{\"function\": \"sendRevokeMsg\", \"vueComponent\": \"middlePanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (147, 'index', 'data', 'reSendMsg', '✅重新发送消息', NULL, '{\"main\": [{\"function\": \"reSendMsg\", \"vueComponent\": \"middlePanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (148, 'index', 'ui', 'moreSel', '✅打开多选', NULL, '{\"main\": [{\"function\": \"moreSel\", \"vueComponent\": \"middlePanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (149, 'index', 'ui', 'preventDefault', '✅现代浏览器阻止默认事件', NULL, '{\"main\": [{\"function\": \"preventDefault\", \"vueComponent\": \"root\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (150, 'index', 'ui', 'voiceCall', '✅发起通话', NULL, '{\"main\": [{\"function\": \"voiceCall\", \"vueComponent\": \"middlePanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (151, 'index', 'ui', 'scrollToBottom', '✅消息栏划到最新消息处', NULL, '{\"main\": [{\"function\": \"scrollToBottom\", \"vueComponent\": \"chatSession\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (152, 'index', 'ui', 'selectForwardFriendClose', '✅消息转发好友选择框关闭回调', NULL, '{\"main\": [{\"function\": \"selectForwardFriendClose\", \"vueComponent\": \"middlePanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (153, 'index', 'ui', 'onSelectForwardFriend', '✅消息转发好友选择框选择完成回调', NULL, '{\"main\": [{\"function\": \"onSelectForwardFriend\", \"vueComponent\": \"middlePanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (154, 'index', 'ui', 'forwardSimple', '✅单条消息转发', NULL, '{\"main\": [{\"function\": \"forwardSimple\", \"vueComponent\": \"middlePanel\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (155, 'index', 'data', 'fileInputTap', '✅选择文件并发送', NULL, '{\"main\": [{\"function\": \"fileInputTap\", \"vueComponent\": \"chatInput\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (156, 'index', 'data', 'startRecordMethod', '✅PC开始录音', NULL, '{\"main\": [{\"function\": \"startRecordMethod\", \"vueComponent\": \"chatInput\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (157, 'index', 'ui', 'startTouch', '✅移动端开始录音', NULL, '{\"main\": [{\"function\": \"startTouch\", \"vueComponent\": \"chatInput\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (158, 'index', 'ui', 'touchMove', '✅移动端手指抬起时判断是否发送录音', NULL, '{\"main\": [{\"function\": \"touchMove\", \"vueComponent\": \"chatInput\"}]}', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_ui` VALUES (159, 'index', 'data', 'stopRecord', '✅移动端停止录音并发送音频文件', NULL, '{\"main\": [{\"function\": \"stopRecord\", \"vueComponent\": \"chatInput\"}]}', NULL, 'insert', NULL, NULL, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8mb4 COMMENT='用户session表; deviceId 维度;';

-- ----------------------------
-- Records of _user_session
-- ----------------------------
BEGIN;
INSERT INTO `_user_session` VALUES (295, 'admin01', '127.0.0.1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '127.0.0.1:7001_Mac.10.15.7_e2c9e008_chrome', 'web', 'online', '_tSzAJLwfuxEMXcxPlWJ-RLlI7Psc_zBtVTQ', 'update', 'admin01', 'admin01', '2022-05-04T22:59:52+08:00');
INSERT INTO `_user_session` VALUES (296, 'admin01', '127.0.0.1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5071.0 Safari/537.36', '127.0.0.1:7001_Mac.10.15.7_c0e979ad_chrome', 'web', 'online', 'hFMCOcDDBOX4dhUh-aP2PuT4uHO0JAbPBnF8', 'update', 'admin01', 'admin01', '2022-05-23T07:57:11+08:00');
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
INSERT INTO `duoxing_chat_session` VALUES (7559, 'W00001', 'user', 'admin01', 12771, '', 0, 17, 'update', 'admin01', 'admin01', '2022-05-04T23:00:04+08:00');
INSERT INTO `duoxing_chat_session` VALUES (7560, 'admin01', 'user', 'W00001', 12771, '2022-03-17T13:29:40+08:00', 0, 0, 'update', 'admin01', 'admin01', '2022-05-04T23:00:04+08:00');
INSERT INTO `duoxing_chat_session` VALUES (7561, 'W00002', 'user', 'admin01', 12756, '', 0, 15, 'update', 'admin01', 'admin01', '2022-05-04T20:57:28+08:00');
INSERT INTO `duoxing_chat_session` VALUES (7562, 'admin01', 'user', 'W00002', 12756, '', 1, 0, 'update', 'admin01', 'admin01', '2022-05-04T20:57:28+08:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=12772 DEFAULT CHARSET=utf8mb4 COMMENT='消息历史表; 软删除未启用;';

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
