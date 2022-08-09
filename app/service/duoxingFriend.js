"use strict";

// ========================================常用 require start===========================================
const Service = require("egg").Service;
const { BizError, errorInfoEnum } = require("../constant/error");
const { tableEnum, socketForward, noticeTypeEnum, duoxingChatMessageTypeEnum, duoxingMessageContentTypeEnum, duoxingMessageStatusEnum, duoxingFriendStatusEnum } = require("../constant/constant");
const idGenerateUtil = require("@jianghujs/jianghu/app/common/idGenerateUtil");
const validateUtil = require("@jianghujs/jianghu/app/common/validateUtil");
const _ = require("lodash");
const dayjs = require("dayjs");
const actionDataScheme = Object.freeze({
  addUserFriend: {
    type: "object",
    additionalProperties: true,
    required: ["friendId"],
    properties: {
      friendId: { type: "string" },
      requestRemark: { type: "string" },
    },
  },
  delUserFriend: {
    type: "object",
    additionalProperties: true,
    required: ["friendId"],
    properties: {
      friendId: { type: "string" },
    },
  },
  acceptUserFriend: {
    type: "object",
    additionalProperties: true,
    required: ["friendId"],
    properties: {
      friendId: { type: "string" },
    },
  },
  rejectUserFriend: {
    type: "object",
    additionalProperties: true,
    required: ["friendId"],
    properties: {
      friendId: { type: "string" },
    },
  },
});


class DuoxingFriendService extends Service {
  async getUserFriend() {
    const { jianghuKnex } = this.app;
    const { userId } = this.ctx.userInfo;

    const userFriendList = await jianghuKnex(tableEnum.view01_duoxing_user_friend).where({ userId, friendStatus: duoxingFriendStatusEnum.isFriend, friendUserStatus: "active" }).select();
    for (const userFriend of userFriendList) {
      userFriend.isOnline = !!userFriend.socketOnlineCount;
    }
    return { rows: userFriendList };
  }

  async addUserFriend() {
    const { jianghuKnex, config } = this.app;
    const { appId } = config;
    const { actionData } = this.ctx.request.body.appData;
    const { userId, username } = this.ctx.userInfo;
    validateUtil.validate(actionDataScheme.addUserFriend, actionData);

    const { friendId, requestRemark } = actionData;

    if (friendId === userId) {
      throw new BizError(errorInfoEnum.chat_can_not_add_yourself);
    }

    const toUser = await jianghuKnex(tableEnum.view01_user).where({ userId: friendId }).first();
    if (!toUser) {
      throw new BizError(errorInfoEnum.user_not_exist);
    }

    const { myUserFriendData, friendUserFriendData } = await this.getUserFriendRelationAndCheckNotFriend(
      {
        jianghuKnex,
        userId,
        friendId,
        forceCreate: true,
      }
    );

    const requestTime = dayjs().format();
    await jianghuKnex(tableEnum.duoxing_user_friend, this.ctx)
      .where({ id: friendUserFriendData.id })
      .jhUpdate({
        friendStatus: duoxingFriendStatusEnum.waitingApprove,
        requestTime,
        requestRemark,
      });

    const date = new Date();
    const messageTimeString = dayjs(date).format();
    const messageStatus = duoxingMessageStatusEnum.active;
    const noticeType = noticeTypeEnum.addUserFriend;
    const messageFingerprint = idGenerateUtil.uuid();
    const messageType = duoxingChatMessageTypeEnum.user;
    const messageContentType = duoxingMessageContentTypeEnum.text;
    const messageContent = "好友申请";
    const appData = {
      appId,
      actionData: {
        fromUserId: userId,
        fromUsername: username,
        friendId,
        requestRemark,
        requestTime,
        noticeType,
        messageContent,
        messageContentType,
        messageTimeString,
        messageStatus,
      },
    };
    const socketBody = socketForward.userNoticeBodyBuild({ appData });
    await this.ctx.service.duoxingSocket.socketEmit({ userId: friendId, socketBody });
    await this.ctx.service.duoxingSocket.socketEmit({ userId, socketBody });

    // 历史消息落库
    await this.ctx.service.data.duoxingMessage.insertWithChatSessionUpdate(
      {
        fromUserId: userId,
        toUserId: friendId,
        toRoomId: null,
        messageFingerprint,
        messageContent,
        messageType,
        messageContentType,
        noticeType,
        messageTimeString,
      },
      true
    );

    return {
      fromUserId: userId,
      friendId,
      requestRemark,
      messageContent,
      requestTime,
    };
  }

  async acceptUserFriend() {
    const { actionData } = this.ctx.request.body.appData;
    const { jianghuKnex, config } = this.app;
    const { appId } = config;
    validateUtil.validate(actionDataScheme.acceptUserFriend, actionData);
    const { userId, username } = this.ctx.userInfo;

    const { friendId } = actionData;
    const responseTime = dayjs().format();

    const { myUserFriendData, friendUserFriendData } = await this.getUserFriendRelationAndCheckNotFriend(
      {
        jianghuKnex,
        userId,
        friendId,
        forceCreate: false,
      }
    );
    if (!myUserFriendData || !friendUserFriendData) {
      throw new BizError(errorInfoEnum.data_not_found);
    }
    if (duoxingFriendStatusEnum.rejectApply === myUserFriendData.friendStatus) {
      throw new BizError(errorInfoEnum.chat_already_reject);
    }

    await jianghuKnex(tableEnum.duoxing_user_friend, this.ctx)
      .where({ id: myUserFriendData.id })
      .orWhere({ id: friendUserFriendData.id })
      .jhUpdate({ friendStatus: duoxingFriendStatusEnum.isFriend });

    const date = new Date();
    const messageTimeString = dayjs(date).format();
    const messageStatus = duoxingMessageStatusEnum.active;
    const noticeType = noticeTypeEnum.acceptUserFriend;
    const messageFingerprint = idGenerateUtil.uuid();
    const messageType = duoxingChatMessageTypeEnum.user;
    const messageContentType = duoxingMessageContentTypeEnum.text;
    const messageContent = "同意好友申请";
    const appData = {
      appId,
      actionData: {
        fromUserId: userId,
        fromUsername: username,
        toUserId: friendId,
        responseTime,
        noticeType,
        messageContent,
        messageContentType,
        messageTimeString,
        messageStatus,
      },
    };
    const socketBody = socketForward.userNoticeBodyBuild({ appData });
    await this.ctx.service.duoxingSocket.socketEmit({ userId: userId, socketBody });
    await this.ctx.service.duoxingSocket.socketEmit({ userId: friendId, socketBody });

    // 历史消息落库
    await this.ctx.service.data.duoxingMessage.insertWithChatSessionUpdate({
      fromUserId: userId,
      toUserId: friendId,
      toRoomId: null,
      messageFingerprint,
      messageContent,
      messageType,
      messageContentType,
      noticeType,
      messageTimeString,
    });

    return {};
  }

  async rejectUserFriend() {
    const { actionData } = this.ctx.request.body.appData;
    const { jianghuKnex, config } = this.app;
    const { appId } = config;
    validateUtil.validate(actionDataScheme.rejectUserFriend, actionData);

    const { friendId } = actionData;
    const { userId, username } = this.ctx.userInfo;

    const { myUserFriendData, friendUserFriendData } = await this.getUserFriendRelationAndCheckNotFriend(
      {
        jianghuKnex,
        userId,
        friendId,
        forceCreate: false,
      }
    );
    if (!myUserFriendData || !friendUserFriendData) {
      throw new BizError(errorInfoEnum.data_not_found);
    }

    const responseTime = dayjs().format();
    await jianghuKnex(tableEnum.duoxing_user_friend, this.ctx)
      .where({ id: myUserFriendData.id })
      .jhUpdate({
        friendStatus: duoxingFriendStatusEnum.rejectApply,
        responseTime,
      });

    const date = new Date();
    const messageTimeString = dayjs(date).format();
    const messageStatus = duoxingMessageStatusEnum.active;
    const noticeType = noticeTypeEnum.rejectUserFriend;
    const messageFingerprint = idGenerateUtil.uuid();
    const messageType = duoxingChatMessageTypeEnum.user;
    const messageContentType = duoxingMessageContentTypeEnum.text;
    const messageContent = "拒绝好友申请";
    const appData = {
      appId,
      actionData: {
        fromUserId: userId,
        fromUsername: username,
        toUserId: friendId,
        responseTime,
        noticeType,
        messageContent,
        messageContentType,
        messageTimeString,
        messageStatus,
      },
    };
    const socketBody = socketForward.userNoticeBodyBuild({ appData });
    await this.ctx.service.duoxingSocket.socketEmit({ userId: userId, socketBody });
    await this.ctx.service.duoxingSocket.socketEmit({ userId: friendId, socketBody });

    // 历史消息落库
    await this.ctx.service.data.duoxingMessage.insertWithChatSessionUpdate({
      fromUserId: userId,
      toUserId: friendId,
      toRoomId: null,
      messageFingerprint,
      messageContent,
      messageType,
      messageContentType,
      noticeType,
      messageTimeString,
    });

    return {};
  }

  async getUserFriendRequest() {
    const { actionData } = this.ctx.request.body.appData;
    const { jianghuKnex, config } = this.app;
    const { appId } = config;
    const { userId, username } = this.ctx.userInfo;

    const applyList = await jianghuKnex(tableEnum.view01_duoxing_user_friend)
      .where({ friendId: userId, friendStatus: duoxingFriendStatusEnum.waitingApprove })
      .select();
    applyList.forEach((item) => {
      item.isApply = true;
    });

    const waitingApproveList = await jianghuKnex(tableEnum.view01_duoxing_user_friend)
      .where({ userId: userId, friendStatus: duoxingFriendStatusEnum.waitingApprove })
      .select();

    const allList = _.sortBy(
      applyList.concat(waitingApproveList),
      ["sort", "requestTime"],
      ["desc", "asc"]
    );

    return { rows: allList };
  }

  async delUserFriend() {
    const { actionData } = this.ctx.request.body.appData;
    const { jianghuKnex, config } = this.app;
    const { appId } = config;
    validateUtil.validate(actionDataScheme.delUserFriend, actionData);
    const { userId, username } = this.ctx.userInfo;

    const { friendId } = actionData;

    const userFriendData = await jianghuKnex(tableEnum.duoxing_user_friend).where({ userId, friendId }).first();
    if (!userFriendData) {
      throw new BizError(errorInfoEnum.chat_not_user_friend);
    }

    await jianghuKnex(tableEnum.duoxing_user_friend, this.ctx).where({ userId, friendId }).orWhere({ userId: friendId, friendId: userId }).jhUpdate({ friendStatus: duoxingFriendStatusEnum.notFriend });

    // 删除会话
    await jianghuKnex(tableEnum.duoxing_chat_session, this.ctx)
      .where({
        chatId: friendId,
        type: duoxingChatMessageTypeEnum.user,
        userId: userId,
      })
      .orWhere({
        chatId: userId,
        type: duoxingChatMessageTypeEnum.user,
        userId: friendId,
      })
      .delete();

    const noticeType = noticeTypeEnum.delUserFriend;
    const messageType = duoxingChatMessageTypeEnum.user;
    const messageContentType = duoxingMessageContentTypeEnum.text;
    const messageFingerprint = idGenerateUtil.uuid();
    const date = new Date();
    const messageTimeString = dayjs(date).format();
    const messageContent = "解除好友关系";
    const messageStatus = duoxingMessageStatusEnum.active;

    const appData = {
      appId,
      actionData: {
        fromUserId: userId,
        fromUsername: username,
        toUserId: friendId,
        messageContent,
        noticeType,
        messageType,
        messageContentType,
        messageTimeString,
        messageStatus,
      },
    };
    const socketBody = socketForward.userNoticeBodyBuild({ appData });
    // 通知 当前用户&好友; xxx 和 xxx 已解除好友关系.
    await this.ctx.service.duoxingSocket.socketEmit({ userId, socketBody });
    await this.ctx.service.duoxingSocket.socketEmit({ userId: friendId, socketBody });

    await this.ctx.service.data.duoxingMessage.insertWithChatSessionUpdate({
      fromUserId: userId,
      toUserId: friendId,
      toRoomId: null,
      messageFingerprint,
      messageContent,
      messageType,
      messageContentType,
      noticeType,
      messageTimeString,
    });

    return {};
  }

  async getUserFriendRelationAndCheckNotFriend({
    jianghuKnex,
    userId,
    friendId,
    forceCreate = false,
  }) {
    let myUserFriendData = await jianghuKnex(tableEnum.duoxing_user_friend)
      .where({ userId, friendId })
      .first();
    let friendUserFriendData = await jianghuKnex(tableEnum.duoxing_user_friend)
      .where({ userId: friendId, friendId: userId })
      .first();
    if (!myUserFriendData && forceCreate) {
      myUserFriendData = { userId, friendId, friendStatus: duoxingFriendStatusEnum.notFriend };
      const id = await jianghuKnex(tableEnum.duoxing_user_friend, this.ctx).jhInsert(
        myUserFriendData
      );
      myUserFriendData.id = id;
    }
    if (!friendUserFriendData && forceCreate) {
      friendUserFriendData = {
        userId: friendId,
        friendId: userId,
        friendStatus: duoxingFriendStatusEnum.notFriend,
      };
      const id = await jianghuKnex(tableEnum.duoxing_user_friend, this.ctx).jhInsert(
        friendUserFriendData
      );
      friendUserFriendData.id = id;
    }

    if (
      myUserFriendData.friendStatus === "isFriend" &&
      friendUserFriendData.friendStatus === "isFriend"
    ) {
      throw new BizError(errorInfoEnum.chat_already_friend);
    }

    return { myUserFriendData, friendUserFriendData };
  }
}

module.exports = DuoxingFriendService;
