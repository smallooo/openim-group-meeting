import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';

import '../../../../routes/app_pages.dart';
import '../../../core/network/api_client.dart';
import '../../../features/product/data/models/product_models.dart';
import '../../../features/product/data/repositories/product_repository.dart';
import 'state.dart';

class OrderRequestRefundLogic extends GetxController {
  final OrderRequestRefundState state = OrderRequestRefundState();
  
  ProductRepository? _productRepository;
  String? _orderId;
  double? _totalAmount;
  
  @override
  void onInit() {
    super.onInit();
    _initializeData();
  }
  
  // 初始化数据
  void _initializeData() async {
    final arguments = Get.arguments as Map<String, dynamic>?;
    if (arguments != null) {
      _orderId = arguments['orderId'] as String?;
      _totalAmount = arguments['totalAmount'] as double?;
      
      if (_orderId != null && _totalAmount != null) {
        // 设置默认退款金额为总金额
        state.setRefundAmount(_totalAmount!);
      }
    }
  }
  
  // 获取 ProductRepository 实例
  Future<ProductRepository> _getProductRepository() async {
    if (_productRepository != null) {
      return _productRepository!;
    }
    
    // 等待 ApiClient 可用
    while (!Get.isRegistered<ApiClient>()) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
    
    final apiClient = Get.find<ApiClient>();
    _productRepository = ProductRepository(apiClient);
    return _productRepository!;
  }
  
  // 更新退款原因
  void updateRefundReason(String reason) {
    state.setRefundReason(reason);
  }
  
  // 选择退款类型
  void selectRefundType(int type) {
    state.setRefundType(type);
  }
  
  // 上传文件
  void uploadFile() {
    IMViews.openPhotoSheet(
      onData: (path, url) async {
        if (path != null) {
          // 将选中的图片路径添加到上传文件列表
          state.addUploadFile(path.toString());
          // Get.snackbar('成功', '图片已选择，上传功能待实现');
        }
      },
      crop: false, // 不裁剪图片
      toUrl: false, // 不需要上传到服务器，只获取本地路径
      quality: 80,
    );
  }
  
  // 移除文件
  void removeFile(int index) {
    state.removeUploadFile(index);
  }
  
  // 提交退款申请
  void submitRefundRequest() async {
    if (state.refundReason.value.trim().isEmpty) {
      Get.snackbar('提示', '请填写退款原因');
      return;
    }
    
    if (_orderId == null) {
      Get.snackbar('错误', '订单信息不完整');
      return;
    }
    
    state.isSubmitting.value = true;
    
    try {
      // 获取 ProductRepository 实例
      final productRepository = await _getProductRepository();
      
      // 构建请求参数
      final request = RefundApplyRequest(
        orderId: int.parse(_orderId!),
        refundType: state.refundType.value == 0 ? 'full' : 'partial',
        refundAmount: state.refundAmount.value.toStringAsFixed(2),
        refundReason: state.refundReason.value.trim(),
      );
      
      // 调用API
      final response = await productRepository.applyRefund(request);
      
      if (response.errCode == 0) {
        Get.snackbar('成功', '退款申请提交成功');
        // 跳转到退款申请提交成功页面
        Get.toNamed(AppRoutes.orderRefundSubmit);
      } else {
        // 显示服务器返回的具体错误信息
        final errorMessage = response.errMsg.isNotEmpty ? response.errMsg : '退款申请提交失败';
        Get.snackbar('提示', errorMessage);
      }
    } catch (e) {
      print('提交退款申请失败: $e');
      Get.snackbar('错误', '网络错误，请稍后重试');
    } finally {
      state.isSubmitting.value = false;
    }
  }
  
  // 返回上一页
  void goBack() {
    Get.back();
  }
}
