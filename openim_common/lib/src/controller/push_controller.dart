import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_api_availability/google_api_availability.dart';
import 'package:openim_common/openim_common.dart';

import 'firebase_options.dart';

enum PushType { FCM, none }

const appID = 'your-app-id';
const appKey = 'your-app-key';
const appSecret = 'your-app-secret';

class PushController extends GetxService {
  PushType pushType = PushType.FCM;

  /// Logs in the user with the specified alias to the push notification service.
  ///
  /// Depending on the push type configured, it either logs in using the Getui or
  /// FCM push service.
  ///
  /// If using Getui, it binds the alias to the Getui service.
  ///
  /// If using FCM, it listens for token refresh events and logs in, invoking the
  /// provided callback with the new token.
  ///
  /// Throws an assertion error if the FCM push type is selected but the
  /// `onTokenRefresh` callback is not provided.
  ///
  /// - Parameters:
  ///   - alias: The alias to bind to the push notification service for getui.
  ///   - onTokenRefresh: A callback function that is invoked with the refreshed
  ///     token when using FCM. Required if the push type is FCM.
  static void login(String alias, {void Function(String token)? onTokenRefresh}) {
    if (PushController().pushType == PushType.FCM) {
      assert((PushController().pushType == PushType.FCM && onTokenRefresh != null));

      FCMPushController()._initialize().then((_) {
        FCMPushController()._getToken().then((token) => onTokenRefresh!(token));
        FCMPushController()._listenToTokenRefresh((token) => onTokenRefresh);
      });
    }
  }

  static void logout() {
    if (PushController().pushType == PushType.FCM) {
      FCMPushController()._deleteToken();
    }
  }
}

class FCMPushController {
  static final FCMPushController _instance = FCMPushController._internal();
  factory FCMPushController() => _instance;

  FCMPushController._internal();

  Future<void> _initialize() async {
    GooglePlayServicesAvailability? availability = GooglePlayServicesAvailability.success;
    if (Platform.isAndroid) {
      availability = await GoogleApiAvailability.instance.checkGooglePlayServicesAvailability();
    }
    if (availability != GooglePlayServicesAvailability.serviceInvalid) {
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    } else {
      Logger.print('Google Play Services are not available');
      return;
    }

    await _requestPermission();

    _configureForegroundNotification();

    _configureBackgroundNotification();

    return;
  }

  Future<void> _requestPermission() async {
    NotificationSettings settings = await FirebaseMessaging.instance.requestPermission();
    Logger.print('📱 FCM 通知权限状态: ${settings.authorizationStatus}');
    Logger.print('  - 提醒权限: ${settings.alert}');
    Logger.print('  - 徽章权限: ${settings.badge}');
    Logger.print('  - 声音权限: ${settings.sound}');
  }

  StreamSubscription<RemoteMessage>? _fcmForegroundSubscription;

  void _configureForegroundNotification() {
    Logger.print('🔧 PushController: 开始设置 FCM 前台消息监听器...');
    
    // 先取消之前的订阅
    _fcmForegroundSubscription?.cancel();
    
    try {
      _fcmForegroundSubscription = FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
        Logger.print('📬 PushController 收到前台 FCM 消息:');
        Logger.print('  - 消息ID: ${message.messageId}');
        Logger.print('  - 标题: ${message.notification?.title ?? "无"}');
        Logger.print('  - 内容: ${message.notification?.body ?? "无"}');
        Logger.print('  - 数据: ${message.data}');
        Logger.print('  - 来自: ${message.from}');

        if (message.notification != null) {
          await _showForegroundNotification(message);
        }
      }, onError: (error) {
        Logger.print('❌ PushController FCM 监听器出错: $error');
      }, cancelOnError: false);
      
      Logger.print('✅ PushController: FCM 前台消息监听器已设置成功');
    } catch (e) {
      Logger.print('❌ PushController: 设置 FCM 监听器失败: $e');
    }
  }

  Future<void> _showForegroundNotification(RemoteMessage message) async {
    try {
      // 通过动态查找避免直接依赖主项目的类
      // 使用 Get 查找可能存在的 AppController（如果已注册）
      final notification = message.notification;
      if (notification == null) return;

      // 尝试通过反射或动态查找来显示通知
      // 这里我们先只记录日志，实际通知显示可以在主项目中处理
      Logger.print('💡 提示: 应用在前台收到通知，如需显示可在主项目中监听并显示本地通知');
      Logger.print('   通知标题: ${notification.title}');
      Logger.print('   通知内容: ${notification.body}');
      
      // TODO: 如果需要在前台显示通知，可以在主项目的 AppController 中
      // 监听 FCM 消息并显示本地通知，或者通过事件总线通知主项目
    } catch (e) {
      Logger.print('❌ 处理前台通知失败: $e');
    }
  }

  void _configureBackgroundNotification() {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      Logger.print('📱 从后台通知打开应用:');
      Logger.print('  - 标题: ${message.notification?.title ?? "无"}');
      Logger.print('  - 内容: ${message.notification?.body ?? "无"}');
      Logger.print('  - 数据: ${message.data}');
    });

    FirebaseMessaging.instance.getInitialMessage().then((RemoteMessage? message) {
      if (message != null) {
        Logger.print('📱 从终止状态通过通知打开应用:');
        Logger.print('  - 标题: ${message.notification?.title ?? "无"}');
        Logger.print('  - 内容: ${message.notification?.body ?? "无"}');
        Logger.print('  - 数据: ${message.data}');
      }
    });
  }

  Future<String> _getToken() async {
    final token = await FirebaseMessaging.instance.getToken();
    Logger.print("FCM Token: $token");

    if (token == null) {
      throw Exception('FCM Token is null');
    }

    return token;
  }

  Future<void> _deleteToken() {
    return FirebaseMessaging.instance.deleteToken();
  }

  void _listenToTokenRefresh(void Function(String token) onTokenRefresh) {
    FirebaseMessaging.instance.onTokenRefresh.listen((String newToken) {
      print("FCM Token refreshed: $newToken");
      onTokenRefresh(newToken);
    });
  }
}
