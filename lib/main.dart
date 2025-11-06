import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:openim_common/openim_common.dart';

import 'app.dart';

// 后台消息处理函数 - 必须在顶层定义
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  Logger.print('📬 后台收到 FCM 消息:');
  Logger.print('  - 消息ID: ${message.messageId}');
  Logger.print('  - 标题: ${message.notification?.title ?? "无"}');
  Logger.print('  - 内容: ${message.notification?.body ?? "无"}');
  Logger.print('  - 数据: ${message.data}');
  Logger.print('  - 来自: ${message.from}');
  
  // 后台消息由系统自动显示通知，这里主要做日志记录
}

void main() {
  // 安全地注册后台消息处理函数
  // 使用 try-catch 确保即使出错也不会导致应用无法启动
  try {
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    Logger.print('✅ 后台消息处理函数已注册');
  } catch (e) {
    Logger.print('⚠️ 注册后台消息处理函数失败（可能 Firebase 尚未初始化）: $e');
  }

  runZonedGuarded(() {
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      Logger.print('FlutterError: ${details.exception.toString()}, ${details.stack.toString()}');
    };

    Config.init(() => runApp(const ChatApp()));
  }, (error, stackTrace) {
    Logger.print('FlutterError: ${error.toString()}, ${stackTrace.toString()}', onlyConsole: true);
  });
}
