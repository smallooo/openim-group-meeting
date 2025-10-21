import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';

/// OpenIM 工具类
class OpenIMHelper {
  /// 获取当前用户的IM ID
  /// 如果用户未登录或ID为空，返回null
  static String? getCurrentUserID() {
    try {
      return OpenIM.iMManager.userID;
    } catch (e) {
      print('获取当前用户ID失败: $e');
      return null;
    }
  }

  /// 获取当前用户的完整信息
  /// 如果用户未登录，返回null
  static UserInfo? getCurrentUserInfo() {
    try {
      return OpenIM.iMManager.userInfo;
    } catch (e) {
      print('获取当前用户信息失败: $e');
      return null;
    }
  }

  /// 检查用户是否已登录
  /// 返回true表示已登录，false表示未登录
  static bool isUserLoggedIn() {
    final userID = getCurrentUserID();
    return userID != null && userID.isNotEmpty;
  }

  /// 获取当前用户昵称
  /// 如果未登录或昵称为空，返回默认值
  static String getCurrentUserNickname({String defaultValue = '未知用户'}) {
    final userInfo = getCurrentUserInfo();
    return userInfo?.nickname ?? defaultValue;
  }

  /// 获取当前用户头像URL
  /// 如果未登录或头像为空，返回null
  static String? getCurrentUserAvatar() {
    final userInfo = getCurrentUserInfo();
    return userInfo?.faceURL;
  }

  /// 获取当前用户显示名称（优先使用昵称，其次使用用户ID）
  static String getCurrentUserDisplayName() {
    final userInfo = getCurrentUserInfo();
    if (userInfo?.nickname != null && userInfo!.nickname!.isNotEmpty) {
      return userInfo.nickname!;
    }
    return getCurrentUserID() ?? '未登录';
  }

  /// 打印当前用户信息（用于调试）
  static void printCurrentUserInfo() {
    if (!isUserLoggedIn()) {
      print('用户未登录');
      return;
    }

    final userID = getCurrentUserID();
    final userInfo = getCurrentUserInfo();
    
    print('=== 当前用户信息 ===');
    print('用户ID: $userID');
    print('用户昵称: ${userInfo?.nickname ?? '未设置'}');
    print('用户头像: ${userInfo?.faceURL ?? '未设置'}');
    print('==================');
  }
}
