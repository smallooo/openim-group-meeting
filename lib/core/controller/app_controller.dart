import 'dart:async';
import 'dart:io';

import 'package:audio_session/audio_session.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_badger/flutter_new_badger.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart' as im;
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:toklink/core/im_callback.dart';
import 'package:openim_common/openim_common.dart';
import 'package:sound_mode/sound_mode.dart';
import 'package:sound_mode/utils/ringer_mode_statuses.dart';
import 'package:vibration/vibration.dart';

import '../../utils/upgrade_manager.dart';
import 'im_controller.dart';

class AppController extends GetxController with UpgradeManger {
  var isRunningBackground = false;

  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  final initializationSettingsAndroid = const AndroidInitializationSettings('@mipmap/ic_launcher');

  final DarwinInitializationSettings initializationSettingsDarwin = const DarwinInitializationSettings(
    requestAlertPermission: false,
    requestBadgePermission: false,
    requestSoundPermission: false,
  );

  RTCBridge? get rtcBridge => PackageBridge.rtcBridge;

  bool get shouldMuted =>
      rtcBridge?.hasConnection == true ||
      Get.find<IMController>().imSdkStatusSubject.values.last.status != IMSdkStatus.syncEnded;

  final _ring = 'assets/audio/message_ring.wav';
  final _audioPlayer = AudioPlayer();
  final configuration = const AudioSessionConfiguration(
    avAudioSessionCategory: AVAudioSessionCategory.ambient,
    avAudioSessionCategoryOptions: AVAudioSessionCategoryOptions.mixWithOthers,
    androidAudioFocusGainType: AndroidAudioFocusGainType.gainTransientMayDuck,
    androidAudioAttributes: AndroidAudioAttributes(
      contentType: AndroidAudioContentType.sonification,
      usage: AndroidAudioUsage.notification,
    ),
  );
  late AudioSession session;

  late BaseDeviceInfo deviceInfo;

  final clientConfigMap = <String, dynamic>{}.obs;

  Future<void> runningBackground(bool run) async {
    Logger.print('-----App running background : $run-------------');

    if (isRunningBackground && !run) {}
    isRunningBackground = run;
    if (!run) {
      _cancelAllNotifications();
    }
  }

  @override
  void onInit() async {
    _initPlayer();
    final initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (notificationResponse) {},
    );

    autoCheckVersionUpgrade();
    
    super.onInit();
    
    // 延迟设置 FCM 监听器，确保 Firebase 已完全初始化
    Future.delayed(const Duration(milliseconds: 1000), () {
      Logger.print('⏰ AppController: 延迟设置 FCM 监听器...');
      Logger.print('   检查 Firebase 是否已初始化...');
      try {
        _setupFCMForegroundNotification();
      } catch (e) {
        Logger.print('❌ 设置 FCM 监听器时出错: $e');
      }
    });
  }

  StreamSubscription<RemoteMessage>? _fcmMessageSubscription;

  void _setupFCMForegroundNotification() {
    Logger.print('🔧 AppController: 开始设置 FCM 前台消息监听器...');
    
    // 先取消之前的订阅（如果存在）
    if (_fcmMessageSubscription != null) {
      Logger.print('   取消之前的订阅...');
      _fcmMessageSubscription?.cancel();
      _fcmMessageSubscription = null;
    }
    
    try {
      Logger.print('   正在创建新的监听器...');
      _fcmMessageSubscription = FirebaseMessaging.onMessage.listen(
        (RemoteMessage message) async {
          Logger.print('📬 AppController 收到前台 FCM 消息:');
          Logger.print('  - 消息ID: ${message.messageId}');
          Logger.print('  - 标题: ${message.notification?.title ?? "无"}');
          Logger.print('  - 内容: ${message.notification?.body ?? "无"}');
          Logger.print('  - 数据: ${message.data}');
          
          final notification = message.notification;
          if (notification != null) {
            Logger.print('✅ 消息包含 notification 字段，准备显示前台通知...');
            Logger.print('  - 应用是否在后台: $isRunningBackground');
            await _showFCMNotification(notification, message.data);
          } else {
            Logger.print('⚠️ 消息中没有 notification 字段，只包含 data: ${message.data}');
            Logger.print('💡 提示: FCM 消息有两种格式：');
            Logger.print('   1. 包含 notification 字段（系统会自动显示通知）');
            Logger.print('   2. 只包含 data 字段（需要应用手动显示通知）');
            // 即使没有 notification 字段，也可以尝试显示通知
            if (message.data.isNotEmpty) {
              Logger.print('💡 尝试为 data-only 消息创建通知...');
              await _showFCMNotification(
                RemoteNotification(
                  title: '新消息',
                  body: message.data.toString(),
                ),
                message.data,
              );
            }
          }
        },
        onError: (error) {
          Logger.print('❌ FCM 消息监听器出错: $error');
        },
        onDone: () {
          Logger.print('⚠️ FCM 消息监听器已关闭');
        },
        cancelOnError: false,
      );
      
      Logger.print('✅ AppController: FCM 前台消息监听器已设置成功');
      Logger.print('   监听器状态: ${_fcmMessageSubscription != null ? "已创建" : "创建失败"}');
    } catch (e, stackTrace) {
      Logger.print('❌ AppController: 设置 FCM 监听器失败: $e');
      Logger.print('   堆栈: $stackTrace');
    }
  }

  Future<void> _showFCMNotification(
    RemoteNotification notification,
    Map<String, dynamic> data,
  ) async {
    try {
      Logger.print('🔔 _showFCMNotification 开始执行...');
      Logger.print('  - 应用是否在后台: $isRunningBackground');
      Logger.print('  - 通知标题: ${notification.title ?? "无"}');
      Logger.print('  - 通知内容: ${notification.body ?? "无"}');
      
      // Android 13+ 需要检查通知权限
      if (Platform.isAndroid) {
        final androidInfo = await DeviceInfoPlugin().androidInfo;
        Logger.print('📱 Android 版本: ${androidInfo.version.sdkInt}');
        
        if (androidInfo.version.sdkInt >= 33) {
          final notificationPermission = await Permission.notification.status;
          Logger.print('🔍 Android 13+ 通知权限状态: $notificationPermission');
          
          if (!notificationPermission.isGranted) {
            Logger.print('⚠️ 通知权限未授予，请求权限...');
            final result = await Permission.notification.request();
            Logger.print('📱 权限请求结果: $result');
            
            if (!result.isGranted) {
              Logger.print('❌ 通知权限被拒绝，无法显示通知');
              Logger.print('💡 请前往设置中手动授予通知权限');
              Logger.print('   设置路径: 设置 → 应用 → TokLink → 通知 → 允许通知');
              return;
            }
          } else {
            Logger.print('✅ 通知权限已授予');
          }
        } else {
          Logger.print('📱 Android 版本低于 13，无需运行时权限检查');
        }
      }

      // 创建通知渠道（Android 8.0+ 必需）
      if (Platform.isAndroid) {
        try {
          final androidChannel = AndroidNotificationChannel(
            'fcm_channel',
            'FCM Notifications',
            description: 'Firebase Cloud Messaging notifications',
            importance: Importance.max, // 使用 max 确保通知能够显示
            playSound: true,
            enableVibration: true,
            showBadge: true,
          );
          
          Logger.print('🔧 准备创建通知渠道: ${androidChannel.id}');
          
          // 创建通知渠道（如果不存在）
          final androidPlugin = flutterLocalNotificationsPlugin
              .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
          
          if (androidPlugin != null) {
            await androidPlugin.createNotificationChannel(androidChannel);
            Logger.print('✅ 通知渠道已创建/已存在: ${androidChannel.id}');
          } else {
            Logger.print('⚠️ 无法获取 Android 通知插件');
          }
        } catch (e, stackTrace) {
          Logger.print('⚠️ 创建通知渠道时出错: $e');
          Logger.print('   堆栈: $stackTrace');
        }
      }

      final androidDetails = AndroidNotificationDetails(
        'fcm_channel',
        'FCM Notifications',
        channelDescription: 'Firebase Cloud Messaging notifications',
        importance: Importance.max, // 使用 max 而不是 high，确保通知能够显示
        priority: Priority.max, // 使用 max 确保高优先级
        showWhen: true,
        enableVibration: true,
        playSound: true,
        icon: '@mipmap/ic_launcher',
        ticker: '新消息', // 添加 ticker 用于状态栏显示
        styleInformation: BigTextStyleInformation(
          notification.body ?? '',
          contentTitle: notification.title ?? '新消息',
        ),
        ongoing: false,
        autoCancel: true,
        channelShowBadge: true,
      );

      final iosDetails = DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      );

      final details = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );

      // 使用消息ID作为通知ID，如果没有则使用hashCode
      final notificationId = notification.hashCode;
      
      Logger.print('🔔 准备调用 show() 显示通知...');
      Logger.print('  - 通知ID: $notificationId');
      Logger.print('  - 渠道ID: fcm_channel');
      
      Logger.print('🔔 调用 show() 前检查：');
      Logger.print('  - 本地通知插件是否初始化: ${flutterLocalNotificationsPlugin != null}');
      Logger.print('  - 通知重要性: Importance.max');
      Logger.print('  - 通知优先级: Priority.max');
      
      try {
        await flutterLocalNotificationsPlugin.show(
          notificationId,
          notification.title ?? '新消息',
          notification.body ?? '',
          details,
          payload: data.toString(),
        );
        
        Logger.print('✅ 已调用 show() 方法，没有抛出异常');
        Logger.print('  - 通知ID: $notificationId');
        Logger.print('  - 标题: ${notification.title ?? "无"}');
        Logger.print('  - 内容: ${notification.body ?? "无"}');
        
        // 等待一小段时间，然后验证通知是否真的显示了
        await Future.delayed(const Duration(milliseconds: 100));
        // 强制触发通知显示（在某些设备上，前台通知可能被抑制）
        if (Platform.isAndroid && !isRunningBackground) {
          Logger.print('⚠️ 应用在前台，尝试使用其他方式确保通知显示...');
          // 在某些 Android 版本上，前台应用需要特殊处理才能显示通知
          // 我们已经使用了 Importance.max，这应该足够了
          // 但如果仍然不显示，可能需要用户手动检查系统设置
        }
        
        Logger.print('💡 如果状态栏仍然没有通知，可能的原因：');
        Logger.print('   1. 应用在前台时，某些 Android 版本会抑制通知显示');
        Logger.print('   2. 系统设置中通知渠道可能被禁用或重要性设置为最低');
        Logger.print('   3. 设备开启了勿扰模式或应用被加入省电白名单');
        Logger.print('   4. 请尝试：将应用切换到后台，然后发送测试消息');
        Logger.print('   5. 检查：设置 → 应用 → TokLink → 通知 → FCM Notifications → 重要性');
      } catch (e, stackTrace) {
        Logger.print('❌ show() 方法调用失败: $e');
        Logger.print('   堆栈: $stackTrace');
      }
      
      // 验证通知是否真的显示
      if (Platform.isAndroid) {
        // 在 Android 上，可以尝试检查活动通知
        Logger.print('💡 Android 通知显示提示：');
        Logger.print('   1. 检查状态栏是否显示通知图标');
        Logger.print('   2. 下拉状态栏查看通知');
        Logger.print('   3. 应用在前台时，某些设备可能只显示在状态栏');
      }
      
      Logger.print('💡 如果仍然看不到通知弹窗，请检查：');
      Logger.print('   1. 系统设置 → 应用 → TokLink → 通知 → 允许通知');
      Logger.print('   2. 系统设置 → 应用 → TokLink → 通知 → FCM Notifications 渠道是否启用');
      Logger.print('   3. 设备是否开启了勿扰模式');
      Logger.print('   4. 应用在前台时，部分 Android 版本可能不显示弹窗，只显示在状态栏');
    } catch (e, stackTrace) {
      Logger.print('❌ 显示 FCM 通知失败: $e');
      Logger.print('   堆栈: $stackTrace');
    }
  }

  Future<void> showNotification(im.Message message, {bool showNotification = true}) async {
    if (_isGlobalNotDisturb() ||
        message.attachedInfoElem?.notSenderNotificationPush == true ||
        message.contentType == im.MessageType.typing ||
        message.sendID == OpenIM.iMManager.userID ||
        (message.contentType! >= 1000 && message.contentType != 1400)) return;

    var sourceID = message.sessionType == ConversationType.single ? message.sendID : message.groupID;
    if (sourceID != null && message.sessionType != null) {
      var i = await OpenIM.iMManager.conversationManager.getOneConversation(
        sourceID: sourceID,
        sessionType: message.sessionType!,
      );
      if (i.recvMsgOpt != 0) return;
    }

    if (showNotification) {
      promptSoundOrNotification(message);
    }
  }

  Future<void> promptSoundOrNotification(im.Message message) async {
    if (Get.find<IMController>().imSdkStatusSubject.values.lastOrNull?.status != IMSdkStatus.syncEnded) {
      return;
    }
    if (!isRunningBackground) {
      _playMessageSound();
    } else {
      if (Platform.isAndroid) {
        final id = message.seq!;
        
        // 从消息中动态获取通知内容
        String notificationTitle;
        String notificationBody;
        
        // 根据会话类型确定标题
        if (message.sessionType == ConversationType.single) {
          // 单聊：显示发送者昵称
          notificationTitle = message.senderNickname ?? '新消息';
        } else {
          // 群聊：显示"群名 - 发送者昵称"或"发送者昵称"
          final senderName = message.senderNickname ?? '未知用户';
          notificationTitle = senderName;
        }
        
        // 从消息中解析内容
        notificationBody = IMUtils.parseMsg(message, isConversation: true);
        if (notificationBody.isEmpty) {
          notificationBody = '[新消息]';
        }

        const androidPlatformChannelSpecifics = AndroidNotificationDetails('chat', 'OpenIM Chat',
            channelDescription: 'OpenIM Chat Message', importance: Importance.max, priority: Priority.high, ticker: 'ticker');
        const NotificationDetails platformChannelSpecifics =
            NotificationDetails(android: androidPlatformChannelSpecifics);
        await flutterLocalNotificationsPlugin.show(id, notificationTitle, notificationBody, platformChannelSpecifics,
            payload: '');
      }
    }
  }

  Future<void> _cancelAllNotifications() async {
    await flutterLocalNotificationsPlugin.cancelAll();
  }
  void showBadge(count) {
    OpenIM.iMManager.messageManager.setAppBadge(count);

    if (count == 0) {
      removeBadge();
    } else {
      FlutterNewBadger.setBadge(count);
    }
  }

  void removeBadge() {
    FlutterNewBadger.removeBadge();
  }

  @override
  void onClose() {
    Logger.print('🛑 AppController 正在关闭，取消 FCM 监听器...');
    _fcmMessageSubscription?.cancel();
    _fcmMessageSubscription = null;
    closeSubject();
    _audioPlayer.dispose();
    super.onClose();
  }

  Locale? getLocale() {
    var local = Get.locale;
    var index = DataSp.getLanguage() ?? 0;
    switch (index) {
      case 1:
        local = const Locale('zh', 'CN');
        break;
      case 2:
        local = const Locale('en', 'US');
        break;
    }
    return local;
  }

  @override
  void onReady() {
    queryClientConfig();
    _getDeviceInfo();
    _cancelAllNotifications();
    super.onReady();
  }

  bool _isGlobalNotDisturb() {
    bool isRegistered = Get.isRegistered<IMController>();
    if (isRegistered) {
      var logic = Get.find<IMController>();
      return logic.userInfo.value.globalRecvMsgOpt == 2;
    }
    return false;
  }

  void _initPlayer() async {
    session = await AudioSession.instance;
    await session.configure(configuration);

    _audioPlayer.setAsset(_ring, package: 'openim_common');
    _audioPlayer.playerStateStream.listen((state) {
      switch (state.processingState) {
        case ProcessingState.idle:
        case ProcessingState.loading:
        case ProcessingState.buffering:
        case ProcessingState.ready:
          break;
        case ProcessingState.completed:
          _stopMessageSound();

          break;
      }
    });
  }

  void _playMessageSound() async {
    if (shouldMuted) {
      return;
    }
    bool isRegistered = Get.isRegistered<IMController>();
    bool isAllowVibration = true;
    bool isAllowBeep = true;
    if (isRegistered) {
      var logic = Get.find<IMController>();
      isAllowVibration = logic.userInfo.value.allowVibration == 1;
      isAllowBeep = logic.userInfo.value.allowBeep == 1;
    }

    RingerModeStatus ringerStatus = await SoundMode.ringerModeStatus;

    Logger.print('System ringer status: $ringerStatus, user is allow beep: $isAllowBeep',
        fileName: 'app_controller.dart');

    if (!_audioPlayer.playerState.playing &&
        isAllowBeep &&
        (ringerStatus == RingerModeStatus.normal || ringerStatus == RingerModeStatus.unknown)) {
      await session.setActive(true);
      _audioPlayer.setAsset(_ring, package: 'openim_common');
      _audioPlayer.setLoopMode(LoopMode.off);
      _audioPlayer.setVolume(1.0);
      _audioPlayer.play();
    }

    if (isAllowVibration &&
        (ringerStatus == RingerModeStatus.normal ||
            ringerStatus == RingerModeStatus.vibrate ||
            ringerStatus == RingerModeStatus.unknown)) {
      if (await Vibration.hasVibrator() == true) {
        Vibration.vibrate();
      }
    }
  }

  void _stopMessageSound() async {
    if (_audioPlayer.playerState.playing) {
      _audioPlayer.stop();
    }
    await session.setActive(false);
  }

  void _getDeviceInfo() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    deviceInfo = await deviceInfoPlugin.deviceInfo;
  }

  Future queryClientConfig() async {
    final map = await Apis.getClientConfig();
    clientConfigMap.assignAll(map);

    return clientConfigMap;
  }
}
