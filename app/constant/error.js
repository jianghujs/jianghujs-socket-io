'use strict';

class ValidateError extends Error {
  constructor({ errorCode, errorReason, errorReasonSupplement }) {
    super(JSON.stringify({errorCode, errorReason, errorReasonSupplement}));
    this.name = 'ValidateError';
    this.errorCode = errorCode;
    this.errorReason = errorReason;
    this.errorReasonSupplement = errorReasonSupplement;
  }
}

class BizError extends Error {
  constructor({ errorCode, errorReason, errorReasonSupplement }) {
    super(JSON.stringify({errorCode, errorReason, errorReasonSupplement}));
    this.name = 'BizError';
    this.errorCode = errorCode;
    this.errorReason = errorReason;
    this.errorReasonSupplement = errorReasonSupplement;
  }
}

const errorInfoEnum = Object.freeze({
  resource_forbidden: { errorCode: "resource_forbidden", errorReason: "无执行权限" },

  // =============================socket error: socket消息问题===========================================
  socket_connect_success: { errorCode: "socket_connect_success", errorReason: "连接成功" },
  socket_authentication_failed: {
    errorCode: "socket_authentication_failed",
    errorReason: "认证失败",
  },

  // =============================data error: 数据错误===========================================
  data_no_update_option: { errorCode: "no_update_option", errorReason: "没有要修改的选项" },
  data_not_match: { errorCode: "data_not_found", errorReason: "数据不匹配" },
  data_not_unique: { errorCode: "data_not_found", errorReason: "数据包含多条" },
  data_not_found: { errorCode: "data_not_found", errorReason: "数据不存在" },

  // =============================user error: 用户错误===========================================
  user_not_exist: { errorCode: "request_user_not_exist", errorReason: "用户不存在" },
  user_password_error: {
    errorCode: "user_password_error",
    errorReason: "用户名 或 密码错误, 请重新输入!",
  },
  user_banned: { errorCode: "user_banned", errorReason: "账号被封禁! 请联系管理员。" },
  user_status_error: { errorCode: "user_status_error", errorReason: "用户状态异常! " },
  user_password_reset_old_error: {
    errorCode: "user_password_reset_old_error",
    errorReason: "旧密码错误, 请重新输入!",
  },
  user_password_reset_same_error: {
    errorCode: "user_password_reset_same_error",
    errorReason: "新旧密码不能一样, 请重新输入!",
  },

  // =============================chat error: 聊天错误===========================================
  chat_user_not_exist: { errorCode: "chat_user_not_exist", errorReason: "用户不存在" },
  chat_already_group_user: { errorCode: "chat_already_group_user", errorReason: "已经是群成员" },
  chat_owner_cannot_exit: { errorCode: "chat_owner_cannot_exit", errorReason: "群主不能直接退出" },
  chat_already_friend: { errorCode: "chat_already_friend", errorReason: "已经是好友关系" },
  chat_not_user_friend: { errorCode: "chat_not_user_friend", errorReason: "不是好友关系" },
  chat_already_reject: { errorCode: "chat_already_reject", errorReason: "已经拒绝了" },
  chat_group_not_found: { errorCode: "chat_group_not_found", errorReason: "群不存在" },
  chat_user_not_in_group: { errorCode: "chat_user_not_in_group", errorReason: "用户不在群组内" },
  chat_user_is_baned_in_group: {
    errorCode: "chat_user_is_baned_in_group",
    errorReason: "用户被禁言",
  },
  chat_group_user_cant_not_set: {
    errorCode: "chat_group_user_cant_not_set",
    errorReason: "你不能修改当前群用户数据",
  },
  chat_can_not_operate_group_owner: {
    errorCode: "chat_can_not_operate_group_owner",
    errorReason: "不能对群主进行此操作",
  },
  chat_can_not_operate_group_admin: {
    errorCode: "chat_can_not_operate_group_admin",
    errorReason: "不能对群管理员进行此操作",
  },
  chat_please_select_user: { errorCode: "chat_please_select_user", errorReason: "请选择用户" },
  chat_message_not_found: { errorCode: "chat_message_not_found", errorReason: "消息不存在" },
  chat_message_forbidden: { errorCode: "chat_message_forbidden", errorReason: "无执行权限(消息)" },
  chat_can_not_add_yourself: {
    errorCode: "chat_can_not_add_yourself",
    errorReason: "不能添加自己为好友",
  },
});

module.exports = {
  ValidateError,
  BizError,
  errorInfoEnum,
};
