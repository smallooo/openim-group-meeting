import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../core/controller/app_controller.dart';
import '../../../core/controller/im_controller.dart';
import '../../../tk_app/core/constants/api_constants.dart';
import '../../../tk_app/core/network/api_client.dart';
import '../../../tk_app/features/product/data/repositories/product_repository.dart';
import '../../../tk_app/shared/models/version/check_version.dart';

class AboutUsLogic extends GetxController {
  final appLogic = Get.find<AppController>();
  final imLogic = Get.find<IMController>();
  final lineTextController = TextEditingController(text: '1000');
  final displayVersion = ''.obs;
  final hasUpdate = false.obs; // 是否有更新
  String downloadUrl = ''; // 下载地址
  String buildVersion = '';
  String buildUpdateDescription = '';

  void getPackageInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final version = packageInfo.version;
    final appName = packageInfo.appName;
    final buildNumber = packageInfo.buildNumber;

    displayVersion.value = '$appName $version+$buildNumber SDK: ${OpenIM.version}';
    displayVersion.value = version;

  }

  void checkUpdate() {
    // 如果有更新且下载地址不为空，则调用下载
    if (hasUpdate.value && downloadUrl.isNotEmpty) {
      if (!Get.isRegistered<AppController>()) {
        IMViews.showToast('AppController 未初始化');
        return;
      }
      final appController = Get.find<AppController>();
      appController.testDownload(downloadUrl,buildVersion,buildUpdateDescription);
    } else {
      IMViews.showToast("已是最新版本");
      // 如果没有更新，重新检查一次
      _checkAppUpdate();
    }
  }

  void copyVersion() {
    IMViews.showToast(StrRes.copySuccessfully);
    // Clipboard.setData(ClipboardData(text: displayVersion.value));
  }

  /// 检查应用更新
  Future<void> _checkAppUpdate() async {
    try {
      Logger.print('🔄 开始检查应用更新...');

      // 获取包信息
      final packageInfo = await PackageInfo.fromPlatform();
      final packageName = packageInfo.packageName;
      final currentVersionName = packageInfo.version;

      // 判断平台
      final platform = Platform.isAndroid ? 'android' : 'ios';

      Logger.print('📦 应用信息:');
      Logger.print('  - 包名: $packageName');
      Logger.print('  - 当前版本: $currentVersionName');
      Logger.print('  - 平台: $platform');

      // 创建请求参数
      final request = CheckUpdateRequest(
        packageName: packageName,
        platform: platform,
        currentVersionName: currentVersionName,
      );

      Logger.print('📤 准备调用检查更新接口...');

      // 创建 ProductRepository（该接口不需要登录，所以不需要 token）
      final apiClient = ApiClient(baseUrl: ApiConstants.baseUrl);
      final repository = ProductRepository(apiClient);

      // 调用检查更新接口
      Logger.print('📡 正在调用检查更新接口...');

      CheckUpdateResponse? response;
      try {
        response = await repository.checkAppUpdate(request);
        Logger.print('✅ repository.checkAppUpdate 调用成功，开始处理响应...');
      } catch (e, stackTrace) {
        Logger.print('❌ repository.checkAppUpdate 调用失败: $e');
        Logger.print('   堆栈: $stackTrace');
        rethrow;
      }

      if (response == null) {
        Logger.print('⚠️ 响应为空，无法继续');
        return;
      }

      Logger.print('✅ 检查更新完成:');
      Logger.print('  - 是否有更新: ${response.data.hasUpdate}');
      Logger.print('  - 是否强制更新: ${response.data.forceUpdate}');
      Logger.print('  - 最新版本: ${response.data.latestVersionName}');
      Logger.print('  - 下载地址: ${response.data.downloadUrl}');

      // 保存更新状态和下载地址
      hasUpdate.value = response.data.hasUpdate;
      downloadUrl = response.data.downloadUrl;
      buildVersion = response.data.latestVersionName;
      buildUpdateDescription = response.data.changelog;

      // hasUpdate.value = true;
      // downloadUrl = "https://cos3.pgyer.com/9868691cc96b652618b3910bf02987bd.apk?sign=5c36da56eb34a1ee66fa2cb73648f2db&sign2=4dda54aefe661e2bae370e28ec1676f0&t=1762679609&response-content-disposition=attachment%3Bfilename%3D%22TokLink_0.8.2.apk%22";
      // buildVersion = "0.8.5";
      // buildUpdateDescription = "update v";

    } catch (e, stackTrace) {
      // 检查更新失败不影响应用启动
      Logger.print('⚠️ 检查应用更新失败: $e');
      Logger.print('  堆栈: $stackTrace');
    }
  }


  void uploadLogs([int line = 0]) async {
    EasyLoading.showProgress(0);
    // await OpenIM.iMManager.uploadLogs(line: line);
    EasyLoading.dismiss();
  }

  @override
  void onReady() {
    getPackageInfo();
    // 页面进入时自动检查更新
    _checkAppUpdate();

    imLogic.onUploadProgress = (current, size) {
      final p = current / size;
      final pStr = '${(p * 100.0).truncate()}%';
      EasyLoading.showProgress(p, status: pStr);
    };
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
