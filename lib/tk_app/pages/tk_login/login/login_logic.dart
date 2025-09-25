import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openim_common/openim_common.dart';
import '../../../features/auth/data/repositories/auth_repository.dart';
import '../../../core/exceptions/api_exception.dart';
// 移除了直接导入，现在使用命名路由

class LoginLogic extends GetxController {
  // 邮箱输入
  final RxString emailStr = ''.obs;
  
  // 加载状态
  final RxBool isLoading = false.obs;

  // Riverpod Ref - 需要从外部传入
  late WidgetRef ref;

  void setRef(WidgetRef widgetRef) {
    ref = widgetRef;
  }

  /// 发送验证码
  Future<void> sendCode() async {
    if (emailStr.value.isEmpty) {
      IMViews.showToast('Please_Enter_Your_Email'.tr);
      return;
    }

    isLoading.value = true;
    
    try {
      // 获取设备ID
      final deviceID = await _getDeviceId();
      
      // 使用新的 AuthRepository
      final authRepo = await ref.read(authRepositoryProvider.future);
      final resp = await authRepo.emailLoginSendCodeReq(
        email: emailStr.value, 
        deviceId: deviceID,
      );
      
      final errCode = resp['errCode'] ?? -1;
      final errMsg = resp['errMsg'] ?? '';
      
      if (errCode == 0) {
        final message = resp['data']?['message'] ?? 'Code sent';
        IMViews.showToast(message);
        
        // 跳转到验证码页面，使用命名路由
        Get.toNamed(
          '/tk_login_code',
          arguments: {
            'sendModel': {'email': emailStr.value, 'token': resp['data']?['token']},
            'deviceId': deviceID,
          },
        );
      } else {
        IMViews.showToast(errMsg.toString());
      }
    } on ApiException catch (e) {
      IMViews.showToast(e.message);
    } catch (e) {
      IMViews.showToast('发送验证码失败: ${e.toString()}');
    } finally {
      isLoading.value = false;
    }
  }

  /// 获取设备ID
  Future<String> _getDeviceId() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    var deviceID = '';
    
    if (Platform.isAndroid) {
      var androidInfo = await deviceInfoPlugin.androidInfo;
      deviceID = androidInfo.id;
    } else if (Platform.isIOS) {
      var iosInfo = await deviceInfoPlugin.iosInfo;
      deviceID = iosInfo.identifierForVendor!;
    }
    
    return deviceID;
  }

  /// 更新邮箱输入
  void updateEmail(String email) {
    emailStr.value = email;
  }
}
