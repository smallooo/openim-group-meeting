import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repositories/im_repository.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../../../core/exceptions/api_exception.dart';

part 'im_provider.freezed.dart';
part 'im_provider.g.dart';

/// IM 状态
@freezed
class ImState with _$ImState {
  const factory ImState({
    /// 是否正在初始化
    @Default(false) bool isInitializing,

    /// 是否已初始化
    @Default(false) bool isInitialized,

    /// IM Token
    String? imToken,

    /// IM 用户信息
    Map<String, dynamic>? imUserInfo,

    /// 错误信息
    String? error,

    /// 连接状态
    @Default(ImConnectionStatus.disconnected) ImConnectionStatus connectionStatus,
  }) = _ImState;
}

/// IM 连接状态
enum ImConnectionStatus {
  /// 未连接
  disconnected,

  /// 连接中
  connecting,

  /// 已连接
  connected,

  /// 连接失败
  failed,

  /// 重连中
  reconnecting,
}

/// IM Provider
///
/// 管理 IM 相关状态，与现有 IM 系统桥接
@riverpod
class Im extends _$Im {
  @override
  ImState build() {
    // 监听认证状态变化
    ref.listen(authProvider, (previous, next) {
      if (next.isLoggedIn && !state.isInitialized) {
        // 用户登录后自动初始化 IM
        initializeIm();
      } else if (!next.isLoggedIn && state.isInitialized) {
        // 用户退出后清理 IM
        cleanup();
      }
    });

    return const ImState();
  }

  /// 初始化 IM
  Future<void> initializeIm() async {
    final authState = ref.read(authProvider);
    if (!authState.isLoggedIn || authState.user == null) {
      return;
    }

    if (state.isInitializing || state.isInitialized) {
      return;
    }

    state = state.copyWith(
      isInitializing: true,
      error: null,
    );

    try {
      final imRepo = ref.read(imRepositoryProvider);
      final userId = authState.user!.userId;

      // 获取 IM Token
      final imToken = await imRepo.getImToken(userId!);

      // 获取 IM 用户信息
      final imUserInfo = await imRepo.getImUserInfo(userId);

      state = state.copyWith(
        isInitializing: false,
        isInitialized: true,
        imToken: imToken,
        imUserInfo: imUserInfo,
        connectionStatus: ImConnectionStatus.connecting,
      );

      // 初始化现有的 IM 系统
      await _initializeExistingImSystem(imToken, imUserInfo);

    } on ApiException catch (e) {
      state = state.copyWith(
        isInitializing: false,
        error: e.message,
        connectionStatus: ImConnectionStatus.failed,
      );
    } catch (e) {
      state = state.copyWith(
        isInitializing: false,
        error: 'IM 初始化失败：${e.toString()}',
        connectionStatus: ImConnectionStatus.failed,
      );
    }
  }

  /// 同步用户信息到 IM
  Future<void> syncUserInfoToIm() async {
    final authState = ref.read(authProvider);
    if (!authState.isLoggedIn || authState.user == null) {
      return;
    }

    try {
      final imRepo = ref.read(imRepositoryProvider);
      final user = authState.user!;

      final userInfo = {
        'userId': user.userId,
        'email': user.email,
        'nickname': user.nickname,
        'avatar': user.avatar,
      };

      await imRepo.syncUserToIm(userInfo);

      // 更新本地 IM 用户信息
      state = state.copyWith(
        imUserInfo: {...?state.imUserInfo, ...userInfo},
      );
    } catch (e) {
      state = state.copyWith(
        error: '同步用户信息失败：${e.toString()}',
      );
    }
  }

  /// 更新连接状态
  void updateConnectionStatus(ImConnectionStatus status) {
    state = state.copyWith(connectionStatus: status);
  }

  /// 清理 IM 状态
  void cleanup() {
    state = const ImState();
    // 清理现有的 IM 系统
    _cleanupExistingImSystem();
  }

  /// 清除错误信息
  void clearError() {
    state = state.copyWith(error: null);
  }

  /// 初始化现有的 IM 系统
  ///
  /// 这里与现有的 IM 系统进行桥接
  Future<void> _initializeExistingImSystem(
    String imToken,
    Map<String, dynamic> imUserInfo,
  ) async {
    try {
      // TODO: 调用现有的 IM 初始化逻辑
      // 例如：
      // final imController = Get.find<IMController>();
      // await imController.initWithToken(imToken, imUserInfo);

      // 模拟初始化过程
      await Future.delayed(const Duration(seconds: 1));

      state = state.copyWith(
        connectionStatus: ImConnectionStatus.connected,
      );
    } catch (e) {
      state = state.copyWith(
        connectionStatus: ImConnectionStatus.failed,
        error: '连接 IM 服务失败：${e.toString()}',
      );
    }
  }

  /// 清理现有的 IM 系统
  void _cleanupExistingImSystem() {
    try {
      // TODO: 调用现有的 IM 清理逻辑
      // 例如：
      // final imController = Get.find<IMController>();
      // imController.logout();
    } catch (e) {
      // 忽略清理错误
    }
  }
}
