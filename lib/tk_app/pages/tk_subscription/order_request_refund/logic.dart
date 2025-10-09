import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';

import '../../../../routes/app_pages.dart';
import 'state.dart';

class OrderRequestRefundLogic extends GetxController {
  final OrderRequestRefundState state = OrderRequestRefundState();
  
  
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
  void submitRefundRequest() {
    if (state.refundReason.value.trim().isEmpty) {
      Get.snackbar('提示', '请填写退款原因');
      return;
    }
    
    state.isSubmitting.value = true;
    
    // TODO: 提交退款申请到服务器
    Future.delayed(const Duration(seconds: 1), () {
      state.isSubmitting.value = false;
      
      // 跳转到退款申请提交成功页面
      Get.toNamed(AppRoutes.orderRefundSubmit);
    });
  }
  
  // 返回上一页
  void goBack() {
    Get.back();
  }
}
