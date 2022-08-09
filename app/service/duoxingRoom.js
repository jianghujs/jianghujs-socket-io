'use strict';

const Service = require('egg').Service;
const { BizError, errorInfoEnum } = require('../constant/error');
const { tableEnum, socketForward, noticeTypeEnum, duoxingRoomRoleInfoEnum, duoxingChatMessageTypeEnum, duoxingMessageContentTypeEnum, duoxingMessageStatusEnum } = require('../constant/constant');
const validateUtil = require('@jianghujs/jianghu/app/common/validateUtil');
const idGenerateUtil = require('@jianghujs/jianghu/app/common/idGenerateUtil');
const _ = require('lodash');
const dayjs = require('dayjs');
const { roomOwner, roomAdmin, roomUser } = duoxingRoomRoleInfoEnum;
const actionDataScheme = Object.freeze({
  roomOpeartionBeforeHook: {
    type: 'object',
    additionalProperties: true,
    required: [ 'roomId' ],
    properties: {
      roomId: { type: 'string' }
    }
  },
  getRoomInfo: {
    type: 'object',
    additionalProperties: true,
    required: [ 'roomId' ],
    properties: {
      roomId: { type: 'string' }
    }
  },
  createRoom: {
    type: 'object',
    additionalProperties: true,
    required: [ 'roomUserIdList' ],
    properties: {
      roomUserIdList: { type: 'array' }
    }
  },
  destroyRoom: {
    type: 'object',
    additionalProperties: true,
    required: [ 'roomId' ],
    properties: {
      roomId: { type: 'string' }
    }
  },
  addRoomUser: {
    type: 'object',
    additionalProperties: true,
    required: [ 'roomId', 'targetUserIdList' ],
    properties: {
      roomId: { type: 'string' },
      targetUserIdList: { type: 'array' }
    }
  },
  delRoomUser: {
    type: 'object',
    additionalProperties: true,
    required: [ 'roomId', 'targetUserIdList' ],
    properties: {
      roomId: { type: 'string' },
      targetUserIdList: { type: 'array' }
    }
  },
  setRoomInfo: {
    type: 'object',
    additionalProperties: true,
    required: [ 'roomId', 'roomName', 'roomExtend' ],
    properties: {
      roomId: { type: 'string' },
      roomName: { type: 'string' },
      roomDesc: { anyOf: [{ type: 'string' }, { type: 'null' }] },
      roomAvatar: { anyOf: [{ type: 'string' }, { type: 'null' }] },
      roomExtend: {
        type: 'object',
        additionalProperties: true,
        required: [],
        properties: {
          roomNotice: { type: 'string' }
        }
      }
    }
  },
  setRoomUserRole: {
    type: 'object',
    additionalProperties: true,
    required: [ 'roomId', 'targetUserIdList', 'roleId' ],
    properties: {
      roomId: { type: 'string' },
      targetUserIdList: { type: 'array' },
      roleId: { type: 'string', enum: [ roomAdmin.roleId, roomUser.roleId ] }
    }
  },
  transferRoom: {
    type: 'object',
    additionalProperties: true,
    required: [ 'roomId', 'userId' ],
    properties: {
      roomId: { type: 'string' },
      userId: { type: 'string' }
    }
  },
  quitRoom: {
    type: 'object',
    additionalProperties: true,
    required: [ 'roomId' ],
    properties: {
      roomId: { type: 'string' }
    }
  },
  updateRoomExtendWhereRoomAdminSubmit: {
    type: 'object',
    additionalProperties: true,
    required: [ 'roomId', 'action' ],
    properties: {
      roomId: { type: 'string' },
      action: { type: 'string' }
    }
  }
});

function checkRoomUserIsRoomOwner(currentRoomUser) {
  if (currentRoomUser) {
    if (roomOwner.roleId === currentRoomUser.roleId) {
      return;
    }
  }
  throw new BizError(errorInfoEnum.resource_forbidden);
}

function checkRoomUserIsRoomAdminOrOwner(currentRoomUser) {
  if (currentRoomUser) {
    if (roomAdmin.roleId === currentRoomUser.roleId) {
      return;
    }
    if (roomOwner.roleId === currentRoomUser.roleId) {
      return;
    }
  }
  throw new BizError(errorInfoEnum.resource_forbidden);
}

class DuoxingRoomService extends Service {

  async roomOpeartionAfterHookForUpdateRoomExtend() {
    const { jianghuKnex } = this.app;
    const { room } = this.ctx.beforHookData;
    let roomUserList = await jianghuKnex(tableEnum.view01_user_room_role).where({ roomId: room.roomId }).select();
    roomUserList.forEach(x => {
      x.sort = jianghuRoomRoleInfoEnum[x.roleId] ? jianghuRoomRoleInfoEnum[x.roleId].sort : 9999;
    });
    roomUserList = _.sortBy(roomUserList, [ 'sort' ], [ 'desc' ]);

    const allRoomUsername = roomUserList.map(user => user.username).join(',');
    const roomExtend = Object.assign(room.roomExtend, { allRoomUsername });

    await jianghuKnex(tableEnum.room, this.ctx)
      .where({ id: room.id })
      .jhUpdate({ roomExtend: JSON.stringify(roomExtend) });
  }

  /**
   * 保存管理员发布的直播间通知
   * @return {Promise<void>}
   */
  async operationRoomExtendWhereRoomAdminSubmit() {
    const { jianghuKnex } = this.app;
    const { actionData } = this.ctx.request.body.appData;
    const { showContent, action, showId } = actionData;
    const { userId, username } = this.ctx.userInfo;
    validateUtil.validate(actionDataScheme.updateRoomExtendWhereRoomAdminSubmit, actionData);
    const { room, roomUserList } = this.ctx.beforHookData;
    if (!room) {
      throw new BizError(errorInfoEnum.chat_room_not_found)
    }
    // 偶尔的 roomExtend 是个Null
    room.roomExtend = Object.assign(room.roomExtend || { roomSliderShow: [] });
    if (action === 'add') {
      const roomSliderShow = room.roomExtend.roomSliderShow || [];
      roomSliderShow.push({ content: showContent.content, markdown: showContent.markdown, type: showContent.type, id: idGenerateUtil.uuid(), createTime: dayjs().format(), operation: `${username}[${userId}]` });
      room.roomExtend = Object.assign(room.roomExtend || {}, { roomSliderShow });
    }
    if (action === 'delete') {
      room.roomExtend.roomSliderShow = room.roomExtend.roomSliderShow.filter(item => item['id'] !== showId);
    }
    await jianghuKnex(tableEnum.room, this.ctx)
      .where({ id: room.id })
      .jhUpdate({ roomExtend: JSON.stringify(room.roomExtend) });
    // 通知所有成员，更新直播间的通知窗口
    await this.sendSocketNoticeToRoomUserList({
      roomUserList, room, noticeType: noticeTypeEnum.refreshRoomNotice,
      messageContent: '直播间公告更新', messageContentType: duoxingMessageContentTypeEnum.text,
      messageFingerprint: idGenerateUtil.uuid(), messageTimeString: dayjs().format()
    })
  }
  async roomOpeartionBeforeHook() {
    const { jianghuKnex, config, logger } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;
    validateUtil.validate(actionDataScheme.roomOpeartionBeforeHook, actionData);

    const { roomId } = actionData;
    const room = await jianghuKnex(tableEnum.room).where({ roomId }).first();
    if (!room) {
      throw new BizError(errorInfoEnum.chat_room_not_found);
    }

    try {
      room.roomExtend = JSON.parse(room.roomExtend || "{}");
    } catch (err) {
      logger.error('[roomOpeartionBeforeHook]', 'roomExtend json format expcetion');
    }

    let roomUserList = await jianghuKnex(tableEnum.view01_user_room_role).where({ roomId }).select();
    roomUserList.forEach(x => {
      x.sort = duoxingRoomRoleInfoEnum[x.roleId] ? duoxingRoomRoleInfoEnum[x.roleId].sort : 9999;
    });
    roomUserList = _.sortBy(roomUserList, [ 'sort' ], [ 'desc' ]);
    const currentRoomUser = roomUserList.find(x => x.userId === userId);

    this.ctx.beforHookData = {
      room,
      roomUserList,
      currentRoomUser
    };
  }

  async roomOpeartionAfterHookForUpdateRoomExtend() {
    const { jianghuKnex } = this.app;
    const { room } = this.ctx.beforHookData;
    let roomUserList = await jianghuKnex(tableEnum.view01_user_room_role).where({ roomId: room.roomId }).select();
    roomUserList.forEach(x => {
      x.sort = duoxingRoomRoleInfoEnum[x.roleId] ? duoxingRoomRoleInfoEnum[x.roleId].sort : 9999;
    });
    roomUserList = _.sortBy(roomUserList, [ 'sort' ], [ 'desc' ]);

    const allRoomUsername = roomUserList.map(user => user.username).join(',');
    const roomExtend = Object.assign((room.roomExtend || {}), { allRoomUsername });

    await jianghuKnex(tableEnum.room, this.ctx)
      .where({ id: room.id })
      .jhUpdate({ roomExtend: JSON.stringify(roomExtend) });
  }

  async getRoomInfo() {
    const { room, roomUserList, currentRoomUser } = this.ctx.beforHookData;
    room.roomUserList = roomUserList;

    return room;
  }

  async createRoom() {
    const { jianghuKnex, config, _cache } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;
    validateUtil.validate(actionDataScheme.createRoom, actionData);

    const { roomUserIdList, roomType, roomId: paramRoomId } = actionData;
    const usernameList = (await jianghuKnex(tableEnum.view01_user).whereIn('userId', roomUserIdList).select()).map(row => row.username);

    const messageContent = `${username} 邀请 ${usernameList.join(',')} 加入群组`;
    usernameList.unshift(username);
    roomUserIdList.unshift(userId);
    const roomUserCount = usernameList.length;
    const roomNameUseUsernameCount = roomUserCount > 3 ? 3 : roomUserCount;
    const roomName = usernameList.slice(0, roomNameUseUsernameCount).join(',') + `等${roomUserCount}人群聊`;

    const roomId = paramRoomId || idGenerateUtil.uuid();
    const roomUserList = [];
    const roomAvatar = `/roomAvatar/default${Math.ceil(Math.random() * 6)}.jpg`;
    const noticeType = noticeTypeEnum.createRoom;
    const messageContentType = duoxingMessageContentTypeEnum.text;
    const messageType = duoxingChatMessageTypeEnum.room;
    const messageFingerprint = idGenerateUtil.uuid();
    const messageTimeString = dayjs().format();
    const messageStatus = duoxingMessageStatusEnum.active;
    const room = {
      roomName,
      roomId,
      roomAvatar,
      roomType
    };
    await jianghuKnex.transaction(async trx => {
      const id = await trx(tableEnum.room, this.ctx).jhInsert(room);
      room.id = id;
      for (const roomUserId of roomUserIdList) {
        const roleId = roomUserId === userId ? roomOwner.roleId : roomUser.roleId;
        roomUserList.push({
          userId: roomUserId,
          roomId,
          roleId
        });
      }
      await trx(tableEnum.user_room_role, this.ctx).jhInsert(roomUserList);
    });

    await this.ctx.service.data.duoxingMessage.insertWithChatSessionUpdate(
      {
        fromUserId: userId,
        toUserId: null,
        toRoomId: roomId,
        messageFingerprint,
        messageContent,
        messageType,
        messageContentType,
        noticeType,
        messageTimeString
      },
      true
    );

    // 更新 roomExtend
    this.ctx.beforHookData = { room };
    await this.roomOpeartionAfterHookForUpdateRoomExtend();

    await this.sendSocketNoticeToRoomUserList({ roomUserList, room, noticeType, messageContent, messageContentType, messageFingerprint, messageTimeString });

    return { roomName, roomId };
  }

  async destroyRoom() {
    const { jianghuKnex, config } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;
    const { room, roomUserList, currentRoomUser } = this.ctx.beforHookData;
    validateUtil.validate(actionDataScheme.destroyRoom, actionData);

    const { roomId } = actionData;

    checkRoomUserIsRoomOwner(currentRoomUser);

    const noticeType = noticeTypeEnum.destroyRoom;
    const messageContentType = duoxingMessageContentTypeEnum.text;
    const messageContent = `${username} 解散了群组`;
    const messageType = duoxingChatMessageTypeEnum.room;
    const messageFingerprint = idGenerateUtil.uuid();
    const messageTimeString = dayjs().format();
    const messageStatus = duoxingMessageStatusEnum.active;
    await jianghuKnex.transaction(async trx => {
      // 删除群组及角色
      await trx(tableEnum.room, this.ctx).where({ roomId }).jhDelete();
      await trx(tableEnum.user_room_role, this.ctx).where({ roomId }).jhDelete();
      // 删除会话
      await trx(tableEnum.duoxing_chat_session, this.ctx).where({ chatId: roomId, type: duoxingChatMessageTypeEnum.room }).jhDelete();
    });

    await this.ctx.service.data.duoxingMessage.insertWithChatSessionUpdate({
      fromUserId: userId,
      toUserId: null,
      toRoomId: roomId,
      messageFingerprint,
      messageContent,
      messageType,
      messageContentType,
      noticeType,
      messageTimeString
    });

    await this.sendSocketNoticeToRoomUserList({ roomUserList, room, noticeType, messageContent, messageContentType, messageFingerprint, messageTimeString });

    return {};
  }

  async addRoomUser() {
    const { jianghuKnex, config } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;
    const { room, roomUserList, currentRoomUser } = this.ctx.beforHookData;
    validateUtil.validate(actionDataScheme.addRoomUser, actionData);

    const { roomId, targetUserIdList } = actionData;

    const targetUserList = await jianghuKnex(tableEnum.view01_user).whereIn('userId', targetUserIdList).select();
    if (targetUserList.length === 0) {
      throw new BizError(errorInfoEnum.chat_please_select_user);
    }

    // checkRoomUserIsRoomAdminOrOwner(currentRoomUser);

    const noticeType = noticeTypeEnum.addRoomUser;
    const messageContentType = duoxingMessageContentTypeEnum.text;
    let messageContent = null;
    const messageType = duoxingChatMessageTypeEnum.room;
    const messageFingerprint = idGenerateUtil.uuid();
    const messageTimeString = dayjs().format();

    await jianghuKnex.transaction(async trx => {
      const willJoinRoomUser = [];
      const newRoomUserList = [];
      for (const targetUser of targetUserList) {
        const { userId: targetRoomUserId } = targetUser;
        let targetRoomUser = roomUserList.find(x => x.userId === targetRoomUserId);

        if (targetRoomUser) {
          continue;
        }

        targetRoomUser = {
          userId: targetRoomUserId,
          roomId,
          roleId: roomUser.roleId
        };
        roomUserList.push(targetRoomUser);
        newRoomUserList.push(targetRoomUser);
        willJoinRoomUser.push({ ...targetRoomUser, username: targetUser.username });
      }

      await trx(tableEnum.user_room_role, this.ctx).jhInsert(newRoomUserList);

      messageContent = `${username} 邀请 ${willJoinRoomUser.map(v => v.username).join(',')} 加入群组`;
    });

    await this.ctx.service.data.duoxingMessage.insertWithChatSessionUpdate(
      {
        fromUserId: userId,
        toUserId: null,
        toRoomId: roomId,
        messageFingerprint,
        messageContent,
        messageType,
        messageContentType,
        noticeType,
        messageTimeString
      },
      true
    );

    // 更新 roomExtend
    this.ctx.beforHookData = { room };
    await this.roomOpeartionAfterHookForUpdateRoomExtend();

    // 通知群成员，哪些人加入群聊
    await this.sendSocketNoticeToRoomUserList({ roomUserList, room, noticeType, messageContent, messageContentType, messageFingerprint, messageTimeString });

    return {};
  }

  async delRoomUser() {
    const { jianghuKnex, config } = this.app;
    const ctx = this.ctx;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;
    const { room, roomUserList, currentRoomUser } = this.ctx.beforHookData;
    validateUtil.validate(actionDataScheme.delRoomUser, actionData);

    const { roomId, targetUserIdList } = actionData;
    const targetUserList = await jianghuKnex(tableEnum.view01_user).whereIn('userId', targetUserIdList).select();
    if (targetUserList.length === 0) {
      throw new BizError(errorInfoEnum.chat_please_select_user);
    }
    let resultUserIdList = [];

    checkRoomUserIsRoomAdminOrOwner(currentRoomUser);

    const willDeleteRoomUser = [];
    const noticeType = noticeTypeEnum.delRoomUser;
    const messageContentType = duoxingMessageContentTypeEnum.notice;
    let messageContent = null;
    const messageType = duoxingChatMessageTypeEnum.room;
    const messageTimeString = dayjs().format();
    await jianghuKnex.transaction(async trx => {
      for (const targetUser of targetUserList) {
        const { userId: targetRoomUserId } = targetUser;
        const targetRoomUser = roomUserList.find(x => x.userId === targetRoomUserId);

        // 用户不再群内
        if (!targetRoomUser) {
          continue;
        }
        // 不能删除群主
        if (roomOwner.roleId === targetRoomUser.roleId) {
          continue;
        }
        // 不能删除自己
        if (userId === targetRoomUserId) {
          continue;
        }
        // 只有群主能 删除管理员
        if (roomAdmin.roleId === targetRoomUser.roleId && roomOwner.roleId !== currentRoomUser.roleId) {
          continue;
        }
        // 删除会话
        await trx(tableEnum.duoxing_chat_session, this.ctx)
          .where({
            chatId: roomId,
            type: duoxingChatMessageTypeEnum.room,
            userId: targetUser.userId
          })
          .delete();
        await trx(tableEnum.user_room_role, this.ctx).where({ userId: targetRoomUserId, roomId }).jhDelete();
        willDeleteRoomUser.push({ ...targetRoomUser, username: targetUser.username });
      }
      resultUserIdList = willDeleteRoomUser.map(roomUser => roomUser.userId);

      if (resultUserIdList.length === 0) {
        return { rows: resultUserIdList };
      }

      messageContent = `${username} 将${willDeleteRoomUser.map(v => v.username).join(',')} 移出群组`;
    });

    const messageFingerprint = idGenerateUtil.uuid();
    await ctx.service.data.duoxingMessage.insertWithChatSessionUpdate({
      fromUserId: userId,
      toUserId: null,
      toRoomId: roomId,
      messageFingerprint,
      messageContent,
      messageType,
      messageContentType,
      noticeType,
      messageTimeString
    });

    // 更新 roomExtend
    this.ctx.beforHookData = { room };
    await this.roomOpeartionAfterHookForUpdateRoomExtend();

    await this.sendSocketNoticeToRoomUserList({ roomUserList, room, noticeType, messageContent, messageContentType, messageFingerprint, messageTimeString });

    return { rows: resultUserIdList };
  }

  async setRoomInfo() {
    const { jianghuKnex, config } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { room } = this.ctx.beforHookData;
    const { userId, username } = this.ctx.userInfo;
    validateUtil.validate(actionDataScheme.setRoomInfo, actionData);

    const { roomId, roomName, roomDesc, roomAvatar, roomExtend } = actionData;

    await jianghuKnex(tableEnum.room, this.ctx)
      .where({ roomId })
      .jhUpdate({
        roomName,
        roomDesc,
        roomAvatar,
        roomExtend: JSON.stringify(roomExtend)
      });
    const roomUserList = await jianghuKnex(tableEnum.user_room_role).where({ roomId }).select();
    room.roomExtend = roomExtend || {};
    const noticeType = noticeTypeEnum.setRoomInfo;
    const messageContent = '群信息变更';
    const messageContentType = duoxingMessageContentTypeEnum.text;
    const messageTimeString = dayjs().format();
    const messageFingerprint = idGenerateUtil.uuid();

    // 更新 roomExtend
    this.ctx.beforHookData = { room };
    await this.roomOpeartionAfterHookForUpdateRoomExtend();

    await this.sendSocketNoticeToRoomUserList({ roomUserList, room, noticeType, messageContent, messageContentType, messageFingerprint, messageTimeString });

    return {};
  }

  async setRoomUserRole() {
    const { jianghuKnex, config } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;
    const { room, roomUserList, currentRoomUser } = this.ctx.beforHookData;
    validateUtil.validate(actionDataScheme.setRoomUserRole, actionData);

    checkRoomUserIsRoomOwner(currentRoomUser);

    const { roomId, targetUserIdList, roleId: targetRoomRoleId } = actionData;
    const targetRoomRoleName = duoxingRoomRoleInfoEnum[targetRoomRoleId].roleName;
    let resultUserIdList = [];

    if (targetUserIdList.includes(userId)) {
      throw new BizError(errorInfoEnum.chat_room_user_cant_not_set);
    }

    const targetUserList = await jianghuKnex(tableEnum.view01_user).whereIn('userId', targetUserIdList).select();
    if (targetUserList.length === 0) {
      throw new BizError(errorInfoEnum.chat_please_select_user);
    }

    const noticeType = noticeTypeEnum.setRoomUserRole;
    const messageContentType = duoxingMessageContentTypeEnum.text;
    let messageContent = null;
    const messageType = duoxingChatMessageTypeEnum.room;
    const messageFingerprint = idGenerateUtil.uuid();
    const messageTimeString = dayjs().format();
    await jianghuKnex.transaction(async trx => {
      const willJoinRoomUser = [];
      for (const targetUser of targetUserList) {
        const { userId: targetRoomUserId } = targetUser;
        // 过滤掉自己
        if (targetRoomUserId === userId) {
          continue;
        }
        const targetRoomUser = roomUserList.find(x => x.userId === targetRoomUserId);

        await trx(tableEnum.user_room_role, this.ctx).where({ id: targetRoomUser.id }).jhUpdate({
          roleId: targetRoomRoleId
        });
        roomUserList.push(targetRoomUser);
        willJoinRoomUser.push({ ...targetRoomUser, username: targetUser.username });
      }
      resultUserIdList = willJoinRoomUser.map(roomUser => roomUser.userId);

      if (resultUserIdList.length === 0) {
        return { rows: resultUserIdList };
      }

      messageContent = `${username} 将 ${willJoinRoomUser.map(v => v.username).join(',')} 设置成了 ${targetRoomRoleName}`;
    });

    await this.ctx.service.data.duoxingMessage.insertWithChatSessionUpdate({
      fromUserId: userId,
      toUserId: null,
      toRoomId: roomId,
      messageFingerprint,
      messageContent,
      messageType,
      messageContentType,
      noticeType,
      messageTimeString
    });

    // 更新 roomExtend
    this.ctx.beforHookData = { room };
    await this.roomOpeartionAfterHookForUpdateRoomExtend();

    await this.sendSocketNoticeToRoomUserList({ roomUserList, room, noticeType, messageContent, messageContentType, messageFingerprint, messageTimeString });

    return { rows: resultUserIdList };
  }

  async transferRoom() {
    const { jianghuKnex, config } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;
    const { room, roomUserList, currentRoomUser } = this.ctx.beforHookData;
    validateUtil.validate(actionDataScheme.transferRoom, actionData);

    const { roomId, userId: targetRoomUserId } = actionData;

    checkRoomUserIsRoomOwner(currentRoomUser);
    const targetRoomUser = roomUserList.find(x => x.userId === targetRoomUserId);
    if (!targetRoomUser) {
      throw new BizError(errorInfoEnum.chat_user_not_in_room);
    }

    const { username: targetRoomUsername } = targetRoomUser;
    const noticeType = noticeTypeEnum.transferRoom;
    const messageContentType = duoxingMessageContentTypeEnum.text;
    const messageContent = `${username} 移交群主给 ${targetRoomUsername}`;
    const messageType = duoxingChatMessageTypeEnum.room;
    const messageFingerprint = idGenerateUtil.uuid();
    const messageTimeString = dayjs().format();
    const messageStatus = duoxingMessageStatusEnum.active;

    await jianghuKnex.transaction(async trx => {
      await trx(tableEnum.user_room_role, this.ctx).where({ id: currentRoomUser.id }).jhUpdate({
        roleId: roomAdmin.roleId
      });
      await trx(tableEnum.user_room_role, this.ctx).where({ id: targetRoomUser.id }).jhUpdate({
        roleId: roomOwner.roleId
      });
    });

    await this.ctx.service.data.duoxingMessage.insertWithChatSessionUpdate(
      {
        fromUserId: userId,
        toUserId: null,
        toRoomId: roomId,
        messageFingerprint,
        messageContent,
        messageType,
        messageContentType,
        noticeType,
        messageTimeString
      },
      true
    );

    // 更新 roomExtend
    this.ctx.beforHookData = { room };
    await this.roomOpeartionAfterHookForUpdateRoomExtend();

    await this.sendSocketNoticeToRoomUserList({ roomUserList, room, noticeType, messageContent, messageContentType, messageFingerprint, messageTimeString });

    return {};
  }

  async quitRoom() {
    const { jianghuKnex, config } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;
    const { room, roomUserList, currentRoomUser } = this.ctx.beforHookData;
    validateUtil.validate(actionDataScheme.quitRoom, actionData);

    const { roomId } = actionData;
    // 用户不在群内
    if (!currentRoomUser) {
      return errorInfoEnum.chat_user_not_in_room;
    }
    // 群主不能直接离开
    if (roomOwner.roleId === currentRoomUser.roleId) {
      return errorInfoEnum.chat_owner_cannot_exit;
    }
    const { roomName } = room;

    const noticeType = noticeTypeEnum.quitRoom;
    const messageContentType = duoxingMessageContentTypeEnum.text;
    const messageContent = `${username} 退出了群组`;
    const messageType = duoxingChatMessageTypeEnum.room;
    const messageFingerprint = idGenerateUtil.uuid();
    const messageTimeString = dayjs().format();
    await jianghuKnex.transaction(async trx => {
      await trx(tableEnum.user_room_role, this.ctx).where({ roomId, userId }).delete();
      await trx(tableEnum.duoxing_chat_session, this.ctx).where({ chatId: roomId, type: duoxingChatMessageTypeEnum.room, userId }).delete();
    });

    await this.ctx.service.data.duoxingMessage.insertWithChatSessionUpdate({
      fromUserId: userId,
      toUserId: null,
      toRoomId: roomId,
      messageFingerprint,
      messageContent,
      messageType,
      messageContentType,
      noticeType,
      messageTimeString
    });

    // 更新 roomExtend
    this.ctx.beforHookData = { room };
    await this.roomOpeartionAfterHookForUpdateRoomExtend();

    await this.sendSocketNoticeToRoomUserList({ roomUserList, room, noticeType, messageContent, messageContentType, messageFingerprint, messageTimeString });

    return {};
  }

  async sendSocketNoticeToRoomUserList({ roomUserList, room, noticeType, messageContent, messageContentType, messageFingerprint, messageTimeString }) {
    const { config } = this.app;
    const { appId } = config;
    const { userId, username } = this.ctx.userInfo;
    const messageType = duoxingChatMessageTypeEnum.room;
    const { roomId: toRoomId, roomName: toRoomName } = room;
    for (const roomUser of roomUserList) {
      const appData = {
        appId,
        actionData: {
          fromUserId: userId,
          fromUsername: username,
          messageType,
          toRoomId,
          toRoomName,
          noticeType,
          messageContent,
          messageContentType,
          messageFingerprint,
          messageTimeString,
          messageStatus: duoxingMessageStatusEnum.active
        }
      };
      const socketBody = socketForward.roomNoticeBodyBuild({ appData });
      await this.ctx.service.duoxingSocket.socketEmit({ userId: roomUser.userId, socketBody });
    }
  }
}

module.exports = DuoxingRoomService;

