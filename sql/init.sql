# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _cache
# ------------------------------------------------------------

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
) ENGINE = InnoDB COMMENT = '缓存表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 66 COMMENT = '常量表;';



INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'notice','object','','{\"title\":\"4.3.7 版本发布\",\"content\":\"快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n\",\"imageSrc\":\"/noticeImage/1657367701278_746510_image.png\",\"isImageShown\":true,\"isTextShown\":true}','update','admin01','admin01','2022-04-29T22:07:07+08:00');
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (59,'userStatus','array',NULL,'[{\"value\": \"active\", \"text\": \"正常\"}, {\"value\": \"banned\", \"text\": \"禁用\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (60,'userType','array',NULL,'[{\"value\": \"common\", \"text\": \"普通用户\"},{\"value\": \"xiaochengxu\", \"text\": \"小程序机器人\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (61,'gender','array',NULL,'[{\"value\": \"male\", \"text\": \"男\"}, {\"value\": \"female\", \"text\": \"女\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (62,'version','object',NULL,'{\"testUserIdList\": \"100004Q\",\"version\": \"4.3.11\", \"title\": \"4.3.7 版本发布\", \"note\": \"新版本介绍\\n 1. 聊天输入优化\", \"apkVersion\": \"5.0.20\", \"apkLink\": \"https://duoxing.openjianghu.org/duoxing/upload/10002/1647840662817_956853_D多星MD-4.7.10.apk\", \"apkNote\": \"\", \"desktopVersion\": \"4.3.2\", \"desktopLink\": \"http://192.168.110.215:8082/duoxing/upload/duoxing-1.0.1.dmg.zip\", \"desktopNote\": \"测试桌面客户端升级\" }','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (64,'emotion','array',NULL,'[\n  {\n    \"dir\":\"face01\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"png\",\n    \"cols\":5,\n    \"total\":86\n  },\n  {\n    \"dir\":\"face02\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face03\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face04\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face05\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":1,\n    \"total\":7\n  },\n  {\n    \"dir\":\"face06\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":24\n  },\n  {\n    \"dir\":\"face07\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face08\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":23\n  },\n  {\n    \"dir\":\"face09\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face10\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":20\n  },\n  {\n    \"dir\":\"face11\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":13\n  },\n  {\n    \"dir\":\"face12\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face13\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":15\n  },\n  {\n    \"dir\":\"face14\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  }\n]\n','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (65,'appLinkActionConfig','array',NULL,'[{\"regex\":\"www.baidu.com\\/*\", \"action\": \"internal\"},{\"regex\":\".openjianghu.org\\/*\", \"action\": \"internal\"}, {\"regex\":\"http:\\/\\/192.168.\\/*\", \"action\": \"internal\"}]','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_group`;
CREATE TABLE `_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` varchar(255) NOT NULL COMMENT 'groupId',
  `groupName` varchar(255) DEFAULT NULL COMMENT '群组名',
  `groupType` varchar(255) DEFAULT NULL COMMENT '群组类型; system, cgg,course',
  `groupDesc` varchar(255) DEFAULT NULL COMMENT '群组描述',
  `groupAvatar` varchar(255) DEFAULT NULL COMMENT '群logo',
  `groupExtend` text COMMENT '拓展字段; { groupNotice: ''xx'' }',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  UNIQUE KEY `groupId_index` (`groupId`) USING BTREE
) ENGINE = InnoDB COMMENT = '群组表;';






# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_page`;
CREATE TABLE `_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'pageId',
  `pageName` varchar(255) DEFAULT NULL COMMENT 'page name',
  `pageFile` varchar(255) DEFAULT NULL,
  `pageType` varchar(255) DEFAULT NULL COMMENT '页面类型; showInMenu, dynamicInMenu',
  `sort` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  `pageHook` text,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 53 COMMENT = '页面表;';



INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'xiaochengxu','小程序',NULL,'','','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'help','帮助','helpV4','dynamicInMenu','11','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'login','登陆','loginV4','','','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'manual','操作手册',NULL,'showInMenu','0','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (31,'index','聊天',NULL,'showInMenu','1','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (32,'userManagement','用户管理',NULL,'showInMenu','2','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (35,'noticeManagement','通知管理',NULL,'showInMenu','4','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (36,'recordHistoryManagement','数据历史',NULL,'showInMenu','5','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (37,'liveChat','语音聊天',NULL,'','','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (46,'friendManagement','好友管理',NULL,'showInMenu','2','update','vscode','vscode','2022-08-01T13:10:01+08:00');
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (48,'friendManagementOfOneUser','好友管理',NULL,'dynamicInMenu','2','jhInsert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (52,'roomNoticeManagement','房间通知',NULL,'showInMenu','3','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _record_history
# ------------------------------------------------------------

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
  KEY `index_table_action` (`table`, `operation`)
) ENGINE = InnoDB AUTO_INCREMENT = 45 COMMENT = '数据历史表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 505 COMMENT = '请求资源表; resourceId=`${appId}.${pageId}.${actionId}`';



INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (101,NULL,NULL,'allPage','getChunkInfo','✅ 文件分片下载-获取分片信息','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"getChunkInfo\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (102,NULL,NULL,'allPage','uploadFileDone','✅ 文件分片上传-所有分片上传完毕','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadFileDone\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (105,NULL,NULL,'allPage','httpUploadByStream','✅ 文件分片上传-http文件流','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByStream\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (106,NULL,NULL,'allPage','httpUploadByBase64','✅ 文件分片上传-http base64','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByBase64\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (107,NULL,NULL,'allPage','socketUploadByStream','✅ 文件分片上传-socket 文件流','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByBuffer\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (108,NULL,NULL,'allPage','socketUploadByBase64','✅ 文件分片上传-socket base64','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByBase64\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (112,NULL,NULL,'allPage','httpDownloadByBase64','✅ 文件分片下载-http base64','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"downloadFileChunkByBase64\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (113,NULL,NULL,'allPage','socketDownloadByStream','✅ 文件分片下载-socket文件流','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"downloadFileChunkByBuffer\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (114,NULL,NULL,'allPage','socketDownloadByBase64','✅ 文件分片下载-socket base64','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"downloadFileChunkByBase64\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (299,NULL,NULL,'login','passwordLogin','✅ 密码登录','service','{}','{ \"service\": \"user\", \"serviceFunction\": \"passwordLogin\" }','','','update',NULL,NULL,'2022-03-12T21:41:08+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (301,NULL,NULL,'allPage','getConstantList','✅ 获取全局常量','sql','{}','{ \"table\": \"_constant\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-03-12T21:42:43+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (302,NULL,NULL,'allPage','userInfo','✅ 用户信息','service','{}','{ \"service\": \"user\", \"serviceFunction\": \"userInfo\" }','','','update',NULL,NULL,'2022-03-05T21:44:23+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (303,NULL,NULL,'allPage','uploadByBase64','✅ 上传base64的文件','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadByBase64\" }','','','update',NULL,NULL,'2022-03-10T22:34:20+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (304,NULL,NULL,'allPage','uploadByStream','✅ 上传流文件','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadByStream\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (305,NULL,NULL,'allPage','logout','✅ 退出登录','service','{}','{ \"service\": \"user\", \"serviceFunction\": \"logout\" }','','','update',NULL,NULL,'2022-03-12T21:41:03+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (351,NULL,NULL,'chat','getUserInfo','✅ 查询用户信息','sql','{}','{ \"table\": \"view01_user\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-03-12T21:42:14+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (367,NULL,NULL,'chat','getChatSession','✅ 会话列表','service','{}','{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"getChatSession\" }','','','update',NULL,NULL,'2022-03-12T21:42:13+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (368,NULL,NULL,'chat','getMessageHistory','✅ 消息列表[往历史找]','service','{}','{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"getMessageHistory\" }','','','update',NULL,NULL,'2022-03-12T21:42:15+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (370,NULL,NULL,'chat','revokeMessage','✅ 撤回消息','service','{}','{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"revokeMessage\" }','','','update',NULL,NULL,'2022-03-12T21:07:46+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (371,NULL,NULL,'chat','delMessageOffline','✅ 删除离线消息','service','{}','{ \"service\": \"duoxingMessage\", \"serviceFunction\": \"delMessageOffline\" }','','','update',NULL,NULL,'2022-03-12T21:40:51+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (501,NULL,'','socket','connect','✅ socket 连接','service','{}','{ \"service\": \"duoxingSocket\", \"serviceFunction\": \"connect\" }','','','update',NULL,NULL,'2022-03-12T21:35:05+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (502,NULL,NULL,'socket','disconnect','✅ socket 关闭连接','service','{}','{ \"service\": \"duoxingSocket\", \"serviceFunction\": \"disconnect\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (503,NULL,NULL,'socket','userSendMessageToUser','✅ socket 发送一对一聊天信息','service','{}','{ \"service\": \"duoxingSocket\", \"serviceFunction\": \"userSendMessageToUser\" }','','','update',NULL,NULL,'2022-03-12T21:08:02+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (504,NULL,NULL,'socket','userSendMessageToRoom','✅ socket 发送群聊天信息','service','{}','{ \"service\": \"duoxingSocket\", \"serviceFunction\": \"userSendMessageToRoom\" }','','','update',NULL,NULL,'2022-03-12T20:28:15+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _role
# ------------------------------------------------------------

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `roleId_unique` (`roleId`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 COMMENT = '角色表;';



INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'admin','系统管理员',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'roomUser','群员','','insert',NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7,'roomAdmin','群管理员','','insert',NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8,'roomOwner','群主',NULL,'insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _test_case
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_test_case`;
CREATE TABLE `_test_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT '页面Id',
  `testId` varchar(255) DEFAULT NULL COMMENT '测试用例Id; 10000 ++',
  `testName` varchar(255) DEFAULT NULL COMMENT '测试用例名',
  `uiActionIdList` varchar(255) DEFAULT NULL COMMENT 'uiAction列表; 一个测试用例对应多个uiActionId',
  `testOpeartion` text COMMENT '测试用例步骤;',
  `expectedResult` text COMMENT '期望结果',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB COMMENT = '测试用例表';






# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _ui
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_ui`;
CREATE TABLE `_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `uiActionType` varchar(255) DEFAULT NULL COMMENT 'ui 动作类型，如：fetchData, postData, changeUi',
  `uiActionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `uiActionHook` text COMMENT '[{"service": "xx", "serviceFunction": "xxx"}]',
  `uiActionConfig` text COMMENT 'ui 动作数据',
  `appDataSchema` text COMMENT 'ui 校验数据',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 163 COMMENT = 'ui 施工方案';



INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'allPage','data','getConstantList','✅获取常量',NULL,'{\"main\": [{\"function\": \"getConstantList\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (100,'index','ui','disableSystemEvent','✅禁止系统菜单和文字选中\r\n',NULL,'{\"main\": [{\"function\": \"disableSystemEvent\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (101,'index','ui','setSyncStatusToSyncing','✅同步中',NULL,'{\"main\": [{\"function\": \"setSyncStatusToSyncing\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (103,'index','ui','initWebSocket','✅初始化socket\r\n',NULL,'{\"main\": [{\"function\": \"initWebSocket\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (104,'index','ui','getUserInfo','✅获取登录用户信息',NULL,'{\"main\": [{\"function\": \"getUserInfo\", \"vueComponent\": \"root\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (108,'index','ui','setSyncStatusToSuccess','✅同步成功',NULL,'{\"main\": [{\"function\": \"setSyncStatusToSuccess\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (119,'index','ui','onSocketReConnect','✅断线重连',NULL,'{\"main\": [{\"function\": \"onSocketReConnect\", \"vueComponent\": \"root\"}, {\"function\": \"onSocketReConnect\", \"vueComponent\": \"chatSession\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (124,'index','ui','reFilterList','✅过滤和排序列表',NULL,'{\"main\": [{\"function\": \"reFilterList\", \"vueComponent\": \"root\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (127,'index','data','sendMsg','✅socket 发送消息',NULL,'{\"main\": [{\"function\": \"sendMsg\", \"vueComponent\": \"root\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (128,'index','ui','onRoomMessage','✅接收群消息后回调',NULL,'{\"main\": [{\"function\": \"onRoomMessage\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (132,'index','ui','onUserMessage','✅接收到用户消息后回调',NULL,'{\"main\": [{\"function\": \"onUserMessage\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (133,'index','ui','onUserNotice','✅接收到用户通知后回调',NULL,'{\"main\": [{\"function\": \"onUserNotice\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (134,'index','ui','onRoomNotice','✅接收到群组通知后回调',NULL,'{\"main\": [{\"function\": \"onRoomNotice\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (137,'index','data','getChatSessionList','✅获取聊天列表',NULL,'{\"main\": [{\"function\": \"getChatSessionList\", \"vueComponent\": \"leftPanel\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (145,'index','data','delMessageOffline','✅消息已读',NULL,'{\"main\": [{\"function\": \"delMessageOffline\", \"vueComponent\": \"root\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (147,'index','data','startResendMsg','✅重新发送消息',NULL,'{\"main\": [{\"function\": \"startResendMsg\", \"vueComponent\": \"chatSession\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (149,'index','ui','preventDefault','✅现代浏览器阻止默认事件',NULL,'{\"main\": [{\"function\": \"preventDefault\", \"vueComponent\": \"root\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (151,'index','ui','scrollToBottom','✅消息栏划到最新消息处',NULL,'{\"main\": [{\"function\": \"scrollToBottom\", \"vueComponent\": \"chatSession\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (155,'index','data','fileInputTap','✅选择文件并发送',NULL,'{\"main\": [{\"function\": \"fileInputTap\", \"vueComponent\": \"chatInput\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (161,'index','data','updateChatListItem','✅合并单条信息',NULL,'{\"main\": [{\"function\": \"updateChatListItem\", \"vueComponent\": \"root\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionHook`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (162,'index','data','updateMessageItem','✅更新消息历史信息条',NULL,'{\"main\": [{\"function\": \"updateMessageItem\", \"vueComponent\": \"chatSession\"}]}',NULL,'insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user
# ------------------------------------------------------------

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
  UNIQUE KEY `userId_unique` (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 175 COMMENT = '用户表;';



INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'admin01','admin','/userAvatar/2022/7/25//1658720997550_948403_1656728684269.jpg','17177777001','male',NULL,'FX1',NULL,'123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin01','admin01','2022-07-25T11:51:56+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (140,'W00001','张三丰','/userAvatar/2022/6/27//1656334956472_274113_f1c3f8a15910632e38da00f55c3cb0c8.jpeg',NULL,'male',NULL,NULL,NULL,'123456','700635d1283f9ad169366b136dd40a44','bqsZEnr1BKa2','common','active',NULL,'jhUpdate','W00001','张三丰','2022-06-27T21:02:37+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (141,'W00002','张无忌','/userAvatar/2022/7/27//1658902715926_796666_桌面图片.jpeg',NULL,'male',NULL,'张无忌',NULL,'123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','W00002','张无忌','2022-07-27T14:18:36+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (142,'G00001','洪七公','/userAvatar/2022/5/5//1651763652139_807278_函数.png',NULL,'male',NULL,'-------dd',NULL,'123456','a3742afefe3dfccfca90d5ed0652464a','q1Ukk16Wh6lw','common','active',NULL,'jhUpdate','G00001','洪七公','2022-05-05T23:14:12+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (143,'G00002','郭靖','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (144,'H00001','岳不群','/userAvatar/default.jpg',NULL,'male','2022-03-03T00:00:00+08:00',NULL,NULL,'123456','ac96a1e461f0476a12cee572e9893093','yByNcDMxMm8W','common','active',NULL,'update','admin01','admin01','2022-03-03T23:05:53+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (145,'H00002','令狐冲','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','a5cd3a36d1ef78c49694166123a67e41','ry3dW5EfkRsf','common','active',NULL,'update',NULL,NULL,'2022-03-04T20:15:47+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (146,'G00003','汪剑通','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','d5447df63bb9f717c960735e25ee2367','VHjtoRKtOF7r','common','active',NULL,'jhUpdate','admin01','admin01','2022-03-12T21:52:02+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (147,'xiaochengxu01','小程序机器人1','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','975d94b7eab160df2be896e083319b01','b3RICHRFMkS2','xiaochengxu','active',NULL,'jhUpdate','admin01','admin01','2022-03-14T00:22:09+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (148,'xiaochengxu02','小程序机器人2','/userAvatar/default.jpg',NULL,'female',NULL,NULL,NULL,'123456','5412110ed754c9db480324ac41c480d2','bz2BjCYLOZaM','xiaochengxu','active',NULL,'jhUpdate','admin01','admin01','2022-03-14T21:37:54+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (149,'chatbot01','聊天机器人1','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','7148012f15076c1b5838ec316fce31ce','RtWnPBmXwbiY','xiaochengxu','active',NULL,'jhUpdate','admin01','admin01','2022-03-14T21:38:04+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (150,'chatbot02','聊天机器人2','/userAvatar/default.jpg',NULL,'female',NULL,NULL,NULL,'123456','7db4e2b637255a6de41c00aebd0287fc','CYhEeVPZzRhB','xiaochengxu','active',NULL,'jhUpdate','admin01','admin01','2022-03-14T21:37:59+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (151,'G00004','乔峰','/userAvatar/default.jpg',NULL,'male',NULL,'66666',NULL,'123456','7f0401c17c370d6ee63ca16b3773f4ea','VvQnEgMCPIBe','common','active',NULL,'jhUpdate','G00004D','乔峰','2022-03-14T15:46:30+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (152,'xiaochengxu-anning','小程序机器人-安宁','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','d13b116bd7c73a4bdb8f392cc94a3042','XUgKEJhfsY39','xiaochengxu','active',NULL,'jhInsert','admin01','admin01','2022-03-23T14:56:09+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (153,'xiaochengxu-yasa','小程序机器人-雅飒','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','f40cad43760d60ffbe16965a39dc59ad','VKxDm0uF1Ms3','xiaochengxu','active',NULL,'jhInsert','admin01','admin01','2022-03-23T14:56:38+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (154,'xiaochengxu -beibei','小程序机器人-贝贝','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','f37cd21cc6d4b5fb6c9cf2c57c4f4ee9','VIr9xfRHbA8B','xiaochengxu','active',NULL,'jhInsert','admin01','admin01','2022-03-23T14:57:10+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (155,'xiaochengxu-anqi','小程序机器人-安琪','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','ef6a0bc79b1b0e7ce5934e9dbf7a0ae7','WdUvUl5-29Pn','xiaochengxu','active',NULL,'jhInsert','admin01','admin01','2022-03-23T14:57:36+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (156,'xiaochengxu-duojia','小程序机器人-多加','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','3a8878add2a9a4cfd9e78628d025b377','WYxqdESfvOw0','xiaochengxu','active',NULL,'jhInsert','admin01','admin01','2022-03-23T14:58:15+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (157,'xiaochengxu-suni','小程序机器人-suni','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','bf900085eb900e3c7ec8830f358581f1','DNPifQAEeekD','xiaochengxu','active',NULL,'jhInsert','admin01','admin01','2022-03-23T14:58:42+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (159,'databot01','数据机器人01','/userAvatar/default.jpg',NULL,'male','2022-03-25T00:00:00+08:00',NULL,NULL,'123456','fea0d699e40fa71f9a321d8ea220b65f','bg8eglFN7Izr','xiaochengxu','active',NULL,'jhInsert','admin01','admin01','2022-03-25T20:44:57+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (160,'databot02','数据机器人02','/userAvatar/default.jpg',NULL,'male','2022-03-25T00:00:00+08:00','数据机器人02',NULL,'123456','3ec6de164601b39c8bb3ca7d03032641','TGsernfLqq0B','xiaochengxu','active',NULL,'jhInsert','admin01','admin01','2022-03-25T20:47:36+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (161,'test01','测试账号01','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','61c01377b9bcc5b5e7a507ed63c412b8','WVLzotXMqng4','common','active',NULL,'jhUpdate','admin01','admin01','2022-04-29T21:27:24+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (163,'s00001','test123','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'12345678','6793114cd8ab760ae200e2a7f70300a7','D0Qpqax-MkNc','common','active',NULL,'jhUpdate','admin01','admin01','2022-04-29T21:32:17+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (164,'xiaochengxu-shigong','事工信息','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','bc4e84358568193331e6545a95b52917','phMFCzSgA3Tx','common','active',NULL,'jhUpdate','admin01','admin01','2022-06-18T14:26:05+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (165,'xiaochengxu-shigong01','事工信息','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','36a4006a0451a2a172832921ee0956b2','HMOPApbJ9W42','xiaochengxu','active',NULL,'jhInsert','admin01','admin01','2022-06-18T14:28:57+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (167,'X00001','段誉',NULL,NULL,'male',NULL,NULL,NULL,'123456','36a4006a0451a2a172832921ee0956b2','HMOPApbJ9W42','common','active',NULL,'insert','admin01','admin01','2022-06-18T14:28:57+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (168,'X00002','赵敏',NULL,NULL,'male',NULL,NULL,NULL,'123456','36a4006a0451a2a172832921ee0956b2','HMOPApbJ9W42','common','active',NULL,'insert','admin01','admin01','2022-06-18T14:28:57+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (169,'md-doc-management','管理云盘','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','16a7d6d598cca5c4499004f1db23bbeb','3UgeECKzCABS','xiaochengxu','active',NULL,'jhInsert','admin01','admin01','2022-07-21T14:41:06+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (170,'md-meeting-minutes','会议记录','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','960373fba53eecfea5a9c97a3b8e915d','qEXbw2idCAom','xiaochengxu','active',NULL,'jhInsert','admin01','admin01','2022-07-21T14:41:33+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (171,'md-shepherd-xiaochengxu','牧养小程序','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','f1496c53ae2f5cabd26c42d3a6c746dd','2qQD-p1APxAi','xiaochengxu','active',NULL,'jhInsert','admin01','admin01','2022-07-23T14:41:51+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (172,'md-editor-course','文字事工','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','38d48b0a290de6e4f8b6c1af04d56735','mppLvOBqykzt','xiaochengxu','active',NULL,'jhInsert','admin01','admin01','2022-07-24T15:12:51+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (173,'A00001','周伯通','/userAvatar/default.jpg',NULL,'male',NULL,NULL,NULL,'123456','868cbb0921001f1ef8284803226578a3','pFSy2S2yPgb-','common','active',NULL,'jhUpdate','admin01','admin01','2022-08-05T16:48:26+08:00');
INSERT INTO `_user` (`id`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (174,'test0001','测试账号','/userAvatar/default.jpg',NULL,'female',NULL,NULL,NULL,'123456','06a3e2df225bb4cbd0e58f72fd50bf66','Xwrn3K3QJEJX','common','active',NULL,'jhInsert','admin01','admin01','2022-08-06T23:02:26+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------

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
) ENGINE = InnoDB COMMENT = '用户群组角色关联表;';






# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 COMMENT = '用户群组角色 - 页面 映射表;';



INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'*','public','*','login','allow','登陆页面; 开放所有用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'*','login','*','help,manual','allow','工具页; 开放给登陆用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'*','login','*','*','allow','所有页面; 开放给登陆用户;','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 COMMENT = '用户群组角色 - 请求资源 映射表;';



INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'*','public','*','login.passwordLogin','allow','登陆resource, 开放给所有用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'*','login','*','allPage.*','allow','工具类resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'*','login','*','*','allow','所有resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_session
# ------------------------------------------------------------

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
  UNIQUE KEY `userId_deviceId_index` (`userId`, `deviceId`) USING BTREE,
  KEY `userId_index` (`userId`),
  KEY `authToken_index` (`authToken`)
) ENGINE = InnoDB AUTO_INCREMENT = 21 COMMENT = '用户session表; deviceId 维度;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: duoxing_chat_session
# ------------------------------------------------------------

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
  UNIQUE KEY `_chat_session_chatId_type_userId_index` (`chatId`, `type`, `userId`),
  KEY `_userId_topChatOrder_lastMessageHistoryId_index` (`userId`, `topChatOrder`, `lastMessageHistoryId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8194 COMMENT = '聊天会话';



INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7688,'admin01','room','T9keFDCT5br7sIrjHC5GB',15174,'',0,0,'update','admin01','admin01','2022-05-29T14:52:21+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7689,'test01','room','T9keFDCT5br7sIrjHC5GB',15174,'',0,0,'update','admin01','admin01','2022-05-29T14:52:21+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7697,'admin01','room','beS8LsS2pMfHic-hNuGrD',21048,'',0,0,'update','admin01','admin01','2022-07-15T09:35:20+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7699,'G00001','room','beS8LsS2pMfHic-hNuGrD',21048,'',0,0,'update','G00001','洪七公','2022-09-20T15:10:06+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7700,'G00002','room','JcCVYjEqySIdMZxcy8O11',20133,'',0,0,'update','G00001','洪七公','2022-06-16T17:09:34+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7701,'G00001','room','JcCVYjEqySIdMZxcy8O11',20133,'',0,0,'update','G00001','洪七公','2022-06-16T17:09:34+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7702,'H00002','room','JcCVYjEqySIdMZxcy8O11',20133,'',0,0,'update','G00001','洪七公','2022-06-16T17:09:34+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7703,'G00003','room','A10EYIM6NKvCxsD4DU76O',21375,'2022-08-09T13:51:33+08:00',0,5,'update','G00002','郭靖','2022-08-27T22:14:22+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7704,'G00002','room','A10EYIM6NKvCxsD4DU76O',21375,'',1,0,'update','G00002','郭靖','2022-08-27T22:14:22+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7707,'G00002','room','9U_ww9I2TtgL4Fsi4whCz',20132,'',0,0,'update','G00001','洪七公','2022-06-16T17:09:34+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7708,'G00001','room','9U_ww9I2TtgL4Fsi4whCz',20132,'',0,0,'update','G00001','洪七公','2022-06-16T17:09:34+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7709,'G00001','room','osoZAVR8wfazAL39C8E7n',20139,'',0,0,'update','G00001','洪七公','2022-09-20T15:10:07+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7710,'G00003','room','osoZAVR8wfazAL39C8E7n',20139,'',0,0,'update','G00001','洪七公','2022-06-16T17:09:34+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7711,'G00001','room','vsUf6nL19V_LombZlLdLW',20136,'',0,0,'update','G00001','洪七公','2022-09-20T15:10:08+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7712,'G00003','room','vsUf6nL19V_LombZlLdLW',20136,'',0,0,'update','G00001','洪七公','2022-06-16T17:09:34+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7714,'G00001','room','EKhZoPqdaBGwWWqoPu40q',20135,'',0,0,'update','G00001','洪七公','2022-09-20T15:10:09+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7715,'G00003','room','EKhZoPqdaBGwWWqoPu40q',20135,'',0,0,'update','G00001','洪七公','2022-06-16T17:09:34+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7716,'G00003','room','R6JWlpYnDPdj1Q-ZoTFIw',20757,'',0,0,'update','G00001','洪七公','2022-06-16T17:39:38+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7717,'G00002','room','R6JWlpYnDPdj1Q-ZoTFIw',20757,'',1,0,'update','G00001','洪七公','2022-06-16T17:39:38+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7718,'G00001','room','R6JWlpYnDPdj1Q-ZoTFIw',20757,'',0,0,'update','G00001','洪七公','2022-09-20T15:10:07+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7719,'G00004','room','R6JWlpYnDPdj1Q-ZoTFIw',20757,'',0,0,'update','G00001','洪七公','2022-06-16T17:39:38+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7720,'H00001','room','R6JWlpYnDPdj1Q-ZoTFIw',20757,'',0,310,'update','G00001','洪七公','2022-06-16T17:39:38+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7731,'W00001','room','fTjJngxqfH2hm03Dr-E9i',21346,'',0,0,'update','admin01','admin01','2022-08-23T15:25:23+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7732,'admin01','room','fTjJngxqfH2hm03Dr-E9i',21346,'',0,0,'update','admin01','admin01','2022-08-23T15:25:23+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7733,'G00002','room','fTjJngxqfH2hm03Dr-E9i',21346,'',0,0,'update','admin01','admin01','2022-08-23T15:25:23+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7734,'G00001','room','fTjJngxqfH2hm03Dr-E9i',21346,'',0,0,'update','G00001','洪七公','2022-09-20T15:09:59+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7735,'W00001','room','3BCvVYkJbf-JVCMdTyfiX',21254,'',0,0,'update','W00001','张三丰','2022-08-01T23:17:25+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7736,'G00002','room','3BCvVYkJbf-JVCMdTyfiX',21254,'',0,0,'update','W00001','张三丰','2022-08-01T23:17:25+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7737,'G00001','room','3BCvVYkJbf-JVCMdTyfiX',21254,'',0,0,'update','G00001','洪七公','2022-09-20T15:10:00+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7738,'H00002','room','3BCvVYkJbf-JVCMdTyfiX',21254,'',0,2,'update','W00001','张三丰','2022-08-01T23:17:25+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7739,'xiaochengxu-shigong01','room','3BCvVYkJbf-JVCMdTyfiX',21254,'',0,2,'update','W00001','张三丰','2022-08-01T23:17:25+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7750,'test01','room','beS8LsS2pMfHic-hNuGrD',21048,'',0,2,'update','admin01','admin01','2022-07-15T09:35:19+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7753,'H00002','room','ox9Xdq9D-q8jPqSiwRyib',21487,'',0,5,'update','admin01','admin01','2022-09-10T09:18:24+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7754,'admin01','room','Xa47N0-CslZamRtfqgDjr',21050,'',0,0,'update','admin01','admin01','2022-07-15T13:58:15+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7755,'test01','room','Xa47N0-CslZamRtfqgDjr',21050,'',0,1,'update','admin01','admin01','2022-07-15T13:58:15+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7756,'H00002','room','Xa47N0-CslZamRtfqgDjr',21050,'',0,1,'update','admin01','admin01','2022-07-15T13:58:15+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7762,'H00002','room','Zh0Ipik1MUGmL9Isr37gO',21485,'',0,5,'update','admin01','admin01','2022-09-10T08:44:26+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7765,'H00002','room','ngDxHZTMWhXkIB6_NpOOJ',21482,'',0,35,'update','admin01','admin01','2022-09-10T00:07:30+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7766,'admin01','room','T3qv73PM83EGf_4Y2Darp',21553,'',0,0,'update','admin01','admin01','2022-09-13T16:30:49+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7767,'test01','room','T3qv73PM83EGf_4Y2Darp',21553,'',0,4,'update','admin01','admin01','2022-09-13T16:30:49+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7768,'H00002','room','T3qv73PM83EGf_4Y2Darp',21553,'',0,4,'update','admin01','admin01','2022-09-13T16:30:49+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7769,'admin01','room','xPa_ZbyNO3QOzM0NOJdHK',21055,'',0,0,'update','admin01','admin01','2022-07-15T14:02:00+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7770,'test01','room','xPa_ZbyNO3QOzM0NOJdHK',21055,'',0,1,'update','admin01','admin01','2022-07-15T14:02:00+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7771,'H00002','room','xPa_ZbyNO3QOzM0NOJdHK',21055,'',0,1,'update','admin01','admin01','2022-07-15T14:02:00+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7775,'W00001','room','SbqjwbcjtB1et65D-NWlT',21347,'',0,0,'update','admin01','admin01','2022-08-23T15:25:32+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7776,'admin01','room','SbqjwbcjtB1et65D-NWlT',21347,'',0,0,'update','admin01','admin01','2022-08-23T15:25:32+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7777,'G00002','room','SbqjwbcjtB1et65D-NWlT',21347,'',0,0,'update','admin01','admin01','2022-08-23T15:25:32+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7803,'W00001','room','JTsVo7ONh_2X21d3OTpFD',21582,'',0,0,'update','W00001','张三丰','2022-09-16T18:02:56+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7804,'W00002','room','JTsVo7ONh_2X21d3OTpFD',21582,'',0,8,'update','W00001','张三丰','2022-09-16T18:02:56+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7805,'H00002','room','JTsVo7ONh_2X21d3OTpFD',21582,'',0,8,'update','W00001','张三丰','2022-09-16T18:02:56+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7830,'G00002','user','G00003',21158,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7832,'G00003','user','H00001',20808,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7833,'G00003','user','G00004',21157,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7834,'G00003','user','G00002',21158,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7835,'G00004','user','G00003',21157,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7841,'H00002','user','H00001',20824,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7843,'md-doc-management','user','W00001',21241,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7844,'md-editor-course','user','W00001',21231,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7845,'md-meeting-minutes','user','W00001',21230,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7846,'md-shepherd-xiaochengxu','user','admin01',21112,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7847,'md-shepherd-xiaochengxu','user','W00001',21227,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7851,'W00001','user','xiaochengxu-shigong01',21229,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7853,'W00001','user','W00002',21228,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7855,'W00001','user','H00001',21226,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7856,'W00001','user','md-shepherd-xiaochengxu',21227,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7857,'W00001','user','md-meeting-minutes',21230,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7858,'W00001','user','md-editor-course',21231,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7859,'W00001','user','md-doc-management',21241,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7861,'W00002','user','W00001',21228,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7862,'xiaochengxu-shigong01','user','W00001',21229,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7863,'xiaochengxu-shigong01','user','admin01',21114,'',0,0,'insert',NULL,NULL,'2022-08-02T15:13:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7869,'H00001','user','H00002',20824,'',0,0,'insert',NULL,NULL,'2022-08-03T17:27:00+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7870,'admin01','user','xiaochengxu01',15069,'',0,0,'update','admin01','admin01','2022-09-28T15:18:38+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7872,'xiaochengxu01','user','admin01',15069,'',0,10,'update','admin01','admin01','2022-09-28T15:18:38+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7879,'G00004','room','A10EYIM6NKvCxsD4DU76O',21375,'2022-08-09T13:58:42+08:00',0,8,'update','G00002','郭靖','2022-08-27T22:14:22+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7880,'G00002','user','admin01',21625,'',0,14,'update','admin01','admin01','2022-09-19T12:02:22+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7881,'admin01','user','G00002',21625,'',0,0,'update','admin01','admin01','2022-09-19T12:02:22+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7891,'admin01','user','G00004',21533,'',0,0,'update','admin01','admin01','2022-09-12T10:21:36+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7892,'G00004','user','admin01',21533,'',0,1,'update','admin01','admin01','2022-09-12T10:21:36+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7893,'admin01','room','g7mx205cIyVTMMF5BmFHt',21426,'',0,0,'update','admin01','admin01','2022-09-09T20:29:14+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7894,'G00003','room','g7mx205cIyVTMMF5BmFHt',21426,'',0,14,'update','admin01','admin01','2022-09-09T20:29:13+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7895,'G00004','room','g7mx205cIyVTMMF5BmFHt',21426,'',0,14,'update','admin01','admin01','2022-09-09T20:29:13+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7896,'md-shepherd-xiaochengxu','room','g7mx205cIyVTMMF5BmFHt',21426,'',0,14,'update','admin01','admin01','2022-09-09T20:29:13+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7897,'W00001','room','g7mx205cIyVTMMF5BmFHt',21426,'',0,0,'update','admin01','admin01','2022-09-09T20:29:13+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7898,'W00002','room','g7mx205cIyVTMMF5BmFHt',21426,'',0,14,'update','admin01','admin01','2022-09-09T20:29:13+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7899,'xiaochengxu-shigong01','room','g7mx205cIyVTMMF5BmFHt',21426,'',0,13,'update','admin01','admin01','2022-09-09T20:29:13+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7900,'X00001','user','admin01',21547,'',0,24,'update','admin01','admin01','2022-09-13T16:07:48+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7901,'admin01','user','X00001',21547,'',0,0,'update','admin01','admin01','2022-09-13T16:07:48+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7907,'admin01','room','FN4pSJ4FG-usSIhXJ0KLE',21499,'',0,0,'update','admin01','admin01','2022-09-11T16:07:21+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7908,'X00001','room','FN4pSJ4FG-usSIhXJ0KLE',21499,'',0,1,'update','admin01','admin01','2022-09-11T16:07:21+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7909,'G00002','room','FN4pSJ4FG-usSIhXJ0KLE',21499,'',0,1,'update','admin01','admin01','2022-09-11T16:07:21+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7910,'admin01','room','-kZjP3ekbP9CbRNwEqj5d',21500,'',0,0,'update','admin01','admin01','2022-09-11T16:07:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7911,'G00002','room','-kZjP3ekbP9CbRNwEqj5d',21500,'',0,1,'update','admin01','admin01','2022-09-11T16:07:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7912,'X00001','room','-kZjP3ekbP9CbRNwEqj5d',21500,'',0,1,'update','admin01','admin01','2022-09-11T16:07:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7913,'admin01','room','9qgTdm6LFvekeMA4mrlcl',21512,'',0,0,'update','admin01','admin01','2022-09-11T17:54:05+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7914,'X00001','room','9qgTdm6LFvekeMA4mrlcl',21512,'',0,3,'update','admin01','admin01','2022-09-11T17:54:05+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7915,'G00002','room','9qgTdm6LFvekeMA4mrlcl',21512,'',0,0,'update','admin01','admin01','2022-09-11T17:54:05+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7917,'test01','room','ucruTVNJB1xu_A59wGQRq',21574,'',0,0,'insert',NULL,NULL,'2022-09-16T16:03:43+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7918,'W00001','room','ucruTVNJB1xu_A59wGQRq',21574,'',0,0,'insert',NULL,NULL,'2022-09-16T16:03:45+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7919,'admin01','room','6z5cFL7zrHTtwFpnVslQ0',21684,'',0,0,'update','admin01','admin01','2022-09-19T17:46:51+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7920,'W00001','room','6z5cFL7zrHTtwFpnVslQ0',21684,'',0,0,'update','W00001','张三丰','2022-09-19T17:46:48+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7926,'G00001','room','I5yWovN7o1SpCWr8ewPHb',21685,'',0,0,'update','G00001','洪七公','2022-09-20T15:09:54+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7927,'G00002','room','I5yWovN7o1SpCWr8ewPHb',21685,'',0,1,'update','G00001','洪七公','2022-09-20T15:09:54+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7928,'G00001','room','Pz4AinlOS5c0nhkZ5oIRi',21686,'',0,0,'update','G00001','洪七公','2022-09-20T15:10:14+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7929,'admin01','room','Pz4AinlOS5c0nhkZ5oIRi',21686,'',0,1,'update','G00001','洪七公','2022-09-20T15:10:14+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7930,'G00002','room','Pz4AinlOS5c0nhkZ5oIRi',21686,'',0,1,'update','G00001','洪七公','2022-09-20T15:10:14+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7931,'md-doc-management','room','Pz4AinlOS5c0nhkZ5oIRi',21686,'',0,1,'update','G00001','洪七公','2022-09-20T15:10:14+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7932,'G00001','room','pU-CipGNjSWg5FA_-sJOk',21687,'',0,0,'update','G00001','洪七公','2022-09-20T15:17:46+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7933,'admin01','room','pU-CipGNjSWg5FA_-sJOk',21687,'',0,1,'update','G00001','洪七公','2022-09-20T15:17:46+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7934,'G00002','room','pU-CipGNjSWg5FA_-sJOk',21687,'',0,1,'update','G00001','洪七公','2022-09-20T15:17:46+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7935,'G00001','room','1rQusByIeZoWDhOtKpwLE',21688,'',0,0,'update','G00001','洪七公','2022-09-20T15:18:02+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7936,'admin01','room','1rQusByIeZoWDhOtKpwLE',21688,'',0,1,'update','G00001','洪七公','2022-09-20T15:18:02+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7937,'G00002','room','1rQusByIeZoWDhOtKpwLE',21688,'',0,1,'update','G00001','洪七公','2022-09-20T15:18:02+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7938,'md-doc-management','room','1rQusByIeZoWDhOtKpwLE',21688,'',0,1,'update','G00001','洪七公','2022-09-20T15:18:02+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7939,'md-meeting-minutes','room','1rQusByIeZoWDhOtKpwLE',21688,'',0,1,'update','G00001','洪七公','2022-09-20T15:18:02+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7940,'G00001','room','OtbrD83D_hYBPpPQpS4OO',21689,'',0,0,'update','G00001','洪七公','2022-09-20T15:23:56+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7941,'G00002','room','OtbrD83D_hYBPpPQpS4OO',21689,'',0,1,'update','G00001','洪七公','2022-09-20T15:23:56+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7942,'md-meeting-minutes','room','OtbrD83D_hYBPpPQpS4OO',21689,'',0,1,'update','G00001','洪七公','2022-09-20T15:23:56+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7943,'G00001','room','11x-C_PQMswCkUH7CL2ur',21690,'',0,0,'update','G00001','洪七公','2022-09-20T15:38:06+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7944,'admin01','room','11x-C_PQMswCkUH7CL2ur',21690,'',0,0,'update','admin01','admin01','2022-09-23T16:28:45+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7945,'admin01','room','f90w1mnHMeZvqyPCYrKJg',21691,'',0,0,'update','admin01','admin01','2022-09-20T15:43:21+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7946,'X00001','room','f90w1mnHMeZvqyPCYrKJg',21691,'',0,1,'update','admin01','admin01','2022-09-20T15:43:21+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7947,'G00002','room','f90w1mnHMeZvqyPCYrKJg',21691,'',0,1,'update','admin01','admin01','2022-09-20T15:43:21+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7948,'G00001','room','f90w1mnHMeZvqyPCYrKJg',21691,'',0,0,'update','G00001','洪七公','2022-09-20T15:43:11+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7949,'G00001','room','XyUlYxBEGj2uDtsuXGT2k',21692,'',0,0,'update','G00001','洪七公','2022-09-20T15:43:06+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7950,'admin01','room','XyUlYxBEGj2uDtsuXGT2k',21692,'',0,1,'update','G00001','洪七公','2022-09-20T15:43:06+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7951,'G00002','room','XyUlYxBEGj2uDtsuXGT2k',21692,'',0,1,'update','G00001','洪七公','2022-09-20T15:43:06+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7952,'G00001','room','DQTpklHTqBUQmVeoaCME5',21694,'',0,0,'update','G00001','洪七公','2022-09-20T15:43:21+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7953,'admin01','room','DQTpklHTqBUQmVeoaCME5',21694,'',0,1,'update','G00001','洪七公','2022-09-20T15:43:21+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7954,'G00002','room','DQTpklHTqBUQmVeoaCME5',21694,'',0,1,'update','G00001','洪七公','2022-09-20T15:43:21+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7955,'admin01','room','V-RoL3hKNqP7tGzEkGT0G',21693,'',0,0,'update','admin01','admin01','2022-09-20T15:44:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7956,'X00001','room','V-RoL3hKNqP7tGzEkGT0G',21693,'',0,1,'update','admin01','admin01','2022-09-20T15:44:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7957,'G00002','room','V-RoL3hKNqP7tGzEkGT0G',21693,'',0,1,'update','admin01','admin01','2022-09-20T15:44:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7958,'G00001','room','V-RoL3hKNqP7tGzEkGT0G',21693,'',0,1,'update','admin01','admin01','2022-09-20T15:44:18+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7959,'G00001','room','hGl1hYjV_Lvo8RxnbNoBm',21695,'',0,0,'update','G00001','洪七公','2022-09-20T15:43:36+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7960,'G00003','room','hGl1hYjV_Lvo8RxnbNoBm',21695,'',0,1,'update','G00001','洪七公','2022-09-20T15:43:36+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7961,'G00001','room','NQEn_26FPwrsvVDRr82D5',21696,'',0,0,'update','G00001','洪七公','2022-09-20T15:44:29+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7962,'A00001','room','NQEn_26FPwrsvVDRr82D5',21696,'',0,1,'update','G00001','洪七公','2022-09-20T15:44:29+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7963,'G00001','room','s4q2MmOhMl5xRDvHOxm6y',21698,'',0,0,'update','G00001','洪七公','2022-09-20T15:45:17+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7964,'G00004','room','s4q2MmOhMl5xRDvHOxm6y',21698,'',0,1,'update','G00001','洪七公','2022-09-20T15:45:17+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7965,'admin01','room','bvAARUTGo7286cHfgCdKt',21697,'',0,0,'update','admin01','admin01','2022-09-20T15:46:14+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7966,'G00001','room','bvAARUTGo7286cHfgCdKt',21697,'',0,0,'update','G00001','洪七公','2022-09-20T15:46:00+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7967,'H00002','room','bvAARUTGo7286cHfgCdKt',21697,'',0,1,'update','admin01','admin01','2022-09-20T15:46:13+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7968,'admin01','room','GPcI3rdbegp43iIQSDKno',21699,'',0,0,'update','admin01','admin01','2022-09-20T15:46:53+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7969,'G00002','room','GPcI3rdbegp43iIQSDKno',21699,'',0,1,'update','admin01','admin01','2022-09-20T15:46:53+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7970,'G00001','room','GPcI3rdbegp43iIQSDKno',21699,'',0,1,'update','admin01','admin01','2022-09-20T15:46:53+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7971,'admin01','room','1H4KQnGmJYe5ZLSGmUt3a',21700,'',0,0,'update','admin01','admin01','2022-09-20T15:47:03+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7972,'G00003','room','1H4KQnGmJYe5ZLSGmUt3a',21700,'',0,1,'update','admin01','admin01','2022-09-20T15:47:03+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7973,'G00004','room','1H4KQnGmJYe5ZLSGmUt3a',21700,'',0,1,'update','admin01','admin01','2022-09-20T15:47:03+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7974,'admin01','room','f0FytsLMrI_mNgYywO1sg',21750,'',0,0,'update','admin01','admin01','2022-09-23T16:29:22+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7975,'H00002','room','f0FytsLMrI_mNgYywO1sg',21750,'',0,45,'update','admin01','admin01','2022-09-23T16:29:22+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7976,'G00004','room','f0FytsLMrI_mNgYywO1sg',21750,'',0,45,'update','admin01','admin01','2022-09-23T16:29:22+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7977,'G00003','room','f0FytsLMrI_mNgYywO1sg',21750,'',0,45,'update','admin01','admin01','2022-09-23T16:29:22+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7978,'W00002','room','XttUPrymYhYMjcE1hgOqs',21702,'',0,0,'update','W00002','张无忌','2022-09-20T15:50:52+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7979,'md-doc-management','room','XttUPrymYhYMjcE1hgOqs',21702,'',0,1,'update','W00002','张无忌','2022-09-20T15:50:52+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7980,'W00002','room','aM1AgAuUAXkkLRTPHqHqP',21703,'',0,0,'update','W00002','张无忌','2022-09-20T15:51:15+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7981,'A00001','room','aM1AgAuUAXkkLRTPHqHqP',21703,'',0,1,'update','W00002','张无忌','2022-09-20T15:51:15+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7982,'G00001','room','taMaUpyPOmBs8bYnjUNPn',21704,'',0,0,'update','G00001','洪七公','2022-09-20T15:51:56+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7983,'G00002','room','taMaUpyPOmBs8bYnjUNPn',21704,'',0,1,'update','G00001','洪七公','2022-09-20T15:51:56+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7984,'G00001','room','uJ8c1oysSQ-t5NV32ITJP',21705,'',0,0,'update','G00001','洪七公','2022-09-20T16:11:07+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7985,'md-doc-management','room','uJ8c1oysSQ-t5NV32ITJP',21705,'',0,1,'update','G00001','洪七公','2022-09-20T16:11:07+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7986,'G00001','room','hn6VKlarLHisz2AUFlQ8Z',21706,'',0,0,'update','G00001','洪七公','2022-09-20T16:11:13+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7987,'G00002','room','hn6VKlarLHisz2AUFlQ8Z',21706,'',0,1,'update','G00001','洪七公','2022-09-20T16:11:13+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7988,'md-meeting-minutes','room','hn6VKlarLHisz2AUFlQ8Z',21706,'',0,1,'update','G00001','洪七公','2022-09-20T16:11:13+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7989,'admin01','user','G00003',14060,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7991,'admin01','room','jd-_eJWCsaD90qKXcgzlH',14959,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7992,'admin01','room','wudang',14960,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7993,'admin01','room','DnY2orBMDexRFGqUFH2ty',14966,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7994,'admin01','room','Mz6t4hwgai_KmEd43OAHt',14978,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7995,'admin01','user','H00002',14993,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7996,'admin01','room','8CdYgl90D-Zz0OC6eA_Dk',14994,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7997,'admin01','room','Fgh0utkF8OQ3aEBC0upJL',15009,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7999,'admin01','room','zGCb1BOH0-b9S_UE9XYzl',15023,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8002,'chatbot01','room','DnY2orBMDexRFGqUFH2ty',14966,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8004,'chatbot02','room','DnY2orBMDexRFGqUFH2ty',14966,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8005,'G00001','user','G00002',14106,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8006,'G00001','user','W00001',15028,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8007,'G00001','room','gaibang',14958,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8008,'G00001','room','gBK5SDgE0ebEMWAgF2n9Y',14961,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8009,'G00001','room','Q07o3miNRKsBXrbCFFpaV',14962,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8010,'G00001','room','BJbrcnzn-MwG9KJ6taPZg',14963,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8011,'G00001','room','bhF6JQXgXUqwlkC1Pdl8J',14964,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8012,'G00001','room','NVVv8YlhskIX0QHimHMap',14968,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8013,'G00001','user','G00003',14992,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8014,'G00001','room','Fgh0utkF8OQ3aEBC0upJL',15009,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8016,'G00001','room','zGCb1BOH0-b9S_UE9XYzl',15023,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8018,'G00002','user','G00001',14106,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8019,'G00002','user','W00001',15045,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8020,'G00002','room','gaibang',14958,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8021,'G00002','room','wudang',14960,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8023,'G00002','room','zGCb1BOH0-b9S_UE9XYzl',15023,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8026,'G00003','user','admin01',14060,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8027,'G00003','room','gaibang',14958,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8028,'G00003','room','wudang',14960,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8029,'G00003','user','G00001',14992,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8030,'G00004','room','wudang',14960,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8031,'H00001','room','gaibang',14958,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8032,'H00001','room','jd-_eJWCsaD90qKXcgzlH',14959,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8034,'H00002','user','W00001',14956,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8035,'H00002','room','wudang',14960,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8036,'H00002','room','FsTa3bUxZId4MAdowDbxw',14965,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8037,'H00002','room','DnY2orBMDexRFGqUFH2ty',14966,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8038,'H00002','room','Mz6t4hwgai_KmEd43OAHt',14978,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8039,'H00002','user','admin01',14993,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8040,'H00002','room','8CdYgl90D-Zz0OC6eA_Dk',14994,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8041,'H00002','room','zGCb1BOH0-b9S_UE9XYzl',15023,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8042,'test01','room','wudang',14960,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8043,'W00001','user','G00002',15045,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8044,'W00001','user','G00001',15028,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8046,'W00001','user','H00002',14956,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8047,'W00001','room','gaibang',14958,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8048,'W00001','room','jd-_eJWCsaD90qKXcgzlH',14959,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8049,'W00001','room','wudang',14960,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8050,'W00001','room','gBK5SDgE0ebEMWAgF2n9Y',14961,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8051,'W00001','room','Q07o3miNRKsBXrbCFFpaV',14962,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8052,'W00001','room','BJbrcnzn-MwG9KJ6taPZg',14963,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8053,'W00001','room','bhF6JQXgXUqwlkC1Pdl8J',14964,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8054,'W00001','room','FsTa3bUxZId4MAdowDbxw',14965,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8055,'W00001','room','DnY2orBMDexRFGqUFH2ty',14966,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8056,'W00001','room','NVVv8YlhskIX0QHimHMap',14968,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8057,'W00001','room','Mz6t4hwgai_KmEd43OAHt',14978,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8058,'W00001','room','8CdYgl90D-Zz0OC6eA_Dk',14994,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8059,'W00001','room','Fgh0utkF8OQ3aEBC0upJL',15009,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8061,'W00001','room','zGCb1BOH0-b9S_UE9XYzl',15023,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8064,'W00002','room','wudang',14960,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8066,'xiaochengxu-shigong01','room','wudang',14960,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8067,'xiaochengxu01','room','gaibang',14958,'',0,0,'insert',NULL,NULL,'2022-09-26T09:57:37+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8068,'admin01','room','EHxAWffWvQtt2F6bvlURT',15079,'',0,0,'insert',NULL,NULL,'2022-10-01T09:42:52+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8069,'G00002','room','EHxAWffWvQtt2F6bvlURT',15079,'',0,0,'insert',NULL,NULL,'2022-10-01T09:42:52+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8070,'W00001','room','EHxAWffWvQtt2F6bvlURT',15079,'',0,0,'insert',NULL,NULL,'2022-10-01T09:42:52+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8089,'admin01','room','C1vDvXCgb4uAsoa1K8mPC',15107,'',0,0,'insert',NULL,NULL,'2022-10-01T14:32:52+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8092,'G00001','room','C1vDvXCgb4uAsoa1K8mPC',15107,'',0,0,'insert',NULL,NULL,'2022-10-01T14:32:52+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8094,'G00002','room','C1vDvXCgb4uAsoa1K8mPC',15107,'',0,0,'insert',NULL,NULL,'2022-10-01T14:32:52+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8096,'H00001','room','C1vDvXCgb4uAsoa1K8mPC',15107,'',0,0,'insert',NULL,NULL,'2022-10-01T14:32:52+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8097,'W00001','room','C1vDvXCgb4uAsoa1K8mPC',15107,'',0,0,'insert',NULL,NULL,'2022-10-01T14:32:52+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8184,'admin01','room','Ox8_A0FHhRAte_hVSMnBM',15181,'',0,0,'insert',NULL,NULL,'2022-10-04T09:28:35+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8185,'chatbot01','room','Ox8_A0FHhRAte_hVSMnBM',15181,'',0,0,'insert',NULL,NULL,'2022-10-04T09:28:35+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8186,'G00001','room','Ox8_A0FHhRAte_hVSMnBM',15181,'',0,0,'insert',NULL,NULL,'2022-10-04T09:28:35+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8187,'G00002','room','Ox8_A0FHhRAte_hVSMnBM',15181,'',0,0,'insert',NULL,NULL,'2022-10-04T09:28:35+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8188,'W00001','room','Ox8_A0FHhRAte_hVSMnBM',15181,'',0,0,'insert',NULL,NULL,'2022-10-04T09:28:35+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8189,'X00001','room','Ox8_A0FHhRAte_hVSMnBM',15181,'',0,0,'insert',NULL,NULL,'2022-10-04T09:28:35+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8190,'admin01','user','W00002',12836,'',0,0,'update','W00002','张无忌','2023-04-27T08:51:25+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8191,'admin01','user','W00001',12837,'',0,0,'update','W00001','张三丰','2023-04-27T08:52:10+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8192,'W00001','user','admin01',12837,'',0,0,'update','W00001','张三丰','2023-04-27T08:52:10+08:00');
INSERT INTO `duoxing_chat_session` (`id`,`userId`,`type`,`chatId`,`lastMessageHistoryId`,`topChatOrder`,`muted`,`unreadCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8193,'W00002','user','admin01',12836,'',0,0,'update','W00002','张无忌','2023-04-27T08:51:25+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: duoxing_message_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `duoxing_message_history`;
CREATE TABLE `duoxing_message_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `messageFingerprint` varchar(255) DEFAULT NULL COMMENT '消息指纹, 多个消息id对应一个指纹',
  `fromUserId` varchar(255) DEFAULT NULL COMMENT '消息发送方userId',
  `toUserId` varchar(255) DEFAULT NULL COMMENT '接收方userId',
  `toRoomId` varchar(255) DEFAULT NULL COMMENT '接收方roomId',
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
  KEY `toGroupId_index` (`toRoomId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12838 COMMENT = '消息历史表; 软删除未启用;';



INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12730,'0prX1Nl60ywzGvWN7q9ou','admin01','W00001',NULL,'user',NULL,'1','text','2022-03-17T11:55:45+08:00','active','insert','admin01','admin01','2022-03-17T11:55:45+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12731,'mdRXGA7lUaopyXtgdhY9A','admin01','W00002',NULL,'user',NULL,'1','text','2022-03-17T11:55:49+08:00','active','insert','admin01','admin01','2022-03-17T11:55:49+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12732,'HDB642IDZYI_9nbjY_QKt','admin01','W00002',NULL,'user',NULL,'2','text','2022-03-17T11:55:59+08:00','active','insert','admin01','admin01','2022-03-17T11:55:59+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12733,'XeeXxiXggxeJZn48T0aDT','admin01','W00001',NULL,'user',NULL,'123','text','2022-03-17T12:02:08+08:00','active','insert','admin01','admin01','2022-03-17T12:02:08+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12734,'uq9oywQF0-dIKdu4df2cR','admin01','W00002',NULL,'user',NULL,'123','text','2022-03-17T12:02:17+08:00','active','insert','admin01','admin01','2022-03-17T12:02:17+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12735,'gxNhR_8P09ZaE1dgTHJfZ','admin01','W00002',NULL,'user',NULL,'123','text','2022-03-17T12:10:55+08:00','active','insert','admin01','admin01','2022-03-17T12:10:55+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12736,'N-B6GrijWGMLLOjudOy8H','admin01','W00002',NULL,'user',NULL,'2222','text','2022-03-17T12:10:58+08:00','active','insert','admin01','admin01','2022-03-17T12:10:58+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12737,'Aei6tgnRCJLfbld8mlPWC','admin01','W00002',NULL,'user',NULL,'1234','text','2022-03-17T12:12:50+08:00','active','insert','admin01','admin01','2022-03-17T12:12:50+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12738,'zG4hVgfn_0YBbwgvs3WT3','admin01','W00002',NULL,'user',NULL,'22222','text','2022-03-17T12:13:54+08:00','revoke','update','admin01','admin01','2022-03-17T12:19:30+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12739,'dZRgsgllmYi5cbTCkMNzk','admin01','W00002',NULL,'user',NULL,'123123111','text','2022-03-17T12:16:47+08:00','revoke','update','admin01','admin01','2022-03-17T12:19:39+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12740,'5F4yxW84FmGycVTrIEZT2','admin01','W00002',NULL,'user',NULL,'vvvvvvv','text','2022-03-17T12:17:45+08:00','revoke','update','admin01','admin01','2022-03-17T12:17:54+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12741,'2lWYiUcJWdDmjXAhjTjgI','admin01','W00002',NULL,'user',NULL,'安师大发生的发','text','2022-03-17T12:18:33+08:00','revoke','update','admin01','admin01','2022-03-17T12:19:21+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12742,'6JGe0SO-cGN9RETv5atuC','admin01','W00002',NULL,'user',NULL,'阿斯顿发生的发生的发烧','text','2022-03-17T12:19:35+08:00','active','insert','admin01','admin01','2022-03-17T12:19:35+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12743,'kxQVFyYLsAjxOrjf8tB2d','admin01','W00002',NULL,'user',NULL,'123333','text','2022-03-17T13:27:22+08:00','active','insert','admin01','admin01','2022-03-17T13:27:22+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12744,'Z9to7f-mPWzgQTFmjJQmg','admin01','W00002',NULL,'user',NULL,'123123123','text','2022-03-17T13:28:08+08:00','active','insert','admin01','admin01','2022-03-17T13:28:08+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12745,'t2vNEEaWaZhxy81KcCUhz','admin01','W00002',NULL,'user',NULL,'123123123123','text','2022-03-17T13:28:32+08:00','active','insert','admin01','admin01','2022-03-17T13:28:33+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12746,'HCglPwJnrho778CPE8TTw','G00001',NULL,'JcCVYjEqySIdMZxcy8O11','group',NULL,'111','text','2022-03-17T13:55:10+08:00','active','insert','G00001','洪七公','2022-03-17T13:55:10+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12747,'QPl4YqgJGuj2uUCVrShx_','G00001',NULL,'JcCVYjEqySIdMZxcy8O11','group',NULL,'111','text','2022-03-17T13:59:20+08:00','active','insert','G00001','洪七公','2022-03-17T13:59:20+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12748,'T7gvO8qJDXvTYdjatOkv0','G00001',NULL,'JcCVYjEqySIdMZxcy8O11','group',NULL,'33','text','2022-03-17T13:59:23+08:00','active','insert','G00001','洪七公','2022-03-17T13:59:23+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12753,'wcND1_VB2m25h6xlRwveh','admin01',NULL,'C1vDvXCgb4uAsoa1K8mPC','group',NULL,'1','text','2022-03-17T21:39:20+08:00','active','insert','admin01','admin01','2022-03-17T21:39:21+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12754,'EHZnkMGMMTioKXzySAdAz','admin01','W00001',NULL,'user',NULL,'1111','text','2022-04-27T21:15:43+08:00','active','insert','admin01','admin01','2022-04-27T21:15:43+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12755,'eQwA7_zKu-rvAon4Pg_2r','admin01','W00001',NULL,'user',NULL,'333','text','2022-04-27T21:15:44+08:00','active','insert','admin01','admin01','2022-04-27T21:15:44+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12756,'_GmwT5Zta4ivwEQ2L18xz','admin01','W00002',NULL,'user',NULL,'安师大发生的发','text','2022-05-04T20:57:28+08:00','active','insert','admin01','admin01','2022-05-04T20:57:28+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12757,'dQMafXhW-JQi1a6wazLdG','admin01','W00001',NULL,'user',NULL,'12341234','text','2022-05-04T22:29:31+08:00','active','insert','admin01','admin01','2022-05-04T22:29:31+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12758,'KsYaI7xO3jZJIYh0g2hxX','admin01','W00001',NULL,'user',NULL,'@1234','text','2022-05-04T22:32:59+08:00','active','insert','admin01','admin01','2022-05-04T22:32:59+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12759,'KHu31ADZYh91p4_gdr_L4','admin01','W00001',NULL,'user',NULL,'test','text','2022-05-04T22:33:29+08:00','active','insert','admin01','admin01','2022-05-04T22:33:29+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12760,'QyVVNupndJxY_Woe5aTxR','admin01','W00001',NULL,'user',NULL,'12341234','text','2022-05-04T22:33:33+08:00','active','insert','admin01','admin01','2022-05-04T22:33:33+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12761,'6DFliOV02O0lTMOU0dTbj','admin01','W00001',NULL,'user',NULL,'1234','text','2022-05-04T22:38:25+08:00','active','insert','admin01','admin01','2022-05-04T22:38:26+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12762,'a7MLxMYnBkEJ5InaWKMqP','admin01','W00001',NULL,'user',NULL,'1234','text','2022-05-04T22:38:31+08:00','active','insert','admin01','admin01','2022-05-04T22:38:31+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12763,'rlJsE5nAHXnZ86GJ1dOZp','admin01','W00001',NULL,'user',NULL,'1234','text','2022-05-04T22:40:08+08:00','active','insert','admin01','admin01','2022-05-04T22:40:08+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12764,'AUa8_xY_9Uh_dFq9J770I','admin01','W00001',NULL,'user',NULL,'1234','text','2022-05-04T22:44:01+08:00','active','insert','admin01','admin01','2022-05-04T22:44:01+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12765,'WLot1JM9qEPj1UCauN4SP','admin01','W00001',NULL,'user',NULL,'1234','text','2022-05-04T22:48:10+08:00','active','insert','admin01','admin01','2022-05-04T22:48:10+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12766,'UzzOVhlmUKlh5s9iOdQEL','admin01','W00001',NULL,'user',NULL,'{\"filename\":\"11.jpeg\",\"downloadPath\":\"/admin01/2022/5/4//1651675951776_192376_11.jpeg\",\"binarySize\":\"54.19KB\"}','image','2022-05-04T22:52:32+08:00','active','insert','admin01','admin01','2022-05-04T22:52:32+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12767,'tEsvIAGnS688tW-rfOhnz','admin01','W00001',NULL,'user',NULL,'{\"filename\":\"11.jpeg\",\"downloadPath\":\"/admin01/2022/5/4//1651675959922_334893_11.jpeg\",\"binarySize\":\"54.19KB\"}','file','2022-05-04T22:52:40+08:00','active','insert','admin01','admin01','2022-05-04T22:52:40+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12768,'Q16bIHkrwmLQPdEKyB9X5','admin01','W00001',NULL,'user',NULL,'{\"filename\":\"PMBOK指南第6版-中文-new.pdf\",\"downloadPath\":\"/admin01/2022/5/4//1651676170376_873134_PMBOK指南第6版-中文-new.pdf\",\"binarySize\":\"19.84MB\"}','file','2022-05-04T22:56:11+08:00','active','insert','admin01','admin01','2022-05-04T22:56:11+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12769,'lOcdrWZVIb9fDgacJoy1z','admin01','W00001',NULL,'user',NULL,'{\"filename\":\"11 (1).jpeg\",\"downloadPath\":\"/admin01/2022/5/4//1651676241179_267645_11 (1).jpeg\",\"binarySize\":\"54.19KB\"}','image','2022-05-04T22:57:21+08:00','active','insert','admin01','admin01','2022-05-04T22:57:21+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12770,'xYY3UPYxofzHacGxRJTnD','admin01','W00001',NULL,'user',NULL,'[emoji_face01_25.png]','text','2022-05-04T22:57:33+08:00','active','insert','admin01','admin01','2022-05-04T22:57:33+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12771,'CiTr0V3YRj5K_cZmh4e60','admin01','W00001',NULL,'user',NULL,'{\"filename\":\"recordFile_224538.mp3\",\"downloadPath\":\"/admin01/2022/5/4//1651676403188_701889_recordFile_224538.mp3\",\"binarySize\":\"232.04KB\"}','audio','2022-05-04T23:00:03+08:00','active','insert','admin01','admin01','2022-05-04T23:00:03+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12772,'cMM19o6vF11XcZgr4vGT9','admin01','W00001',NULL,'user',NULL,'1234','text','2022-08-08T21:09:14+08:00','active','insert','admin01','admin01','2022-08-08T21:09:14+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12773,'fhUqhBCDZca0yXaDF9p2E','admin01','W00001',NULL,'user',NULL,'1234','text','2022-08-08T21:09:20+08:00','active','insert','admin01','admin01','2022-08-08T21:09:20+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12774,'QrDkONXugufYAbzZFU5BE','admin01','W00001',NULL,'user',NULL,'{\"downloadPath\":\"/emotion/face04/6.gif\"}','image','2022-08-08T21:09:27+08:00','active','insert','admin01','admin01','2022-08-08T21:09:27+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12775,'mwZ-D4nC6o4FnkXf5Nj7_','admin01','W00001',NULL,'user',NULL,'{\"downloadPath\":\"/emotion/face07/6.gif\"}','image','2022-08-08T21:09:36+08:00','active','insert','admin01','admin01','2022-08-08T21:09:36+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12776,'RNN-ZicybusAzcBSpyvXK','admin01','W00001',NULL,'user',NULL,'[/emotion/face04/6.gif,,,image] \n------------------------\n Re @admin01: ','text','2022-08-09T22:00:47+08:00','active','insert','admin01','admin01','2022-08-09T22:00:47+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12777,'UupSH6qasa1pgi99nelKv','admin01','W00001',NULL,'user',NULL,'@!','text','2022-08-09T22:03:56+08:00','active','insert','admin01','admin01','2022-08-09T22:03:56+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12778,'5larS-vi7Bq8-m0FQjmp-','admin01','W00001',NULL,'user',NULL,'{\"filename\":\"recordFile_904032.mp3\",\"downloadPath\":\"/admin01/2022/8/9//1660054309353_163847_recordFile_904032.mp3\",\"binarySize\":\"184.04KB\"}','audio','2022-08-09T22:11:49+08:00','active','insert','admin01','admin01','2022-08-09T22:11:49+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12779,'esPkwVqQOid7DEaZxXJ1N','admin01','W00001',NULL,'user',NULL,'{\"filename\":\"recordFile_851044.mp3\",\"downloadPath\":\"/admin01/2022/8/9//1660054317484_616526_recordFile_851044.mp3\",\"binarySize\":\"320.04KB\"}','audio','2022-08-09T22:11:57+08:00','active','insert','admin01','admin01','2022-08-09T22:11:57+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12780,'aGluEvrn3lMpTfP_g-9Xc','admin01','W00001',NULL,'user',NULL,'{\"filename\":\"recordFile_202319.mp3\",\"downloadPath\":\"/admin01/2022/8/9//1660054360879_998646_recordFile_202319.mp3\",\"binarySize\":\"288.04KB\"}','audio','2022-08-09T22:12:41+08:00','active','insert','admin01','admin01','2022-08-09T22:12:41+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12781,'aqCQV6syeTcOSCh2080dj','admin01','W00001',NULL,'user',NULL,'{\"filename\":\"WechatIMG5.jpeg\",\"downloadPath\":\"/admin01/2022/8/9//1660054473637_103978_WechatIMG5.jpeg\",\"binarySize\":\"279.83KB\"}','image','2022-08-09T22:14:33+08:00','active','insert','admin01','admin01','2022-08-09T22:14:33+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12782,'61SI-CRlSijd6VjbSw2iJ','admin01','W00001',NULL,'user',NULL,'[emoji_face01_26.png]','text','2022-08-09T22:14:41+08:00','active','insert','admin01','admin01','2022-08-09T22:14:41+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12783,'BOQlSZ_3RtchNUqzTcgrZ','admin01','W00001',NULL,'user',NULL,'{\"filename\":\"xiaochengxu.zip\",\"downloadPath\":\"/admin01/2022/8/9//1660055539825_424581_xiaochengxu.zip\",\"binarySize\":\"314.93KB\"}','file','2022-08-09T22:32:20+08:00','active','insert','admin01','admin01','2022-08-09T22:32:20+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12784,'3t5YYSFesjmxN3oPnMiaa','admin01','W00001',NULL,'user',NULL,'123','text','2022-08-09T22:39:11+08:00','active','insert','admin01','admin01','2022-08-09T22:39:11+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12785,'51ok1KKgJxd5m6DngrlC1','admin01','W00002',NULL,'user',NULL,'345','text','2022-08-09T22:47:11+08:00','active','insert','admin01','admin01','2022-08-09T22:47:11+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12786,'RPIfBA6k5OLROvugw1N_Q','admin01','W00001',NULL,'user',NULL,'1234','text','2022-08-09T22:53:02+08:00','active','insert','admin01','admin01','2022-08-09T22:53:02+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12787,'dnCL6lDbnQ9Wb5o204xM8','admin01','W00001',NULL,'user',NULL,'aaa','text','2022-08-09T22:56:37+08:00','active','insert','admin01','admin01','2022-08-09T22:56:37+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12788,'rCDj_9JS4idxivSu6zEHo','admin01','W00001',NULL,'user',NULL,'{\"filename\":\"WechatIMG5.jpeg\",\"downloadPath\":\"/admin01/2022/8/9//1660057003983_131840_WechatIMG5.jpeg\",\"binarySize\":\"279.83KB\"}','image','2022-08-09T22:56:44+08:00','active','insert','admin01','admin01','2022-08-09T22:56:44+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12789,'MlOrD-DfQXxyyKPuzX5qJ','admin01','W00001',NULL,'user',NULL,'111','text','2022-10-19T14:24:15+08:00','active','insert','admin01','admin01','2022-10-19T14:24:15+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12790,'gZ-egDvFJ0hGcGn3jcZtj','admin01','W00001',NULL,'user',NULL,'333','text','2022-10-19T14:24:41+08:00','active','insert','admin01','admin01','2022-10-19T14:24:41+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12791,'YL9AflJ2v7tprAS5XgRjj','admin01','W00001',NULL,'user',NULL,'444','text','2022-10-19T14:24:42+08:00','active','insert','admin01','admin01','2022-10-19T14:24:42+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12792,'6Nt4dmzu-01fSn980wCmy','admin01','W00001',NULL,'user',NULL,'555','text','2022-10-19T14:24:43+08:00','active','insert','admin01','admin01','2022-10-19T14:24:43+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12793,'CgcgemwUzarFAsyzhvtfF','W00001','admin01',NULL,'user',NULL,'2222222','text','2023-02-19T17:59:49+08:00','active','insert','W00001','张三丰','2023-02-19T17:59:49+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12794,'tQSb59eP_JGp2zg2-ymzK','W00001','admin01',NULL,'user',NULL,'333333','text','2023-02-19T18:00:08+08:00','active','insert','W00001','张三丰','2023-02-19T18:00:08+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12795,'WZ--hGoEnEnMljvHbG-8b','W00001','admin01',NULL,'user',NULL,'444444','text','2023-02-19T18:01:06+08:00','active','insert','W00001','张三丰','2023-02-19T18:01:06+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12796,'TQM94HuPeoT3Ea6Y1TmIw','W00001','admin01',NULL,'user',NULL,'555555','text','2023-02-19T18:01:33+08:00','active','insert','W00001','张三丰','2023-02-19T18:01:33+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12797,'X-lF_8KsPx0bLqnqdqT0O','admin01','W00001',NULL,'user',NULL,'111111','text','2023-02-19T18:01:42+08:00','active','insert','admin01','admin01','2023-02-19T18:01:42+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12798,'jDaSp2Ajfsy56Xn1rW6sX','admin01','W00001',NULL,'user',NULL,'222222','text','2023-02-19T18:01:51+08:00','active','insert','admin01','admin01','2023-02-19T18:01:51+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12799,'zIiY-cAaVuhOGiGBus7nE','admin01','W00001',NULL,'user',NULL,'333333','text','2023-02-19T18:02:16+08:00','active','insert','admin01','admin01','2023-02-19T18:02:16+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12800,'aGup5oTWPHv3lxqX12x9s','admin01','W00001',NULL,'user',NULL,'111','text','2023-02-19T20:59:07+08:00','active','insert','admin01','admin01','2023-02-19T20:59:07+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12801,'DwlM3ucoExFMkOMVe9TeQ','W00001','admin01',NULL,'user',NULL,'111','text','2023-02-19T20:59:12+08:00','active','insert','W00001','张三丰','2023-02-19T20:59:12+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12802,'Ezct2rUgISDdQGOp2AUTi','W00001','admin01',NULL,'user',NULL,'222','text','2023-02-19T21:00:19+08:00','active','insert','W00001','张三丰','2023-02-19T21:00:19+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12803,'kyGtsswlk_i8PbxfsMpCZ','W00001','admin01',NULL,'user',NULL,'333','text','2023-02-19T21:00:25+08:00','active','insert','W00001','张三丰','2023-02-19T21:00:25+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12804,'FSRC93x5OByKPuMClR1Qr','W00001','admin01',NULL,'user',NULL,'[emoji_face01_29.png]','text','2023-02-19T21:01:32+08:00','active','insert','W00001','张三丰','2023-02-19T21:01:32+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12805,'FZ6W6xzRkNmPPOhsT3cwx','admin01','W00001',NULL,'user',NULL,'1212','text','2023-02-19T22:15:41+08:00','active','insert','admin01','admin01','2023-02-19T22:15:41+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12806,'J--Czzs0mzsgfBTievM9t','admin01','W00001',NULL,'user',NULL,'333','text','2023-02-19T22:15:46+08:00','active','insert','admin01','admin01','2023-02-19T22:15:46+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12807,'yb3qozGrsONpBwXbPg9-Y','admin01','W00001',NULL,'user',NULL,'12123','text','2023-02-19T23:03:21+08:00','active','insert','admin01','admin01','2023-02-19T23:03:21+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12808,'h3XN1CLattWpfQdslT-c_','admin01','W00001',NULL,'user',NULL,'12121','text','2023-02-20T13:07:01+08:00','active','insert','admin01','admin01','2023-02-20T13:07:01+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12809,'385avqYuIQLF0BUUjDxy5','admin01','W00001',NULL,'user',NULL,'2','text','2023-02-20T13:07:03+08:00','active','insert','admin01','admin01','2023-02-20T13:07:03+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12810,'3JyiZK2g2rkOHbmir2ouh','admin01','W00001',NULL,'user',NULL,'212323','text','2023-02-20T13:07:12+08:00','active','insert','admin01','admin01','2023-02-20T13:07:13+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12811,'iWJSf7RJidRE0XF4CtApy','W00001','admin01',NULL,'user',NULL,'1212\\','text','2023-02-20T14:00:31+08:00','active','insert','W00001','张三丰','2023-02-20T14:00:31+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12812,'x1TNyQfQZBPSEw3xqFSNN','W00001','admin01',NULL,'user',NULL,'121212','text','2023-02-20T14:00:40+08:00','active','insert','W00001','张三丰','2023-02-20T14:00:40+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12813,'edX3CFYdswo-GYay6wKIF','W00001','admin01',NULL,'user',NULL,'121212','text','2023-02-20T14:01:11+08:00','active','insert','W00001','张三丰','2023-02-20T14:01:12+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12814,'OabCzSd4e6sTw0oFMN9cA','admin01','W00001',NULL,'user',NULL,'[emoji_face01_22.png]','text','2023-02-20T15:26:31+08:00','active','insert','admin01','admin01','2023-02-20T15:26:31+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12815,'1LexZzOJbUcAc76JappdV','admin01','W00001',NULL,'user',NULL,'{\"downloadPath\":\"/emotion/face05/6.gif\"}','image','2023-02-20T15:26:35+08:00','active','insert','admin01','admin01','2023-02-20T15:26:36+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12816,'hqBGpxo-wZzQAfyNoiGof','admin01','W00001',NULL,'user',NULL,'{\"downloadPath\":\"/emotion/face07/7.gif\"}','image','2023-02-20T16:10:26+08:00','active','insert','admin01','admin01','2023-02-20T16:10:26+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12817,'qbQec7fLZ-nkEqsBbOgPw','admin01','W00001',NULL,'user',NULL,'{\"downloadPath\":\"/emotion/face05/3.gif\"}','image','2023-02-20T16:20:50+08:00','active','insert','admin01','admin01','2023-02-20T16:20:50+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12818,'86psJYgWsayngyzHjuMtk','admin01','W00001',NULL,'user',NULL,'{\"downloadPath\":\"/emotion/face05/6.gif\"}','image','2023-02-20T16:21:03+08:00','active','insert','admin01','admin01','2023-02-20T16:21:03+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12819,'GocM0uHzPcSDIyQIGubj6','W00001','admin01',NULL,'user',NULL,'{\"downloadPath\":\"/emotion/face04/6.gif\"}','image','2023-02-20T16:24:29+08:00','active','insert','W00001','张三丰','2023-02-20T16:24:29+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12820,'iOPOFv_qv25n8b--WNmjA','W00001','admin01',NULL,'user',NULL,'[emoji_face01_18.png][emoji_face01_18.png][emoji_face01_18.png][emoji_face01_18.png]','text','2023-02-20T16:24:38+08:00','active','insert','W00001','张三丰','2023-02-20T16:24:38+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12821,'ZvbzXX_NpKU_wRMrvET2Y','admin01','W00001',NULL,'user',NULL,'67890-','text','2023-02-20T17:11:28+08:00','active','insert','admin01','admin01','2023-02-20T17:11:28+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12822,'yl8-V_9-dKH98-4GoyGnF','admin01','W00001',NULL,'user',NULL,'ghjk','text','2023-02-20T17:11:33+08:00','active','insert','admin01','admin01','2023-02-20T17:11:33+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12823,'Hg4rIU96yKEzocX2K7NaX','admin01','W00001',NULL,'user',NULL,'{\"filename\":\"2021年全国GDP数据1.png\",\"downloadPath\":\"/admin01/2023/2/20//1676884303914_415392_2021年全国GDP数据1.png\",\"binarySize\":\"1285.35\"}','image','2023-02-20T17:11:44+08:00','active','insert','admin01','admin01','2023-02-20T17:11:44+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12824,'LFgSYS0zLyWAokogNq6fU','admin01','W00001',NULL,'user',NULL,'{\"filename\":\"1649343062202_videoThumbnail.png\",\"downloadPath\":\"/admin01/2023/2/20//1676884398741_780910_1649343062202_videoThumbnail.png\",\"binarySize\":\"4.57\"}','image','2023-02-20T17:13:19+08:00','active','insert','admin01','admin01','2023-02-20T17:13:19+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12825,'aaTOyvGoeazZa0atrlq4B','admin01','W00001',NULL,'user',NULL,'{\"filename\":\"1642409847352.jpg\",\"downloadPath\":\"/admin01/2023/2/20//1676884422100_617858_1642409847352.jpg\",\"binarySize\":\"1.10\"}','image','2023-02-20T17:13:42+08:00','active','insert','admin01','admin01','2023-02-20T17:13:43+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12826,'G8mLu3Flh0M5aA0V1scVs','W00001','admin01',NULL,'user',NULL,'121212','text','2023-02-20T21:52:39+08:00','active','insert','W00001','张三丰','2023-02-20T21:52:39+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12827,'BqDpmChYNvCkJJ19KxNWs','admin01','W00001',NULL,'user',NULL,'123','text','2023-02-21T17:02:17+08:00','active','insert','admin01','admin01','2023-02-21T17:02:17+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12828,'atwni8cAnW_B5cPlQlKHf','admin01','W00001',NULL,'user',NULL,'1212','text','2023-02-21T17:10:28+08:00','active','insert','admin01','admin01','2023-02-21T17:10:28+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12829,'y8iWdghSji6kMUhukwzLp','admin01','W00001',NULL,'user',NULL,'[emoji_face01_15.png][emoji_face01_15.png][emoji_face01_15.png]','text','2023-02-21T17:10:35+08:00','active','insert','admin01','admin01','2023-02-21T17:10:35+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12830,'BAtrgFOm4_ScByaGYKX9v','admin01','W00001',NULL,'user',NULL,'[emoji_face01_15.png][emoji_face01_15.png][emoji_face01_15.png]','text','2023-02-21T17:11:00+08:00','active','insert','admin01','admin01','2023-02-21T17:11:00+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12831,'uzzVGtHGAa-Hf68XpT9rk','W00002','admin01',NULL,'user',NULL,'1234','text','2023-03-07T20:27:01+08:00','active','insert','W00002','张无忌','2023-03-07T20:27:01+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12832,'RKx6--jTX2-5yVfg4h-Te','W00002','admin01',NULL,'user',NULL,'1234','text','2023-04-15T20:18:27+08:00','active','insert','W00002','张无忌','2023-04-15T20:18:27+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12833,'3BBdwg7qIAnIVeWvBn4y3','admin01','W00002',NULL,'user',NULL,'{\"filename\":\"1676642625228_276831_f5f5d70aa3d984aeaa91c661868161df.jpeg\",\"downloadPath\":\"/admin01/2023/4/15//1681564395146_813051_1676642625228_276831_f5f5d70aa3d984aeaa91c661868161df.jpeg\",\"binarySize\":\"22.14\"}','image','2023-04-15T21:13:16+08:00','active','insert','admin01','admin01','2023-04-15T21:13:16+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12834,'EKCtnY3kJ-tNxvoWtr_l-','admin01','W00002',NULL,'user',NULL,'1234','text','2023-04-15T21:13:41+08:00','active','insert','admin01','admin01','2023-04-15T21:13:41+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12835,'ckljYCBsDlJaWh6_4z1I6','admin01','W00002',NULL,'user',NULL,'{\"filename\":\"1676642625228_276831_f5f5d70aa3d984aeaa91c661868161df.jpeg\",\"downloadPath\":\"/admin01/2023/4/15//1681564427562_216826_1676642625228_276831_f5f5d70aa3d984aeaa91c661868161df.jpeg\",\"binarySize\":\"22.14\"}','image','2023-04-15T21:13:48+08:00','active','insert','admin01','admin01','2023-04-15T21:13:48+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12836,'uHAqynbCWdluH3vB9cDFh','W00002','admin01',NULL,'user',NULL,'666','text','2023-04-27T08:51:25+08:00','active','insert','W00002','张无忌','2023-04-27T08:51:25+08:00');
INSERT INTO `duoxing_message_history` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12837,'nAcvwedmEhtE7uRxcSb08','W00001','admin01',NULL,'user',NULL,'[emoji_face01_14.png]','text','2023-04-27T08:52:10+08:00','active','insert','W00001','张三丰','2023-04-27T08:52:10+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: duoxing_message_history_bak
# ------------------------------------------------------------

DROP TABLE IF EXISTS `duoxing_message_history_bak`;
CREATE TABLE `duoxing_message_history_bak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `messageFingerprint` varchar(255) DEFAULT NULL COMMENT '消息指纹, 多个消息id对应一个指纹',
  `fromUserId` varchar(255) DEFAULT NULL COMMENT '消息发送方userId',
  `toUserId` varchar(255) DEFAULT NULL COMMENT '接收方userId',
  `toRoomId` varchar(255) DEFAULT NULL COMMENT '接收方groupId',
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
  KEY `toGroupId_index` (`toRoomId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 COMMENT = '消息历史表;';



INSERT INTO `duoxing_message_history_bak` (`id`,`messageFingerprint`,`fromUserId`,`toUserId`,`toRoomId`,`messageType`,`noticeType`,`messageContent`,`messageContentType`,`messageTimeString`,`messageStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: duoxing_user_friend
# ------------------------------------------------------------

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
  UNIQUE KEY `userId_friendId_unique` (`userId`, `friendId`),
  KEY `userId_index` (`userId`) USING BTREE,
  KEY `friend_index` (`friendId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 687 COMMENT = '好友表;';



INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (366,'H00002','H00001','isFriend',NULL,NULL,NULL,NULL,'jhInsert','admin01','admin01','2022-03-03T22:29:14+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (379,'H00002','W00001','isFriend','2022-03-14T14:17:03+08:00','','2022-03-13T21:42:46+08:00',NULL,'jhUpdate','H00002','令狐冲','2022-03-14T14:17:32+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (380,'W00001','H00002','isFriend','2022-03-12T23:50:09+08:00','','2022-03-08T21:59:13+08:00',NULL,'jhUpdate','H00002','令狐冲','2022-03-14T14:17:32+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (391,'G00003','G00001','isFriend','2022-03-15T14:02:27+08:00','',NULL,NULL,'jhUpdate','G00001','洪七公','2022-03-20T15:26:14+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (392,'G00001','G00003','isFriend','2022-03-20T15:26:09+08:00','',NULL,NULL,'jhUpdate','G00001','洪七公','2022-03-20T15:26:14+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (393,'G00003','G00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-03-12T15:35:55+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (394,'G00002','G00003','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-03-12T15:35:55+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (395,'G00003','H00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-03-12T15:36:15+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (396,'H00001','G00003','notfriend',NULL,'后台删除好友',NULL,NULL,'jhUpdate','admin01','admin01','2022-08-03T17:21:49+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (399,'W00001','G00002','isFriend',NULL,NULL,NULL,NULL,'jhUpdate','G00002','郭靖','2022-03-31T15:23:27+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (400,'G00002','W00001','isFriend','2022-03-12T21:22:16+08:00','',NULL,NULL,'jhUpdate','G00002','郭靖','2022-03-31T15:23:27+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (433,'G00001','H00001','notFriend',NULL,'后台添加好友',NULL,NULL,'jhUpdate','G00001','洪七公','2022-03-12T23:51:22+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (434,'H00001','G00001','notfriend',NULL,'后台删除好友',NULL,NULL,'jhUpdate','admin01','admin01','2022-08-03T17:21:49+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (435,'G00001','H00002','notFriend',NULL,'后台添加好友',NULL,NULL,'jhUpdate','G00001','洪七公','2022-03-12T23:52:37+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (436,'H00002','G00001','notFriend',NULL,'后台添加好友',NULL,NULL,'jhUpdate','G00001','洪七公','2022-03-12T23:52:37+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (437,'W00001','G00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhUpdate','G00001','洪七公','2022-03-20T20:40:15+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (438,'G00001','W00001','isFriend','2022-03-20T20:39:26+08:00','',NULL,NULL,'jhUpdate','G00001','洪七公','2022-03-20T20:40:15+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (471,'G00001','xiaochengxu01','notfriend',NULL,'后台删除好友',NULL,NULL,'jhUpdate','admin01','admin01','2022-08-03T17:16:18+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (472,'xiaochengxu01','G00001','notfriend','2022-03-16T23:13:37+08:00','后台删除好友',NULL,NULL,'jhUpdate','admin01','admin01','2022-08-03T22:01:26+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (477,'xiaochengxu-anning','H00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-03-26T13:11:56+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (478,'H00001','xiaochengxu-anning','notfriend',NULL,'后台删除好友',NULL,NULL,'jhUpdate','admin01','admin01','2022-08-03T17:21:49+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (483,'G00001','G00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-04-29T21:54:56+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (484,'G00002','G00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-04-29T21:54:56+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (485,'W00002','W00001','isFriend',NULL,NULL,NULL,NULL,'jhUpdate','W00001','张三丰','2022-06-11T23:20:03+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (486,'W00001','W00002','isFriend','2022-06-11T23:19:46+08:00','',NULL,NULL,'jhUpdate','W00001','张三丰','2022-06-11T23:20:03+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (487,'G00003','G00004','isFriend',NULL,NULL,NULL,NULL,'jhUpdate','G00004','乔峰','2022-06-16T16:30:15+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (488,'G00004','G00003','isFriend','2022-06-16T16:29:57+08:00','',NULL,NULL,'jhUpdate','G00004','乔峰','2022-06-16T16:30:15+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (493,'W00001','xiaochengxu-shigong01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-06-18T14:29:39+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (494,'xiaochengxu-shigong01','W00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-06-18T14:29:39+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (495,'W00002','xiaochengxu-shigong01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-06-18T14:29:50+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (496,'xiaochengxu-shigong01','W00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-06-18T14:29:50+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (497,'H00002','xiaochengxu-shigong01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-06-18T15:44:45+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (498,'xiaochengxu-shigong01','H00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-06-18T15:44:45+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (499,'W00001','H00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-06-18T15:48:09+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (500,'H00001','W00001','notfriend',NULL,'后台删除好友',NULL,NULL,'jhUpdate','admin01','admin01','2022-08-03T17:21:49+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (501,'X00001','X00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01',NULL);
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (502,'X00002','X00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01',NULL);
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (503,'admin01','G00004','notfriend',NULL,'后台删除好友',NULL,NULL,'jhUpdate','admin01','admin01','2022-08-03T16:47:27+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (504,'G00004','admin01','notfriend',NULL,'后台删除好友',NULL,NULL,'jhUpdate','admin01','admin01','2022-08-03T16:47:25+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (507,'admin01','xiaochengxu-shigong01','notfriend',NULL,'后台删除好友',NULL,NULL,'jhUpdate','admin01','admin01','2022-08-03T16:47:27+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (508,'xiaochengxu-shigong01','admin01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-06-22T14:20:20+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (509,'md-meeting-minutes','W00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:44:42+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (510,'W00001','md-meeting-minutes','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:44:42+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (511,'md-meeting-minutes','W00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:45:09+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (512,'W00002','md-meeting-minutes','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:45:09+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (513,'md-meeting-minutes','G00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:45:24+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (514,'G00001','md-meeting-minutes','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:45:24+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (515,'md-meeting-minutes','G00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:45:33+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (516,'G00002','md-meeting-minutes','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:45:33+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (517,'md-meeting-minutes','G00003','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:45:45+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (518,'G00003','md-meeting-minutes','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:45:45+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (519,'md-meeting-minutes','H00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:45:55+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (520,'H00001','md-meeting-minutes','notfriend',NULL,'后台删除好友',NULL,NULL,'jhUpdate','admin01','admin01','2022-08-03T17:21:49+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (521,'md-meeting-minutes','H00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:46:05+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (522,'H00002','md-meeting-minutes','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:46:05+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (523,'md-doc-management','W00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:46:54+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (524,'W00001','md-doc-management','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:46:54+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (525,'md-doc-management','W00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:47:05+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (526,'W00002','md-doc-management','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:47:05+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (527,'md-doc-management','G00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:47:14+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (528,'G00001','md-doc-management','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:47:14+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (529,'md-doc-management','G00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:47:22+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (530,'G00002','md-doc-management','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:47:22+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (531,'md-doc-management','G00003','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:47:32+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (532,'G00003','md-doc-management','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:47:32+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (533,'md-doc-management','H00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:47:41+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (534,'H00001','md-doc-management','notfriend',NULL,'后台删除好友',NULL,NULL,'jhUpdate','admin01','admin01','2022-08-03T17:21:49+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (535,'md-doc-management','H00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:47:50+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (536,'H00002','md-doc-management','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-21T14:47:50+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (537,'md-shepherd-xiaochengxu','W00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-23T14:42:15+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (538,'W00001','md-shepherd-xiaochengxu','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-23T14:42:15+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (539,'md-shepherd-xiaochengxu','admin01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-23T15:09:07+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (540,'admin01','md-shepherd-xiaochengxu','notfriend',NULL,'后台删除好友',NULL,NULL,'jhUpdate','admin01','admin01','2022-08-03T16:47:27+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (541,'md-shepherd-xiaochengxu','W00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-24T14:19:25+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (542,'W00002','md-shepherd-xiaochengxu','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-24T14:19:25+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (543,'md-editor-course','W00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-24T15:14:33+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (544,'W00001','md-editor-course','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-24T15:14:33+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (545,'md-editor-course','W00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-24T15:14:45+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (546,'W00002','md-editor-course','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-24T15:14:45+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (547,'md-editor-course','G00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-24T15:15:09+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (548,'G00001','md-editor-course','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-24T15:15:09+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (549,'md-editor-course','G00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-24T15:15:20+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (550,'G00002','md-editor-course','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-24T15:15:20+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (551,'md-editor-course','G00003','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-24T15:15:31+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (552,'G00003','md-editor-course','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-24T15:15:31+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (553,'md-editor-course','H00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-24T15:15:46+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (554,'H00001','md-editor-course','notfriend',NULL,'后台删除好友',NULL,NULL,'jhUpdate','admin01','admin01','2022-08-03T17:21:49+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (555,'md-editor-course','H00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-24T15:15:57+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (556,'H00002','md-editor-course','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-07-24T15:15:57+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (557,'md-editor-course','X00001','isFriend',NULL,NULL,NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (558,'X00001','md-editor-course','isFriend',NULL,NULL,NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (599,'G00004','W00002','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T16:45:59+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (600,'W00002','G00004','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T16:46:02+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (601,'G00004','G00001','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T16:46:04+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (602,'G00001','G00004','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T16:46:06+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (603,'G00004','G00002','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T16:47:45+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (604,'G00002','G00004','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T16:47:47+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (605,'A00001','W00001','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T17:14:37+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (606,'W00001','A00001','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T17:14:44+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (607,'A00001','W00002','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T17:14:52+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (608,'W00002','A00001','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T17:14:57+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (609,'A00001','G00001','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T17:15:01+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (610,'G00001','A00001','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T17:15:08+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (611,'A00001','G00002','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T17:15:12+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (612,'G00002','A00001','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T17:15:16+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (621,'H00001','H00002','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T17:24:27+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (623,'A00001','G00004','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T17:32:40+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (624,'G00004','A00001','isfriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-03T17:32:41+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (631,'admin01','G00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:15:11+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (632,'G00002','admin01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:15:11+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (633,'admin01','G00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:15:14+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (634,'G00001','admin01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:15:14+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (635,'admin01','W00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:15:17+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (636,'W00002','admin01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:15:17+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (637,'admin01','xiaochengxu01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:16:28+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (638,'xiaochengxu01','admin01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:16:28+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (639,'admin01','xiaochengxu02','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:16:30+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (640,'xiaochengxu02','admin01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:16:30+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (641,'admin01','W00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:23:44+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (642,'W00001','admin01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:23:44+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (643,'admin01','H00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:23:56+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (644,'H00001','admin01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:23:56+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (645,'admin01','H00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:23:59+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (646,'H00002','admin01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:23:59+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (647,'admin01','G00003','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:24:01+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (648,'G00003','admin01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T14:24:01+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (653,'admin01','s00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T15:07:39+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (654,'s00001','admin01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T15:07:39+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (655,'admin01','X00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T15:07:47+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (656,'X00001','admin01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T15:07:47+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (657,'admin01','X00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T15:07:47+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (658,'X00002','admin01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-04T15:07:47+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (661,'A00001','H00002','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T15:51:15+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (662,'H00002','A00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T15:51:15+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (663,'A00001','G00003','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T15:51:17+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (664,'G00003','A00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T15:51:17+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (665,'A00001','xiaochengxu02','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T15:57:40+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (666,'xiaochengxu02','A00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T15:57:40+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (667,'A00001','admin01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T15:58:11+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (668,'admin01','A00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T15:58:11+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (669,'A00001','xiaochengxu01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T15:58:14+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (670,'xiaochengxu01','A00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T15:58:14+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (671,'A00001','chatbot02','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T16:11:12+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (672,'chatbot02','A00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T16:11:12+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (673,'A00001','xiaochengxu-suni','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T16:11:17+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (674,'xiaochengxu-suni','A00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T16:11:17+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (675,'A00001','H00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T16:47:57+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (676,'H00001','A00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T16:47:57+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (677,'A00001','chatbot01','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T18:24:00+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (678,'chatbot01','A00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-05T18:24:00+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (681,'A00001','xiaochengxu-yasa','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-06T21:19:20+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (682,'xiaochengxu-yasa','A00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-06T21:19:20+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (683,'A00001','xiaochengxu -beibei','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-06T21:19:20+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (684,'xiaochengxu -beibei','A00001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-06T21:19:20+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (685,'xiaochengxu -beibei','test0001','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-06T23:06:44+08:00');
INSERT INTO `duoxing_user_friend` (`id`,`userId`,`friendId`,`friendStatus`,`requestTime`,`requestRemark`,`responseTime`,`rejectTimes`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (686,'test0001','xiaochengxu -beibei','isFriend',NULL,'后台添加好友',NULL,NULL,'jhInsert','admin01','admin01','2022-08-06T23:06:44+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: room
# ------------------------------------------------------------

DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomId` varchar(255) NOT NULL COMMENT 'groupId',
  `roomName` varchar(255) DEFAULT NULL COMMENT '群组名',
  `roomType` varchar(255) DEFAULT NULL COMMENT '群组类型; system, cgg,course',
  `roomDesc` varchar(255) DEFAULT NULL COMMENT '群组描述',
  `roomAvatar` varchar(255) DEFAULT NULL COMMENT '群logo',
  `roomExtend` text COMMENT '拓展字段; { groupNotice: ''xx'' }',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  UNIQUE KEY `groupId_index` (`roomId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 COMMENT = '群组表;';



INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'adminRoom','权限管理组','system','管理组','/roomAvatar/default.jpg','{\"allRoomUsername\":\"\"}','insert',NULL,NULL,NULL);
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'wudang','武当',NULL,'武当','/roomAvatar/default1.jpg','{\"allRoomUsername\":\"张无忌,郭靖,令狐冲,乔峰,事工信息,汪剑通,测试账号01,admin01,张三丰\",\"roomSliderShow\":[{\"content\":\"<h1>测试下</h1>\\n<p>我是测试</p>\\n<p>我要测试</p>\\n\",\"markdown\":\"# 测试下\\n\\n我是测试\\n\\n我要测试\\n\",\"type\":\"text\",\"id\":\"C9ULyPH5ZlPTQJ7RNb5k6\",\"createTime\":\"2022-08-08T16:02:26+08:00\",\"operation\":\"admin01[admin01]\"},{\"content\":\"<h1>测试下</h1>\\n<p>我是测试</p>\\n<p>我要测试</p>\\n<p>123123123123123</p>\\n\",\"markdown\":\"# 测试下\\n\\n我是测试\\n\\n我要测试\\n\\n123123123123123\\n\",\"type\":\"text\",\"id\":\"kydIJEZYoPUdIeZ1sbRIe\",\"createTime\":\"2022-08-08T16:02:32+08:00\",\"operation\":\"admin01[admin01]\"},{\"content\":\"<p>我测试下<strong>招待费</strong></p>\\n\",\"markdown\":\"我测试下**招待费**\\n\",\"type\":\"text\",\"id\":\"fvYrfm819Jnkma9zWhVAK\",\"createTime\":\"2022-08-08T16:03:33+08:00\",\"operation\":\"admin01[admin01]\"},{\"content\":\"<p>我测试下<strong>招待费</strong></p>\\n<h1>地对地导弹</h1>\\n\",\"markdown\":\"我测试下**招待费**\\n\\n# 地对地导弹\\n\",\"type\":\"text\",\"id\":\"EGt5KAz2sy36kDG-ofSYU\",\"createTime\":\"2022-08-08T16:03:44+08:00\",\"operation\":\"admin01[admin01]\"},{\"content\":\"<p>我测试下<strong>招待费</strong></p>\\n<h1>地对地导弹</h1>\\n<p>asdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf a</p>\\n\",\"markdown\":\"我测试下**招待费**\\n\\n# 地对地导弹\\n\\nasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf aasdfasdf a\\n\",\"type\":\"text\",\"id\":\"0hRJGwrWiAXgr4fOL326J\",\"createTime\":\"2022-08-08T21:28:09+08:00\",\"operation\":\"admin01[admin01]\"}]}','jhRestore','admin01','admin01','2022-08-08T21:33:31+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7,'gaibang','丐帮--',NULL,'丐帮','/roomAvatar/default2.jpg','{\"allRoomUsername\":\"郭靖,岳不群,张三丰,小程序机器人1,汪剑通,洪七公\"}','jhUpdate','G00001','洪七公','2022-03-20T15:28:59+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8,'huashan','华山派',NULL,'华山派','/roomAvatar/default3.jpg','{\"allRoomUsername\":\"令狐冲,admin01,岳不群\"}','insert',NULL,NULL,NULL);
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (13,'jd-_eJWCsaD90qKXcgzlH','天下会',NULL,NULL,'/roomAvatar/default2.jpg','{\"allRoomUsername\":\"岳不群,张三丰,admin01\"}','jhUpdate','admin01','admin01','2022-07-25T11:47:26+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (15,'C1vDvXCgb4uAsoa1K8mPC','admin测试群___',NULL,NULL,'/roomAvatar/default2.jpg','{\"allRoomUsername\":\"岳不群,张三丰,郭靖,洪七公,admin01\"}','jhUpdate','W00001','张三丰','2022-07-20T14:03:53+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (16,'JcCVYjEqySIdMZxcy8O11','1111',NULL,NULL,'/roomAvatar/default2.jpg','{\"allRoomUsername\":\"洪七公,令狐冲,郭靖\"}','jhUpdate','admin01','admin01','2022-03-12T22:38:25+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (17,'9U_ww9I2TtgL4Fsi4whCz','admin,洪七公,郭靖等4人群聊',NULL,NULL,'/roomAvatar/default5.jpg','{\"allRoomUsername\":\"郭靖,洪七公\"}','jhInsert','admin01','admin01','2022-03-12T22:38:19+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (18,'beS8LsS2pMfHic-hNuGrD','admin,洪七公,郭靖等3人群聊',NULL,NULL,'/roomAvatar/default1.jpg','{\"allRoomUsername\":\"洪七公,测试账号01,admin01\"}','jhUpdate','admin01','admin01','2022-07-15T09:35:21+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,'gBK5SDgE0ebEMWAgF2n9Y','张三丰,洪七公,令狐冲等3人群聊',NULL,NULL,'/roomAvatar/default4.jpg','{\"allRoomUsername\":\"张三丰,洪七公\"}','jhInsert','W00001','张三丰','2022-03-13T21:43:34+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (21,'Q07o3miNRKsBXrbCFFpaV','张三丰,洪七公,令狐冲等3人群聊',NULL,NULL,'/roomAvatar/default6.jpg','{\"allRoomUsername\":\"张三丰,洪七公\"}','jhInsert','W00001','张三丰','2022-03-13T21:46:03+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (22,'BJbrcnzn-MwG9KJ6taPZg','张三丰,洪七公,令狐冲等3人群聊',NULL,NULL,'/roomAvatar/default5.jpg','{\"allRoomUsername\":\"张三丰,洪七公\"}','jhInsert','W00001','张三丰','2022-03-13T21:53:52+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (23,'NVVv8YlhskIX0QHimHMap','张三丰2',NULL,NULL,'/roomAvatar/default6.jpg','{\"allRoomUsername\":\"张三丰,洪七公\"}','jhUpdate','W00001','张三丰','2022-07-01T21:53:40+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (24,'bhF6JQXgXUqwlkC1Pdl8J','张三丰,洪七公,令狐冲等3人群聊2',NULL,NULL,'/roomAvatar/default4.jpg','{\"allRoomUsername\":\"张三丰,洪七公\"}','jhUpdate','W00001','张三丰','2022-03-14T10:30:22+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (25,'FsTa3bUxZId4MAdowDbxw','测试修改群名字1',NULL,NULL,'/roomAvatar/default3.jpg','{\"allRoomUsername\":\"张三丰,令狐冲\"}','jhUpdate','W00001','张三丰','2022-03-14T12:47:35+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (26,'8CdYgl90D-Zz0OC6eA_Dk','张三丰,admin01,令狐冲等3人群聊',NULL,NULL,'/roomAvatar/default1.jpg','{\"allRoomUsername\":\"admin01,令狐冲,张三丰\"}','jhInsert','W00001','张三丰','2022-03-14T20:44:11+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (28,'DnY2orBMDexRFGqUFH2ty','张三丰,admin01,令狐冲等5人群聊',NULL,NULL,'/roomAvatar/default6.jpg','{\"allRoomUsername\":\"聊天机器人1,admin01,聊天机器人2,令狐冲,张三丰\"}','jhInsert','W00001','张三丰','2022-03-14T22:14:07+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (29,'Mz6t4hwgai_KmEd43OAHt','张三丰,admin01,令狐冲等3人群聊',NULL,NULL,'/roomAvatar/default5.jpg','{\"allRoomUsername\":\"admin01,令狐冲,张三丰\"}','jhInsert','W00001','张三丰','2022-03-14T22:15:03+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (30,'3Kf5iP-hhWcMO0aqFVAkc','张三丰,聊天机器人1,聊天机器人2等3人群聊',NULL,NULL,'/roomAvatar/default6.jpg','{\"allRoomUsername\":\"聊天机器人1,聊天机器人2\"}','jhInsert','W00001','张三丰','2022-03-14T22:16:09+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (31,'Ox8_A0FHhRAte_hVSMnBM','张三丰,admin01,聊天机器人1等3人群聊',NULL,NULL,'/roomAvatar/default3.jpg','{\"allRoomUsername\":\"admin01,聊天机器人1,洪七公,郭靖,段誉,张三丰\"}','jhRestore','admin01','admin01','2022-08-05T18:28:20+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (32,'gtb-z1CGqQCgddt6o2urB','张三丰,admin01,令狐冲等3人群聊',NULL,NULL,'/roomAvatar/default3.jpg','{\"allRoomUsername\":\"admin01,令狐冲\"}','jhInsert','W00001','张三丰','2022-03-14T22:21:23+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (33,'osoZAVR8wfazAL39C8E7n','洪七公,汪剑通等2人群聊',NULL,NULL,'/roomAvatar/default1.jpg','{\"allRoomUsername\":\"洪七公,汪剑通\"}','jhInsert','G00001','洪七公','2022-03-15T14:03:01+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (34,'EKhZoPqdaBGwWWqoPu40q','洪七公,汪剑通等2人群聊',NULL,NULL,'/roomAvatar/default6.jpg','{\"allRoomUsername\":\"洪七公,汪剑通\"}','jhInsert','G00001','洪七公','2022-03-15T14:03:24+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (35,'vsUf6nL19V_LombZlLdLW','洪七公,汪剑通等2人群聊',NULL,NULL,'/roomAvatar/default5.jpg','{\"allRoomUsername\":\"洪七公,汪剑通\"}','jhInsert','G00001','洪七公','2022-03-15T14:03:27+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (37,'A10EYIM6NKvCxsD4DU76O','汪剑通创建的群',NULL,NULL,'/roomAvatar/default1.jpg','{\"allRoomUsername\":\"郭靖,洪七公,岳不群,乔峰,汪剑通\"}','jhUpdate','G00003','汪剑通','2022-06-16T17:38:17+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (39,'zGCb1BOH0-b9S_UE9XYzl','张三丰,admin01,郭靖等3人群聊',NULL,NULL,'/roomAvatar/default5.jpg','{\"allRoomUsername\":\"admin01,郭靖,洪七公,令狐冲,张三丰\"}','jhUpdate','W00001','张三丰','2022-04-30T22:27:45+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (40,'Fgh0utkF8OQ3aEBC0upJL','张三丰,admin01,洪七公等3人群聊',NULL,NULL,'/roomAvatar/default1.jpg','{\"allRoomUsername\":\"admin01,洪七公,张三丰\"}','jhUpdate','W00001','张三丰','2022-04-30T22:04:32+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (41,'EHxAWffWvQtt2F6bvlURT','张三丰,admin01,郭靖等3人群聊',NULL,NULL,'/roomAvatar/default6.jpg','{\"allRoomUsername\":\"郭靖,admin01,张三丰\"}','jhUpdate','W00001','张三丰','2022-05-02T23:25:49+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (42,'T9keFDCT5br7sIrjHC5GB','admin01,测试账号01等2人群聊',NULL,NULL,'/roomAvatar/default2.jpg','{\"allRoomUsername\":\"admin01,测试账号01\"}','jhUpdate','admin01','admin01','2022-05-28T21:05:55+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (43,'R6JWlpYnDPdj1Q-ZoTFIw','汪剑通,洪七公,郭靖等5人群聊',NULL,NULL,'/roomAvatar/default6.jpg','{\"allRoomUsername\":\"郭靖,洪七公,乔峰,岳不群,汪剑通\"}','jhUpdate','G00003','汪剑通','2022-06-16T17:37:59+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (44,'fTjJngxqfH2hm03Dr-E9i','张三丰,admin01,洪七公等4人群聊',NULL,NULL,'/roomAvatar/default1.jpg','{\"allRoomUsername\":\"admin01,郭靖,洪七公,张三丰\"}','jhUpdate','W00001','张三丰','2022-07-10T14:57:45+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (45,'3BCvVYkJbf-JVCMdTyfiX','张三丰,洪七公,郭靖等5人群聊',NULL,NULL,'/roomAvatar/default6.jpg','{\"allRoomUsername\":\"郭靖,洪七公,令狐冲,事工信息,张三丰\"}','jhUpdate','W00001','张三丰','2022-07-01T21:21:37+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (46,'ox9Xdq9D-q8jPqSiwRyib','admin01,令狐冲,测试账号01等3人群聊',NULL,NULL,'/roomAvatar/default5.jpg','{\"allRoomUsername\":\"测试账号01,令狐冲,admin01\"}','jhInsert','admin01','admin01','2022-07-15T13:50:13+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (47,'Xa47N0-CslZamRtfqgDjr','admin01,令狐冲,测试账号01等3人群聊',NULL,NULL,'/roomAvatar/default1.jpg','{\"allRoomUsername\":\"测试账号01,令狐冲,admin01\"}','jhInsert','admin01','admin01','2022-07-15T13:58:14+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (48,'4AMRPHHvsPSq4iLDXr-5o','admin01,令狐冲,测试账号01等3人群聊',NULL,NULL,'/roomAvatar/default3.jpg','{\"allRoomUsername\":\"测试账号01,令狐冲,admin01\"}','jhInsert','admin01','admin01','2022-07-15T13:59:41+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (49,'Zh0Ipik1MUGmL9Isr37gO','admin01,令狐冲,测试账号01等3人群聊',NULL,NULL,'/roomAvatar/default3.jpg','{\"allRoomUsername\":\"测试账号01,令狐冲,admin01\"}','jhInsert','admin01','admin01','2022-07-15T14:00:13+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (50,'ngDxHZTMWhXkIB6_NpOOJ','admin01,令狐冲,测试账号01等3人群聊',NULL,NULL,'/roomAvatar/default3.jpg','{\"allRoomUsername\":\"测试账号01,令狐冲,admin01\"}','jhInsert','admin01','admin01','2022-07-15T14:00:55+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (51,'T3qv73PM83EGf_4Y2Darp','admin01,令狐冲,测试账号01等3人群聊',NULL,NULL,'/roomAvatar/default2.jpg','{\"allRoomUsername\":\"测试账号01,令狐冲,admin01\"}','jhInsert','admin01','admin01','2022-07-15T14:01:32+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (52,'xPa_ZbyNO3QOzM0NOJdHK','admin01,令狐冲,测试账号01等3人群聊',NULL,NULL,'/roomAvatar/default1.jpg','{\"allRoomUsername\":\"测试账号01,令狐冲,admin01\"}','jhInsert','admin01','admin01','2022-07-15T14:01:59+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (53,'ucruTVNJB1xu_A59wGQRq','admin01,令狐冲,测试账号01等3人群聊',NULL,NULL,'/roomAvatar/default6.jpg','{\"allRoomUsername\":\"测试账号01,令狐冲,admin01\"}','jhUpdate','admin01','admin01','2022-07-15T14:03:15+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (54,'SbqjwbcjtB1et65D-NWlT','张三丰,admin01,郭靖等3人群聊',NULL,NULL,'/roomAvatar/default2.jpg','{\"allRoomUsername\":\"admin01,郭靖,张三丰\"}','jhUpdate','W00001','张三丰','2022-07-15T14:05:48+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (55,'OXf9kp6glLthbhoGpQ6Iy','张三丰,admin01,洪七公等5人群聊',NULL,NULL,'/roomAvatar/default6.jpg','{\"allRoomUsername\":\"admin01,郭靖,洪七公,令狐冲,张三丰\"}','jhUpdate','W00001','张三丰','2022-07-15T14:08:52+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (56,'g7mx205cIyVTMMF5BmFHt','5人群聊',NULL,NULL,'/roomAvatar/default3.jpg','{\"allRoomUsername\":\"乔峰,汪剑通,张三丰,事工信息,张无忌,牧养小程序,admin01\",\"roomNotice\":\"123123123123\"}','jhUpdate','W00002','张无忌','2022-07-27T14:14:51+08:00');
INSERT INTO `room` (`id`,`roomId`,`roomName`,`roomType`,`roomDesc`,`roomAvatar`,`roomExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (58,'JTsVo7ONh_2X21d3OTpFD','张三丰,令狐冲,张无忌等3人群聊',NULL,NULL,'/roomAvatar/default6.jpg','{\"allRoomUsername\":\"令狐冲,张三丰,张无忌\"}','jhUpdate','W00001','张三丰','2022-07-27T14:34:03+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: user_room_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_room_role`;
CREATE TABLE `user_room_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户id',
  `roomId` varchar(255) NOT NULL COMMENT '群组Id',
  `roleId` varchar(255) DEFAULT NULL COMMENT '角色Id',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `groupId_index` (`roomId`),
  KEY `userId_index` (`userId`)
) ENGINE = InnoDB AUTO_INCREMENT = 804 COMMENT = '用户群组角色关联表;';



INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (569,'W00001','wudang','roomOwner','insert',NULL,NULL,NULL);
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (570,'W00002','wudang','roomUser','insert',NULL,NULL,NULL);
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (573,'G00001','gaibang','roomOwner','jhUpdate','G00003','汪剑通','2022-03-19T16:41:51+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (574,'G00002','gaibang','roomUser','jhUpdate','G00003','汪剑通','2022-03-19T16:41:38+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (577,'H00001','huashan','roomOwner','insert',NULL,NULL,NULL);
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (578,'H00002','huashan','roomUser','insert',NULL,NULL,NULL);
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (587,'admin01','wudang','roomAdmin','update',NULL,NULL,'2022-03-10T22:33:58+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (588,'admin01','huashan','roomAdmin','insert',NULL,NULL,NULL);
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (590,'H00001','gaibang','roomUser','jhUpdate','G00003','汪剑通','2022-03-19T16:41:39+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (591,'W00001','gaibang','roomUser','insert',NULL,NULL,NULL);
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (615,'admin01','jd-_eJWCsaD90qKXcgzlH','roomOwner','insert',NULL,NULL,'2022-03-05T17:17:46+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (616,'H00001','jd-_eJWCsaD90qKXcgzlH','roomUser','insert',NULL,NULL,'2022-03-05T17:17:46+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (617,'W00001','jd-_eJWCsaD90qKXcgzlH','roomUser','insert',NULL,NULL,'2022-03-05T17:17:46+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (621,'admin01','C1vDvXCgb4uAsoa1K8mPC','roomOwner','insert',NULL,NULL,'2022-03-09T22:51:01+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (622,'H00001','C1vDvXCgb4uAsoa1K8mPC','roomUser','insert',NULL,NULL,'2022-03-09T22:51:01+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (624,'W00001','C1vDvXCgb4uAsoa1K8mPC','roomUser','insert',NULL,NULL,'2022-03-12T19:56:31+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (627,'G00002','C1vDvXCgb4uAsoa1K8mPC','roomUser','insert',NULL,NULL,'2022-03-12T19:56:31+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (629,'G00002','JcCVYjEqySIdMZxcy8O11','roomOwner','jhUpdate','admin01','admin01','2022-03-12T22:44:36+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (630,'G00001','JcCVYjEqySIdMZxcy8O11','roomUser','jhInsert','admin01','admin01','2022-03-12T22:38:16+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (631,'H00002','JcCVYjEqySIdMZxcy8O11','roomUser','jhInsert','admin01','admin01','2022-03-12T22:38:16+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (633,'G00002','9U_ww9I2TtgL4Fsi4whCz','roomUser','jhInsert','admin01','admin01','2022-03-12T22:38:19+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (634,'G00001','9U_ww9I2TtgL4Fsi4whCz','roomOwner','jhUpdate','admin01','admin01','2022-03-12T22:41:47+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (636,'admin01','beS8LsS2pMfHic-hNuGrD','roomOwner','jhInsert','admin01','admin01','2022-03-12T22:46:32+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (638,'G00001','beS8LsS2pMfHic-hNuGrD','roomUser','jhInsert','admin01','admin01','2022-03-12T22:46:32+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (642,'W00001','gBK5SDgE0ebEMWAgF2n9Y','roomOwner','jhInsert','W00001','张三丰','2022-03-13T21:43:35+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (644,'G00001','gBK5SDgE0ebEMWAgF2n9Y','roomUser','jhInsert','W00001','张三丰','2022-03-13T21:43:35+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (645,'W00001','Q07o3miNRKsBXrbCFFpaV','roomOwner','jhInsert','W00001','张三丰','2022-03-13T21:46:04+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (647,'G00001','Q07o3miNRKsBXrbCFFpaV','roomUser','jhInsert','W00001','张三丰','2022-03-13T21:46:04+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (648,'W00001','BJbrcnzn-MwG9KJ6taPZg','roomOwner','jhInsert','W00001','张三丰','2022-03-13T21:53:53+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (650,'G00001','BJbrcnzn-MwG9KJ6taPZg','roomUser','jhInsert','W00001','张三丰','2022-03-13T21:53:53+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (651,'W00001','NVVv8YlhskIX0QHimHMap','roomOwner','jhInsert','W00001','张三丰','2022-03-13T21:54:55+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (653,'G00001','NVVv8YlhskIX0QHimHMap','roomUser','jhInsert','W00001','张三丰','2022-03-13T21:54:55+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (654,'W00001','bhF6JQXgXUqwlkC1Pdl8J','roomOwner','jhInsert','W00001','张三丰','2022-03-13T21:58:09+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (656,'G00001','bhF6JQXgXUqwlkC1Pdl8J','roomUser','jhInsert','W00001','张三丰','2022-03-13T21:58:09+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (657,'W00001','FsTa3bUxZId4MAdowDbxw','roomOwner','jhInsert','W00001','张三丰','2022-03-14T11:20:37+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (658,'H00002','FsTa3bUxZId4MAdowDbxw','roomUser','jhInsert','W00001','张三丰','2022-03-14T11:20:37+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (660,'W00001','8CdYgl90D-Zz0OC6eA_Dk','roomOwner','jhInsert','W00001','张三丰','2022-03-14T20:44:11+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (661,'admin01','8CdYgl90D-Zz0OC6eA_Dk','roomUser','jhInsert','W00001','张三丰','2022-03-14T20:44:11+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (662,'H00002','8CdYgl90D-Zz0OC6eA_Dk','roomUser','jhInsert','W00001','张三丰','2022-03-14T20:44:11+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (666,'W00001','DnY2orBMDexRFGqUFH2ty','roomOwner','jhInsert','W00001','张三丰','2022-03-14T22:14:07+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (667,'chatbot01','DnY2orBMDexRFGqUFH2ty','roomUser','jhInsert','W00001','张三丰','2022-03-14T22:14:07+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (668,'admin01','DnY2orBMDexRFGqUFH2ty','roomUser','jhInsert','W00001','张三丰','2022-03-14T22:14:07+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (669,'chatbot02','DnY2orBMDexRFGqUFH2ty','roomUser','jhInsert','W00001','张三丰','2022-03-14T22:14:07+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (670,'H00002','DnY2orBMDexRFGqUFH2ty','roomUser','jhInsert','W00001','张三丰','2022-03-14T22:14:07+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (671,'W00001','Mz6t4hwgai_KmEd43OAHt','roomOwner','jhInsert','W00001','张三丰','2022-03-14T22:15:03+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (672,'admin01','Mz6t4hwgai_KmEd43OAHt','roomUser','jhInsert','W00001','张三丰','2022-03-14T22:15:03+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (673,'H00002','Mz6t4hwgai_KmEd43OAHt','roomUser','jhInsert','W00001','张三丰','2022-03-14T22:15:03+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (675,'chatbot01','3Kf5iP-hhWcMO0aqFVAkc','roomOwner','jhUpdate','W00001','张三丰','2022-03-15T20:54:35+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (676,'chatbot02','3Kf5iP-hhWcMO0aqFVAkc','roomUser','jhInsert','W00001','张三丰','2022-03-14T22:16:09+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (677,'W00001','Ox8_A0FHhRAte_hVSMnBM','roomOwner','jhInsert','W00001','张三丰','2022-03-14T22:21:05+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (678,'admin01','Ox8_A0FHhRAte_hVSMnBM','roomUser','jhInsert','W00001','张三丰','2022-03-14T22:21:05+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (679,'chatbot01','Ox8_A0FHhRAte_hVSMnBM','roomUser','jhInsert','W00001','张三丰','2022-03-14T22:21:05+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (681,'admin01','gtb-z1CGqQCgddt6o2urB','roomOwner','jhUpdate','W00001','张三丰','2022-03-15T20:55:01+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (682,'H00002','gtb-z1CGqQCgddt6o2urB','roomUser','jhInsert','W00001','张三丰','2022-03-14T22:21:23+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (684,'G00001','osoZAVR8wfazAL39C8E7n','roomOwner','jhInsert','G00001','洪七公','2022-03-15T14:03:01+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (685,'G00003','osoZAVR8wfazAL39C8E7n','roomUser','jhInsert','G00001','洪七公','2022-03-15T14:03:01+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (686,'G00001','EKhZoPqdaBGwWWqoPu40q','roomOwner','jhInsert','G00001','洪七公','2022-03-15T14:03:24+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (687,'G00003','EKhZoPqdaBGwWWqoPu40q','roomUser','jhInsert','G00001','洪七公','2022-03-15T14:03:24+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (688,'G00001','vsUf6nL19V_LombZlLdLW','roomOwner','jhInsert','G00001','洪七公','2022-03-15T14:03:28+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (689,'G00003','vsUf6nL19V_LombZlLdLW','roomUser','jhInsert','G00001','洪七公','2022-03-15T14:03:28+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (704,'G00003','A10EYIM6NKvCxsD4DU76O','roomOwner','jhInsert','G00003','汪剑通','2022-03-18T22:07:23+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (705,'G00002','A10EYIM6NKvCxsD4DU76O','roomUser','jhInsert','G00003','汪剑通','2022-03-18T22:07:23+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (706,'G00001','A10EYIM6NKvCxsD4DU76O','roomUser','jhInsert','G00003','汪剑通','2022-03-18T22:07:23+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (707,'H00001','A10EYIM6NKvCxsD4DU76O','roomUser','jhInsert','G00003','汪剑通','2022-03-18T22:07:23+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (712,'G00003','gaibang','roomAdmin','jhUpdate','G00003','汪剑通','2022-03-19T16:41:50+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (713,'xiaochengxu01','gaibang','roomUser','jhInsert','G00001','洪七公','2022-03-20T15:28:58+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (716,'W00001','zGCb1BOH0-b9S_UE9XYzl','roomOwner','jhInsert','W00001','张三丰','2022-04-30T21:57:56+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (717,'admin01','zGCb1BOH0-b9S_UE9XYzl','roomUser','jhInsert','W00001','张三丰','2022-04-30T21:57:56+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (718,'G00002','zGCb1BOH0-b9S_UE9XYzl','roomUser','jhInsert','W00001','张三丰','2022-04-30T21:57:56+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (719,'W00001','Fgh0utkF8OQ3aEBC0upJL','roomOwner','jhInsert','W00001','张三丰','2022-04-30T22:04:31+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (720,'admin01','Fgh0utkF8OQ3aEBC0upJL','roomUser','jhInsert','W00001','张三丰','2022-04-30T22:04:31+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (721,'G00001','Fgh0utkF8OQ3aEBC0upJL','roomUser','jhInsert','W00001','张三丰','2022-04-30T22:04:31+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (723,'G00001','zGCb1BOH0-b9S_UE9XYzl','roomUser','jhInsert','W00001','张三丰','2022-04-30T22:27:45+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (724,'H00002','zGCb1BOH0-b9S_UE9XYzl','roomUser','jhInsert','W00001','张三丰','2022-04-30T22:27:45+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (725,'W00001','EHxAWffWvQtt2F6bvlURT','roomOwner','jhInsert','W00001','张三丰','2022-05-02T23:25:48+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (726,'G00002','EHxAWffWvQtt2F6bvlURT','roomUser','jhInsert','W00001','张三丰','2022-05-02T23:25:48+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (727,'admin01','EHxAWffWvQtt2F6bvlURT','roomUser','jhInsert','W00001','张三丰','2022-05-02T23:25:48+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (728,'admin01','T9keFDCT5br7sIrjHC5GB','roomOwner','jhInsert','admin01','admin01','2022-05-28T21:05:55+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (729,'test01','T9keFDCT5br7sIrjHC5GB','roomUser','jhInsert','admin01','admin01','2022-05-28T21:05:55+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (730,'G00003','R6JWlpYnDPdj1Q-ZoTFIw','roomOwner','jhInsert','G00003','汪剑通','2022-06-16T17:37:59+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (731,'G00002','R6JWlpYnDPdj1Q-ZoTFIw','roomUser','jhInsert','G00003','汪剑通','2022-06-16T17:37:59+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (732,'G00001','R6JWlpYnDPdj1Q-ZoTFIw','roomUser','jhInsert','G00003','汪剑通','2022-06-16T17:37:59+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (733,'G00004','R6JWlpYnDPdj1Q-ZoTFIw','roomUser','jhInsert','G00003','汪剑通','2022-06-16T17:37:59+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (734,'H00001','R6JWlpYnDPdj1Q-ZoTFIw','roomUser','jhInsert','G00003','汪剑通','2022-06-16T17:37:59+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (735,'G00004','A10EYIM6NKvCxsD4DU76O','roomUser','jhInsert','G00003','汪剑通','2022-06-16T17:38:17+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (736,'W00001','fTjJngxqfH2hm03Dr-E9i','roomOwner','jhInsert','W00001','张三丰','2022-07-01T21:20:49+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (737,'admin01','fTjJngxqfH2hm03Dr-E9i','roomUser','jhInsert','W00001','张三丰','2022-07-01T21:20:49+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (738,'G00002','fTjJngxqfH2hm03Dr-E9i','roomUser','jhInsert','W00001','张三丰','2022-07-01T21:20:49+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (739,'G00001','fTjJngxqfH2hm03Dr-E9i','roomUser','jhInsert','W00001','张三丰','2022-07-01T21:20:49+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (740,'W00001','3BCvVYkJbf-JVCMdTyfiX','roomOwner','jhInsert','W00001','张三丰','2022-07-01T21:21:33+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (741,'G00002','3BCvVYkJbf-JVCMdTyfiX','roomUser','jhInsert','W00001','张三丰','2022-07-01T21:21:33+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (742,'G00001','3BCvVYkJbf-JVCMdTyfiX','roomUser','jhInsert','W00001','张三丰','2022-07-01T21:21:33+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (743,'H00002','3BCvVYkJbf-JVCMdTyfiX','roomUser','jhInsert','W00001','张三丰','2022-07-01T21:21:33+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (744,'xiaochengxu-shigong01','3BCvVYkJbf-JVCMdTyfiX','roomUser','jhInsert','W00001','张三丰','2022-07-01T21:21:33+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (745,'G00002','wudang','roomUser','jhInsert','W00001','张三丰','2022-07-01T21:26:27+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (746,'H00002','wudang','roomUser','jhInsert','admin01','admin01','2022-07-15T09:19:35+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (748,'G00004','wudang','roomUser','jhInsert','admin01','admin01','2022-07-15T09:22:15+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (749,'xiaochengxu-shigong01','wudang','roomUser','jhInsert','admin01','admin01','2022-07-15T09:22:15+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (750,'G00003','wudang','roomUser','jhInsert','admin01','admin01','2022-07-15T09:32:53+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (751,'test01','beS8LsS2pMfHic-hNuGrD','roomUser','jhInsert','admin01','admin01','2022-07-15T09:33:19+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (752,'admin01','ox9Xdq9D-q8jPqSiwRyib','roomOwner','jhInsert','admin01','admin01','2022-07-15T13:50:14+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (753,'test01','ox9Xdq9D-q8jPqSiwRyib','roomUser','jhInsert','admin01','admin01','2022-07-15T13:50:14+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (754,'H00002','ox9Xdq9D-q8jPqSiwRyib','roomUser','jhInsert','admin01','admin01','2022-07-15T13:50:14+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (755,'admin01','Xa47N0-CslZamRtfqgDjr','roomOwner','jhInsert','admin01','admin01','2022-07-15T13:58:14+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (756,'test01','Xa47N0-CslZamRtfqgDjr','roomUser','jhInsert','admin01','admin01','2022-07-15T13:58:14+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (757,'H00002','Xa47N0-CslZamRtfqgDjr','roomUser','jhInsert','admin01','admin01','2022-07-15T13:58:14+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (758,'admin01','4AMRPHHvsPSq4iLDXr-5o','roomOwner','jhInsert','admin01','admin01','2022-07-15T13:59:41+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (759,'test01','4AMRPHHvsPSq4iLDXr-5o','roomUser','jhInsert','admin01','admin01','2022-07-15T13:59:41+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (760,'H00002','4AMRPHHvsPSq4iLDXr-5o','roomUser','jhInsert','admin01','admin01','2022-07-15T13:59:41+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (761,'admin01','Zh0Ipik1MUGmL9Isr37gO','roomOwner','jhInsert','admin01','admin01','2022-07-15T14:00:13+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (762,'test01','Zh0Ipik1MUGmL9Isr37gO','roomUser','jhInsert','admin01','admin01','2022-07-15T14:00:13+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (763,'H00002','Zh0Ipik1MUGmL9Isr37gO','roomUser','jhInsert','admin01','admin01','2022-07-15T14:00:13+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (764,'admin01','ngDxHZTMWhXkIB6_NpOOJ','roomOwner','jhInsert','admin01','admin01','2022-07-15T14:00:55+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (765,'test01','ngDxHZTMWhXkIB6_NpOOJ','roomUser','jhInsert','admin01','admin01','2022-07-15T14:00:55+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (766,'H00002','ngDxHZTMWhXkIB6_NpOOJ','roomUser','jhInsert','admin01','admin01','2022-07-15T14:00:55+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (767,'admin01','T3qv73PM83EGf_4Y2Darp','roomOwner','jhInsert','admin01','admin01','2022-07-15T14:01:32+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (768,'test01','T3qv73PM83EGf_4Y2Darp','roomUser','jhInsert','admin01','admin01','2022-07-15T14:01:32+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (769,'H00002','T3qv73PM83EGf_4Y2Darp','roomUser','jhInsert','admin01','admin01','2022-07-15T14:01:32+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (770,'admin01','xPa_ZbyNO3QOzM0NOJdHK','roomOwner','jhInsert','admin01','admin01','2022-07-15T14:01:59+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (771,'test01','xPa_ZbyNO3QOzM0NOJdHK','roomUser','jhInsert','admin01','admin01','2022-07-15T14:01:59+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (772,'H00002','xPa_ZbyNO3QOzM0NOJdHK','roomUser','jhInsert','admin01','admin01','2022-07-15T14:01:59+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (773,'admin01','ucruTVNJB1xu_A59wGQRq','roomOwner','jhInsert','admin01','admin01','2022-07-15T14:03:13+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (774,'test01','ucruTVNJB1xu_A59wGQRq','roomUser','jhInsert','admin01','admin01','2022-07-15T14:03:13+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (775,'H00002','ucruTVNJB1xu_A59wGQRq','roomUser','jhInsert','admin01','admin01','2022-07-15T14:03:13+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (776,'W00001','SbqjwbcjtB1et65D-NWlT','roomOwner','jhInsert','W00001','张三丰','2022-07-15T14:05:48+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (777,'admin01','SbqjwbcjtB1et65D-NWlT','roomUser','jhInsert','W00001','张三丰','2022-07-15T14:05:48+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (778,'G00002','SbqjwbcjtB1et65D-NWlT','roomUser','jhInsert','W00001','张三丰','2022-07-15T14:05:48+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (779,'W00001','OXf9kp6glLthbhoGpQ6Iy','roomOwner','jhInsert','W00001','张三丰','2022-07-15T14:08:52+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (780,'admin01','OXf9kp6glLthbhoGpQ6Iy','roomUser','jhInsert','W00001','张三丰','2022-07-15T14:08:52+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (781,'G00002','OXf9kp6glLthbhoGpQ6Iy','roomUser','jhInsert','W00001','张三丰','2022-07-15T14:08:52+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (782,'G00001','OXf9kp6glLthbhoGpQ6Iy','roomUser','jhInsert','W00001','张三丰','2022-07-15T14:08:52+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (783,'H00002','OXf9kp6glLthbhoGpQ6Iy','roomUser','jhInsert','W00001','张三丰','2022-07-15T14:08:52+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (784,'G00001','C1vDvXCgb4uAsoa1K8mPC','roomUser','jhInsert','W00001','张三丰','2022-07-20T14:03:50+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (786,'test01','wudang','roomUser','jhInsert','admin01','admin01','2022-07-25T11:49:01+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (787,'admin01','g7mx205cIyVTMMF5BmFHt','roomOwner','jhInsert','admin01','admin01','2022-07-25T11:49:21+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (788,'G00004','g7mx205cIyVTMMF5BmFHt','roomUser','jhUpdate','admin01','admin01','2022-07-25T11:52:42+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (789,'G00003','g7mx205cIyVTMMF5BmFHt','roomUser','jhInsert','admin01','admin01','2022-07-25T11:49:21+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (790,'W00001','g7mx205cIyVTMMF5BmFHt','roomUser','jhInsert','admin01','admin01','2022-07-25T11:49:21+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (792,'xiaochengxu-shigong01','g7mx205cIyVTMMF5BmFHt','roomUser','jhInsert','admin01','admin01','2022-07-25T11:52:46+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (793,'W00002','g7mx205cIyVTMMF5BmFHt','roomUser','jhInsert','W00001','张三丰','2022-07-27T14:14:32+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (794,'md-shepherd-xiaochengxu','g7mx205cIyVTMMF5BmFHt','roomUser','jhInsert','W00002','张无忌','2022-07-27T14:14:51+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (798,'W00001','JTsVo7ONh_2X21d3OTpFD','roomAdmin','jhUpdate','W00001','张三丰','2022-07-27T14:34:03+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (799,'W00002','JTsVo7ONh_2X21d3OTpFD','roomOwner','jhUpdate','W00001','张三丰','2022-07-27T14:34:03+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (800,'H00002','JTsVo7ONh_2X21d3OTpFD','roomUser','jhInsert','W00001','张三丰','2022-07-27T14:23:51+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (801,'G00001','Ox8_A0FHhRAte_hVSMnBM','roomUser','jhInsert','admin01','admin01','2022-08-04T23:29:50+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (802,'G00002','Ox8_A0FHhRAte_hVSMnBM','roomUser','jhInsert','admin01','admin01','2022-08-04T23:29:50+08:00');
INSERT INTO `user_room_role` (`id`,`userId`,`roomId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (803,'X00001','Ox8_A0FHhRAte_hVSMnBM','roomUser','jhInsert','admin01','admin01','2022-08-04T23:29:50+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _view01_user
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `_view01_user` AS
select
  `_user`.`id` AS `id`,
  `_user`.`userId` AS `userId`,
  `_user`.`username` AS `username`,
  `_user`.`userAvatar` AS `userAvatar`,
  `_user`.`contactNumber` AS `contactNumber`,
  `_user`.`gender` AS `gender`,
  `_user`.`birthday` AS `birthday`,
  `_user`.`signature` AS `signature`,
  `_user`.`email` AS `email`,
  `_user`.`clearTextPassword` AS `clearTextPassword`,
  `_user`.`password` AS `password`,
  `_user`.`md5Salt` AS `md5Salt`,
  `_user`.`userType` AS `userType`,
  `_user`.`userStatus` AS `userStatus`,
  `_user`.`config` AS `config`
from
  `_user`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_duoxing_chat_session
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_duoxing_chat_session` AS
select
  `duoxing_chat_session`.`id` AS `id`,
  `duoxing_chat_session`.`userId` AS `userId`,
  `duoxing_chat_session`.`type` AS `type`,
  `duoxing_chat_session`.`chatId` AS `chatId`,
  `duoxing_chat_session`.`lastMessageHistoryId` AS `lastMessageHistoryId`,
  `duoxing_chat_session`.`topChatOrder` AS `topChatOrder`,
  `duoxing_chat_session`.`muted` AS `muted`,
  `duoxing_chat_session`.`unreadCount` AS `unreadCount`,
  `_user`.`username` AS `chatUsername`,
  `_user`.`userAvatar` AS `chatUserAvatar`,
  `room`.`roomName` AS `chatRoomName`,
  `room`.`roomAvatar` AS `chatRoomAvatar`,
  `room`.`roomExtend` AS `chatRoomExtend`
from
  (
  (
    `duoxing_chat_session`
    left join `_user` on(
    (
      (
      `duoxing_chat_session`.`chatId` = `_user`.`userId`
      )
      and (`duoxing_chat_session`.`type` = 'user')
    )
    )
  )
  left join `room` on(
    (
    (
      `duoxing_chat_session`.`chatId` = `room`.`roomId`
    )
    and (`duoxing_chat_session`.`type` = 'room')
    )
  )
  );





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_duoxing_message_history
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_duoxing_message_history` AS
select
  `dmh`.`id` AS `id`,
  `dmh`.`messageType` AS `messageType`,
  `dmh`.`fromUserId` AS `fromUserId`,
  `fromuser`.`username` AS `fromUsername`,
  `fromuser`.`userAvatar` AS `fromUserAvatar`,
  `dmh`.`toUserId` AS `toUserId`,
  `touser`.`username` AS `toUsername`,
  `touser`.`userAvatar` AS `toUserAvatar`,
  `dmh`.`toRoomId` AS `toRoomId`,
  `dmh`.`messageContent` AS `messageContent`,
  `dmh`.`messageFingerprint` AS `messageFingerprint`,
  `dmh`.`messageTimeString` AS `messageTimeString`,
  `dmh`.`messageContentType` AS `messageContentType`,
  `dmh`.`noticeType` AS `noticeType`,
  `dmh`.`messageStatus` AS `messageStatus`
from
  (
  (
    `duoxing_message_history` `dmh`
    left join `_user` `fromuser` on((`fromuser`.`userId` = `dmh`.`fromUserId`))
  )
  left join `_user` `touser` on((`touser`.`userId` = `dmh`.`toUserId`))
  );





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_duoxing_user_friend
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_duoxing_user_friend` AS
select
  `duoxing_user_friend`.`id` AS `id`,
  `duoxing_user_friend`.`userId` AS `userId`,
  `user`.`username` AS `username`,
  `user`.`userAvatar` AS `userAvatar`,
  `duoxing_user_friend`.`friendId` AS `friendId`,
  `friend`.`username` AS `friendUsername`,
  `friend`.`userAvatar` AS `friendUserAvatar`,
  `duoxing_user_friend`.`friendStatus` AS `friendStatus`,
  `duoxing_user_friend`.`requestTime` AS `requestTime`,
  `duoxing_user_friend`.`requestRemark` AS `requestRemark`,
  `duoxing_user_friend`.`responseTime` AS `responseTime`,
  `duoxing_user_friend`.`rejectTimes` AS `rejectTimes`,
  count((`_user_session`.`socketStatus` = 'online')) AS `socketOnlineCount`,
  `friend`.`userStatus` AS `friendUserStatus`,
  `duoxing_user_friend`.`operation` AS `operation`,
  `duoxing_user_friend`.`operationByUserId` AS `operationByUserId`,
  `duoxing_user_friend`.`operationByUser` AS `operationByUser`,
  `duoxing_user_friend`.`operationAt` AS `operationAt`
from
  (
  (
    (
    `duoxing_user_friend`
    left join `_user` `friend` on(
      (
      `duoxing_user_friend`.`friendId` = `friend`.`userId`
      )
    )
    )
    left join `_user` `user` on(
    (`duoxing_user_friend`.`userId` = `user`.`userId`)
    )
  )
  left join `_user_session` on(
    (
    `duoxing_user_friend`.`friendId` = `_user_session`.`userId`
    )
  )
  )
group by
  `duoxing_user_friend`.`userId`,
  `duoxing_user_friend`.`friendId`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_duoxing_user_friend_management
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_duoxing_user_friend_management` AS
select
  `duoxing_user_friend`.`id` AS `id`,
  `duoxing_user_friend`.`userId` AS `userId`,
  `user`.`username` AS `username`,
  `user`.`userAvatar` AS `userAvatar`,
  `duoxing_user_friend`.`friendId` AS `friendId`,
  `friend`.`username` AS `friendUsername`,
  `friend`.`userAvatar` AS `friendUserAvatar`,
  `duoxing_user_friend`.`operation` AS `operation`,
  `duoxing_user_friend`.`operationByUserId` AS `operationByUserId`,
  `duoxing_user_friend`.`operationByUser` AS `operationByUser`,
  `duoxing_user_friend`.`operationAt` AS `operationAt`
from
  (
  (
    `duoxing_user_friend`
    join `_user` `user` on(
    (`duoxing_user_friend`.`userId` = `user`.`userId`)
    )
  )
  join `_user` `friend` on(
    (
    `duoxing_user_friend`.`friendId` = `friend`.`userId`
    )
  )
  );





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_group_info
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_group_info` AS
select
  `g`.`groupId` AS `groupId`,
  `g`.`groupName` AS `groupName`,
  `g`.`groupAvatar` AS `groupAvatar`,
  `g`.`groupDesc` AS `groupDesc`,
  `g`.`groupExtend` AS `groupExtend`,
  count(`ugr`.`userId`) AS `groupUserCount`
from
  (
  `_group` `g`
  left join `_user_group_role` `ugr` on((`g`.`groupId` = `ugr`.`groupId`))
  )
group by
  `g`.`groupId`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_room_info
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_room_info` AS
select
  `r`.`roomId` AS `roomId`,
  `r`.`roomName` AS `roomName`,
  `r`.`roomAvatar` AS `roomAvatar`,
  `r`.`roomDesc` AS `roomDesc`,
  `r`.`roomExtend` AS `roomExtend`,
  count(`urr`.`userId`) AS `roomUserCount`
from
  (
  `room` `r`
  left join `user_room_role` `urr` on((`r`.`roomId` = `urr`.`roomId`))
  )
group by
  `r`.`roomId`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_user
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_user` AS
select
  `_user`.`id` AS `id`,
  `_user`.`userId` AS `userId`,
  `_user`.`username` AS `username`,
  `_user`.`userAvatar` AS `userAvatar`,
  `_user`.`contactNumber` AS `contactNumber`,
  `_user`.`gender` AS `gender`,
  `_user`.`birthday` AS `birthday`,
  `_user`.`signature` AS `signature`,
  `_user`.`email` AS `email`,
  `_user`.`userType` AS `userType`,
  `_user`.`userStatus` AS `userStatus`,
  `_user`.`config` AS `config`
from
  `_user`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_user_group_role
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_user_group_role` AS
select
  `_user_group_role`.`id` AS `id`,
  `_user_group_role`.`userId` AS `userId`,
  `_user_group_role`.`groupId` AS `groupId`,
  `_user_group_role`.`roleId` AS `roleId`,
  `_user`.`username` AS `username`,
  `_user`.`userAvatar` AS `userAvatar`,
  `_role`.`roleName` AS `roleName`,
  `_group`.`groupName` AS `groupName`,
  `_group`.`groupAvatar` AS `groupAvatar`,
  `_user_group_role`.`operation` AS `operation`,
  `_user_group_role`.`operationByUserId` AS `operationByUserId`,
  `_user_group_role`.`operationByUser` AS `operationByUser`,
  `_user_group_role`.`operationAt` AS `operationAt`
from
  (
  (
    (
    `_user_group_role`
    join `_user` on((`_user_group_role`.`userId` = `_user`.`userId`))
    )
    join `_group` on(
    (
      `_user_group_role`.`groupId` = `_group`.`groupId`
    )
    )
  )
  join `_role` on((`_user_group_role`.`roleId` = `_role`.`roleId`))
  );





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_user_room_role
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_user_room_role` AS
select
  `user_room_role`.`id` AS `id`,
  `user_room_role`.`userId` AS `userId`,
  `user_room_role`.`roomId` AS `roomId`,
  `user_room_role`.`roleId` AS `roleId`,
  `_user`.`username` AS `username`,
  `_user`.`userAvatar` AS `userAvatar`,
  `_role`.`roleName` AS `roleName`,
  `room`.`roomName` AS `roomName`,
  `room`.`roomAvatar` AS `roomAvatar`,
  `user_room_role`.`operation` AS `operation`,
  `user_room_role`.`operationByUserId` AS `operationByUserId`,
  `user_room_role`.`operationByUser` AS `operationByUser`,
  `user_room_role`.`operationAt` AS `operationAt`,
  `room`.`operationAt` AS `roomOperationAt`,
  `room`.`roomExtend` AS `roomExtend`
from
  (
  (
    (
    `user_room_role`
    join `_user` on((`user_room_role`.`userId` = `_user`.`userId`))
    )
    join `room` on((`user_room_role`.`roomId` = `room`.`roomId`))
  )
  join `_role` on((`user_room_role`.`roleId` = `_role`.`roleId`))
  );





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_user_total_friend
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_user_total_friend` AS
select
  `_user`.`id` AS `id`,
  `_user`.`userId` AS `userId`,
  `_user`.`username` AS `username`,
  count(1) AS `friendCount`,
  `_user`.`userAvatar` AS `userAvatar`,
  `_user`.`contactNumber` AS `contactNumber`,
  `_user`.`gender` AS `gender`,
  `_user`.`birthday` AS `birthday`,
  `_user`.`signature` AS `signature`,
  `_user`.`email` AS `email`,
  `_user`.`userType` AS `userType`,
  `_user`.`userStatus` AS `userStatus`,
  `_user`.`config` AS `config`
from
  (
  `_user`
  left join `duoxing_user_friend` on(
    (
    (
      `_user`.`userId` = `duoxing_user_friend`.`userId`
    )
    and (
      `duoxing_user_friend`.`friendStatus` = 'isFriend'
    )
    )
  )
  )
group by
  `_user`.`userId`;





