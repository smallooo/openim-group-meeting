import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:dio/dio.dart';

import '../widgets/upgrade_view.dart';

mixin UpgradeManger {
  PackageInfo? packageInfo;
  UpgradeInfoV2? upgradeInfoV2;
  var isShowUpgradeDialog = false;
  var isNowIgnoreUpdate = false;
  final subject = PublishSubject<double>();
  final notificationService = NotificationService();
  static const MethodChannel _channel = MethodChannel('toklink.app/install_apk');
  CancelToken? _downloadCancelToken;

  void closeSubject() {
    subject.close();
  }

  void ignoreUpdate() {
    DataSp.putIgnoreVersion(upgradeInfoV2!.buildVersion! + upgradeInfoV2!.buildVersionNo!);
    Get.back();
  }

  void laterUpdate() {
    isNowIgnoreUpdate = true;
    Get.back();
  }

  getAppInfo() async {
    if (packageInfo == null) {
      packageInfo = await PackageInfo.fromPlatform();
    }
  }

  void nowUpdate() async {
    final appUrl = upgradeInfoV2?.appURl ?? upgradeInfoV2?.downloadURL;

    if (appUrl == null) {
      IMViews.showToast('Download URL is not available');
      return;
    }

    // Android 平台：应用内下载并安装
    if (Platform.isAndroid) {
      await _downloadAndInstallApk(appUrl);
    } else {
      // iOS 平台：跳转到 App Store
      if (await canLaunchUrlString(appUrl)) {
        launchUrlString(appUrl);
      }
    }
  }

  /// Android 下载并安装 APK
  Future<void> _downloadAndInstallApk(String downloadUrl) async {
    try {
      // 获取应用外部文件目录（更可靠，兼容 Android 10+）
      final Directory? externalDir = await getExternalStorageDirectory();
      Directory downloadDir;

      if (externalDir != null) {
        // 使用外部存储目录下的 downloads 文件夹
        downloadDir = Directory('${externalDir.path}/downloads');
      } else {
        // 如果外部存储不可用，使用应用文档目录
        final Directory appDocDir = await getApplicationDocumentsDirectory();
        downloadDir = Directory('${appDocDir.path}/downloads');
      }

      // 创建下载目录
      if (!await downloadDir.exists()) {
        await downloadDir.create(recursive: true);
      }

      // 生成 APK 文件名
      final String fileName = 'toklink_update_${upgradeInfoV2?.buildVersion ?? 'latest'}.apk';
      final String filePath = '${downloadDir.path}/$fileName';

      // 检查文件是否已存在
      final File apkFile = File(filePath);
      if (await apkFile.exists()) {
        // 如果文件已存在，先验证文件是否有效
        final existingFileSize = await apkFile.length();
        Logger.print('发现已存在的文件: $filePath, 大小: ${existingFileSize} 字节');

        // 验证文件大小
        if (existingFileSize < 1024 * 1024) {
          Logger.print('已存在的文件太小，删除并重新下载');
          await apkFile.delete();
        } else {
          // 验证文件头
          try {
            final fileBytes = await apkFile.openRead(0, 2).first;
            final fileHeader = String.fromCharCodes(fileBytes);
            if (fileHeader == 'PK') {
              Logger.print('已存在的文件有效，直接安装');
              await _installApk(filePath);
              return;
            } else {
              Logger.print('已存在的文件无效，删除并重新下载');
              await apkFile.delete();
            }
          } catch (e) {
            Logger.print('验证已存在文件时出错，删除并重新下载: $e');
            await apkFile.delete();
          }
        }
      }

      // 显示下载进度
      subject.add(0.0);

      // 创建 Dio 实例用于下载
      final Dio dio = Dio();
      _downloadCancelToken = CancelToken();

      // 先获取文件大小（如果服务器支持）
      int? expectedSize;
      try {
        final headResponse = await dio.head(downloadUrl);
        expectedSize = int.tryParse(headResponse.headers.value('content-length') ?? '');
        Logger.print('服务器返回的文件大小: ${expectedSize != null ? expectedSize / 1024 / 1024 : "未知"} MB');
      } catch (e) {
        Logger.print('无法获取文件大小: $e');
      }

      // 下载文件
      await dio.download(
        downloadUrl,
        filePath,
        cancelToken: _downloadCancelToken,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            final progress = received / total;
            subject.add(progress);
          }
        },
      );

      // 下载完成，验证文件
      subject.add(1.0);
      await Future.delayed(const Duration(milliseconds: 500));

      // 验证下载的文件
      final downloadedFile = File(filePath);
      if (!await downloadedFile.exists()) {
        IMViews.showToast('下载的文件不存在');
        subject.add(0.0);
        return;
      }

      final fileSize = await downloadedFile.length();
      Logger.print('下载完成: $filePath, 文件大小: ${fileSize} 字节 (${fileSize / 1024 / 1024} MB)');

      // 验证文件大小
      if (fileSize == 0) {
        IMViews.showToast('下载的文件为空，请重新下载');
        subject.add(0.0);
        await downloadedFile.delete(); // 删除无效文件
        return;
      }

      // APK 文件应该至少 1MB（正常 APK 至少几 MB）
      if (fileSize < 1024 * 1024) {
        final sizeKB = (fileSize / 1024).toStringAsFixed(1);
        IMViews.showToast('下载的文件太小（$sizeKB KB），可能下载不完整或文件错误');
        Logger.print('文件大小异常: $fileSize 字节，可能是 HTML 错误页面或下载不完整');

        // 尝试读取文件前几个字节来验证
        try {
          final bytes = await downloadedFile.openRead(0, 100).first;
          final fileHeader = String.fromCharCodes(bytes);
          Logger.print('文件头内容: ${fileHeader.substring(0, fileHeader.length > 50 ? 50 : fileHeader.length)}');
          if (fileHeader.contains('<!DOCTYPE') || fileHeader.contains('<html') || fileHeader.contains('<?xml')) {
            IMViews.showToast('下载失败：服务器返回了错误页面，请检查下载链接');
          }
        } catch (e) {
          Logger.print('读取文件头时出错: $e');
        }

        subject.add(0.0);
        await downloadedFile.delete(); // 删除无效文件
        return;
      }

      // 验证文件是否为有效的 APK（检查文件头，APK 是 ZIP 格式，应该以 "PK" 开头）
      try {
        final fileBytes = await downloadedFile.openRead(0, 2).first;
        final fileHeader = String.fromCharCodes(fileBytes);
        if (fileHeader != 'PK') {
          IMViews.showToast('下载的文件不是有效的 APK 文件（文件头验证失败）');
          Logger.print('文件头验证失败，期望 "PK"，实际: $fileHeader');
          subject.add(0.0);
          await downloadedFile.delete(); // 删除无效文件
          return;
        }
      } catch (e) {
        IMViews.showToast('验证文件格式时出错: $e');
        Logger.print('验证文件格式时出错: $e');
        subject.add(0.0);
        await downloadedFile.delete(); // 删除无效文件
        return;
      }

      Logger.print('文件验证通过，准备安装');

      // 安装 APK
      await _installApk(filePath);
    } catch (e) {
      if (e is DioException && e.type == DioExceptionType.cancel) {
        // 用户取消下载
        subject.add(0.0);
        return;
      }
      // 下载失败
      subject.add(0.0);
      IMViews.showToast('Download failed: ${e.toString()}');
    }
  }

  /// 安装 APK
  Future<void> _installApk(String apkPath) async {
    try {
      // 检查文件是否存在
      final file = File(apkPath);
      if (!await file.exists()) {
        IMViews.showToast('APK 文件不存在: $apkPath');
        return;
      }

      // 检查文件大小
      final fileSize = await file.length();
      if (fileSize == 0) {
        IMViews.showToast('APK 文件为空，下载可能不完整');
        return;
      }

      Logger.print('准备安装 APK: $apkPath, 文件大小: ${fileSize} 字节 (${fileSize / 1024 / 1024} MB)');

      // 再次验证文件大小（防止文件在传输过程中被修改）
      if (fileSize < 1024 * 1024) {
        IMViews.showToast('APK 文件太小（${(fileSize / 1024).toStringAsFixed(1)} KB），无法安装');
        Logger.print('安装前验证失败：文件太小');
        return;
      }

      // 检查并请求安装权限（Android 8.0+）
      final hasPermission = await _channel.invokeMethod<bool>('checkInstallPermission') ?? false;
      if (!hasPermission) {
        // 引导用户去设置中开启权限
        final openSettings = await Get.dialog<bool>(
          AlertDialog(
            title: const Text('需要安装权限'),
            content: const Text('安装应用需要"允许安装未知来源应用"权限，请前往设置中开启。'),
            actions: [
              TextButton(
                onPressed: () => Get.back(result: false),
                child: const Text('取消'),
              ),
              TextButton(
                onPressed: () => Get.back(result: true),
                child: const Text('去设置'),
              ),
            ],
          ),
        );

        if (openSettings == true) {
          await _channel.invokeMethod('openInstallPermissionSettings');
          IMViews.showToast('请在设置中开启"允许安装未知来源应用"权限');
        }
        return;
      }

      final bool result = await _channel.invokeMethod('installApk', {'apkPath': apkPath});
      if (!result) {
        IMViews.showToast('安装失败，请检查文件权限');
      }
    } on PlatformException catch (e) {
      Logger.print('安装 APK 时发生错误: ${e.code} - ${e.message}');
      String errorMsg = '安装失败';
      if (e.message != null) {
        if (e.message!.contains('packageInfo') || e.message!.contains('解析')) {
          errorMsg = 'APK 文件可能损坏或不完整，请重新下载';
        } else {
          errorMsg = '安装错误: ${e.message}';
        }
      }
      IMViews.showToast(errorMsg);
    } catch (e) {
      Logger.print('安装 APK 时发生未知错误: $e');
      IMViews.showToast('安装失败: ${e.toString()}');
    }
  }

  /// 取消下载
  void cancelDownload() {
    _downloadCancelToken?.cancel();
    _downloadCancelToken = null;
    subject.add(0.0);
  }

  /// 下载功能
  void testDownload(String testUrl,String buildVersion,String buildUpdateDescription) async {
    if (!Platform.isAndroid) {
      IMViews.showToast('此功能仅支持 Android 平台');
      return;
    }

    try {
      // 确保 packageInfo 已初始化
      await getAppInfo();
      if (packageInfo == null) {
        IMViews.showToast('无法获取应用信息，请重试');
        return;
      }

      // 创建临时的升级信息用于测试
      final testUpgradeInfo = UpgradeInfoV2(
        buildVersion: buildVersion,
        buildVersionNo: '1',
        needForceUpdate: false,
        downloadURL: testUrl,
        appURl: testUrl,
        buildUpdateDescription: buildUpdateDescription,
      );

      // 保存原始升级信息
      final originalUpgradeInfo = upgradeInfoV2;

      // 设置测试升级信息
      upgradeInfoV2 = testUpgradeInfo;

      // 显示下载对话框
      isShowUpgradeDialog = true;
      Get.dialog(
        UpgradeViewV2(
          upgradeInfo: testUpgradeInfo,
          packageInfo: packageInfo!,
          onNow: () async {
            // 直接使用测试 URL 下载
            await _downloadAndInstallApk(testUrl);
          },
          subject: subject,
        ),
        routeSettings: const RouteSettings(name: 'upgrade_dialog'),
      ).whenComplete(() {
        isShowUpgradeDialog = false;
        // 恢复原始升级信息
        upgradeInfoV2 = originalUpgradeInfo;
      });
    } catch (e) {
      IMViews.showToast('初始化失败: ${e.toString()}');
    }
  }

  void checkUpdate() async {
    LoadingView.singleton.wrap(asyncFunction: () async {
      await getAppInfo();
      return Apis.checkUpgradeV2();
    }).then((value) {
      upgradeInfoV2 = value;
      if (!canUpdate) {
        IMViews.showToast('Current version is latest');
        return;
      }
      Get.dialog(
        UpgradeViewV2(
          upgradeInfo: upgradeInfoV2!,
          packageInfo: packageInfo!,
          onNow: nowUpdate,
          subject: subject,
        ),
        routeSettings: const RouteSettings(name: 'upgrade_dialog'),
      );
    });
  }

  autoCheckVersionUpgrade() async {
    if (isShowUpgradeDialog || isNowIgnoreUpdate) return;
    await getAppInfo();
    upgradeInfoV2 = await Apis.checkUpgradeV2();

    if (!canUpdate) return;
    isShowUpgradeDialog = true;
    Get.dialog(
      UpgradeViewV2(
        upgradeInfo: upgradeInfoV2!,
        packageInfo: packageInfo!,
        onLater: laterUpdate,
        onIgnore: ignoreUpdate,
        onNow: nowUpdate,
        subject: subject,
      ),
      routeSettings: const RouteSettings(name: 'upgrade_dialog'),
    ).whenComplete(() => isShowUpgradeDialog = false);
  }

  bool get canUpdate =>
      packageInfo!.version + packageInfo!.buildNumber != upgradeInfoV2!.buildVersion! + upgradeInfoV2!.buildVersionNo!;
}

class NotificationService {
  static final NotificationService _notificationService = NotificationService._internal();
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  final AndroidInitializationSettings _androidInitializationSettings =
  const AndroidInitializationSettings('@mipmap/ic_launcher');

  factory NotificationService() {
    return _notificationService;
  }

  NotificationService._internal() {
    if (Platform.isAndroid) {
      init();
    }
  }

  void init() async {
    final InitializationSettings initializationSettings = InitializationSettings(
      android: _androidInitializationSettings,
    );
    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future createNotification(int count, int i, int id, String status) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails('progress channel', 'progress channel',
        channelDescription: 'progress channel description',
        channelShowBadge: false,
        importance: Importance.max,
        priority: Priority.high,
        onlyAlertOnce: true,
        showProgress: true,
        maxProgress: count,
        progress: i);
    var platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);
    await _flutterLocalNotificationsPlugin.show(id, status, '$i%', platformChannelSpecifics, payload: 'item x');

    return;
  }
}
