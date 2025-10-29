import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import '../../core/network/api_client.dart';
// import '../../core/services/token_storage_service.dart';
// import '../../core/services/token_manager.dart';
// import '../../core/services/auth_state_manager.dart';
// import '../../features/product/data/repositories/product_repository.dart';
import 'package:dio/dio.dart';
import '../../../core/network/api_client.dart';
import '../../../core/services/auth_state_manager.dart';
import '../../../core/services/token_manager.dart';
import '../../../core/services/token_storage_service.dart';
import '../../../features/product/data/repositories/product_repository.dart';
import '../../tk_guarantee/tk_guarantee_refund_order/logic.dart' as _logref; // for log style consistency
import '../../../core/constants/api_constants.dart';
import '../../../core/utils/access_token_helper.dart';
import 'state.dart';
import 'model/guarantee_refund_order_detail_model.dart';
import 'model/review_order_model.dart';

class TkGuaranteeRefundOrderDetailLogic extends GetxController {
  final TkGuaranteeRefundOrderDetailState state = TkGuaranteeRefundOrderDetailState();
  ProductRepository? _productRepository;
  String _refundNo = '';

  @override
  void onInit() {
    super.onInit();
    // 进入页面立刻显示加载中，避免短暂空态闪烁
    state.isLoading.value = true;
    _initFromArguments();
    _waitForDependenciesAndInitialize();
  }

  void _initFromArguments() {
    final args = Get.arguments as Map<String, dynamic>?;
    _refundNo = args?['refundNo'] ?? '';
  }

  Future<void> _waitForDependenciesAndInitialize() async {
    int attempts = 0;
    const maxAttempts = 20;
    while (attempts < maxAttempts) {
      try {
        if (Get.isRegistered<TokenStorageService>() &&
            Get.isRegistered<TokenManager>() &&
            Get.isRegistered<AuthStateManager>()) {
          _log('[Init] 依赖服务已就绪，初始化仓库并拉取详情');
          final apiClient = ApiClient(
            tokenStorage: Get.find<TokenStorageService>(),
            tokenManager: Get.find<TokenManager>(),
            authStateManager: Get.find<AuthStateManager>(),
          );
          _productRepository = ProductRepository(apiClient);
          if (_refundNo.isNotEmpty) {
            await loadRefundDetail(_refundNo);
          }
          return;
        }
      } catch (_) {}
      attempts++;
      await Future.delayed(const Duration(milliseconds: 100));
    }
    // 超时兜底：直接使用 Dio + Token 头请求一次，避免没有任何请求发生
    _log('[Init] 等待依赖服务超时，使用直连方式请求退款详情');
    if (_refundNo.isNotEmpty) {
      await _fetchDetailDirect(_refundNo);
    }
  }

  Future<void> loadRefundDetail(String refundNo) async {
    if (refundNo.isEmpty) return;
    try {
      state.isLoading.value = true;
      if (_productRepository == null) {
        // 理论上不会发生（late 初始化），但作为稳妥兜底
        await _fetchDetailDirect(refundNo);
        return;
      }
      final raw = await _productRepository!.getRefundDetail(refundNo);
      final resp = RefundDetailResponse.fromJson(raw);
      if (resp.code == 0) {
        state.detail.value = resp.data;
      } else {
        Get.snackbar('错误', resp.message);
      }
    } catch (e) {
      Get.snackbar('错误', '加载退款详情失败: $e');
    } finally {
      state.isLoading.value = false;
    }
  }

  Future<void> cancelRefund() async {
    final current = state.detail.value;
    final refundNo = current?.refundNo ?? _refundNo;
    if (refundNo.isEmpty) {
      Get.snackbar('提示', '未获取到退款单号');
      return;
    }
    try {
      state.isLoading.value = true;
      if (Get.isRegistered<TokenStorageService>() &&
          Get.isRegistered<TokenManager>() &&
          Get.isRegistered<AuthStateManager>() &&
          (_productRepository != null)) {
        final raw = await _productRepository!.cancelRefund(refundNo);
        final resp = CancelRefundResponse.fromJson(raw);
        if (resp.code == 0 && resp.ok) {
          Get.snackbar('成功', resp.data?.message.isNotEmpty == true ? resp.data!.message : '撤销成功');
          await loadRefundDetail(refundNo);
        } else {
          Get.snackbar('错误', resp.message.isNotEmpty ? resp.message : '撤销失败');
        }
      } else {
        // 兜底直连
        await _cancelDirect(refundNo);
      }
    } catch (e) {
      Get.snackbar('错误', '撤销失败: $e');
    } finally {
      state.isLoading.value = false;
    }
  }

  Future<void> _cancelDirect(String refundNo) async {
    try {
      final tokenHeaders = await TokenAccessHelper.buildAccessTokenHeader();
      if (tokenHeaders.isEmpty) {
        Get.snackbar('错误', '请先登录');
        return;
      }
      final dio = Dio(BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        headers: {
          ...tokenHeaders,
          'Content-Type': Headers.formUrlEncodedContentType,
          'Accept': 'application/json',
        },
      ));
      final path = ApiConstants.refundCancel.replaceAll('{refundNo}', refundNo);
      final response = await dio.post(path, data: const <String, dynamic>{});
      if (response.statusCode == 200) {
        final resp = CancelRefundResponse.fromJson(response.data as Map<String, dynamic>);
        if (resp.code == 0 && resp.ok) {
          Get.snackbar('成功', resp.data?.message.isNotEmpty == true ? resp.data!.message : '撤销成功');
          await loadRefundDetail(refundNo);
        } else {
          Get.snackbar('错误', resp.message.isNotEmpty ? resp.message : '撤销失败');
        }
      } else {
        Get.snackbar('错误', '请求失败: ${response.statusCode}');
      }
    } catch (e) {
      Get.snackbar('错误', '撤销失败: $e');
    }
  }
  Future<void> _fetchDetailDirect(String refundNo) async {
    try {
      state.isLoading.value = true;
      final tokenHeaders = await TokenAccessHelper.buildAccessTokenHeader();
      if (tokenHeaders.isEmpty) {
        _log('[Detail] 未找到访问令牌，无法请求');
        Get.snackbar('错误', '请先登录');
        return;
      }
      final dio = Dio(BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        headers: {
          ...tokenHeaders,
          'Content-Type': Headers.formUrlEncodedContentType,
          'Accept': 'application/json',
        },
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
      ));
      final path = ApiConstants.refundDetail.replaceAll('{refundNo}', refundNo);
      _log('[Detail] 直连请求: $path');
      final response = await dio.get(path);
      _log('[Detail] 响应: ${response.data}');
      if (response.statusCode == 200) {
        final resp = RefundDetailResponse.fromJson(response.data as Map<String, dynamic>);
        if (resp.code == 0) {
          state.detail.value = resp.data;
        } else {
          Get.snackbar('错误', resp.message);
        }
      } else {
        Get.snackbar('错误', '请求失败: ${response.statusCode}');
      }
    } catch (e) {
      _log('[Detail] 异常: $e');
      Get.snackbar('错误', '加载退款详情失败: $e');
    } finally {
      state.isLoading.value = false;
    }
  }

  void _log(String msg) {
    // 统一日志前缀
    // ignore: avoid_print
    print('[RefundDetail] $msg');
  }

  /// 显示审核选项底部弹窗
  void showApproveOptions() {
    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              '审核退款申请',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                  approveRefund('approved');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  '通过退款',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                  approveRefund('rejected');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  '拒绝退款',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  /// 审核退款申请
  Future<void> approveRefund(String result) async {
    final current = state.detail.value;
    final refundNo = current?.refundNo ?? _refundNo;
    if (refundNo.isEmpty) {
      Get.snackbar('提示', '未获取到退款单号');
      return;
    }
    try {
      state.isLoading.value = true;
      if (Get.isRegistered<TokenStorageService>() &&
          Get.isRegistered<TokenManager>() &&
          Get.isRegistered<AuthStateManager>() &&
          (_productRepository != null)) {
        final raw = await _productRepository!.approveRefund(refundNo, result);
        final resp = ApproveRefundResponse.fromJson(raw);
        if (resp.code == 0 && resp.ok) {
          Get.snackbar('成功', resp.data?.statusText.isNotEmpty == true ? resp.data!.statusText : '审核成功');
          await loadRefundDetail(refundNo);
        } else {
          Get.snackbar('错误', resp.message.isNotEmpty ? resp.message : '审核失败');
        }
      } else {
        // 兜底直连
        await _approveDirect(refundNo, result);
      }
    } catch (e) {
      Get.snackbar('错误', '审核失败: $e');
    } finally {
      state.isLoading.value = false;
    }
  }

  Future<void> _approveDirect(String refundNo, String result) async {
    try {
      final tokenHeaders = await TokenAccessHelper.buildAccessTokenHeader();
      if (tokenHeaders.isEmpty) {
        Get.snackbar('错误', '请先登录');
        return;
      }
      final dio = Dio(BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        headers: {
          ...tokenHeaders,
          'Content-Type': Headers.jsonContentType,
          'Accept': 'application/json',
        },
      ));
      final requestData = {
        'refundNo': refundNo,
        'result': result,
      };
      final response = await dio.post(ApiConstants.refundApprove, data: requestData);
      if (response.statusCode == 200) {
        final resp = ApproveRefundResponse.fromJson(response.data as Map<String, dynamic>);
        if (resp.code == 0 && resp.ok) {
          Get.snackbar('成功', resp.data?.statusText.isNotEmpty == true ? resp.data!.statusText : '审核成功');
          await loadRefundDetail(refundNo);
        } else {
          Get.snackbar('错误', resp.message.isNotEmpty ? resp.message : '审核失败');
        }
      } else {
        Get.snackbar('错误', '请求失败: ${response.statusCode}');
      }
    } catch (e) {
      Get.snackbar('错误', '审核失败: $e');
    }
  }
}
