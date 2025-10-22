import 'package:get/get.dart';

class OrderRequestRefundState {
  // 退款原因
  RxString refundReason = ''.obs;
  
  // 退款类型：0-全额退款，1-部分退款
  RxInt refundType = 0.obs;
  
  // 退款金额
  RxDouble refundAmount = 0.0.obs;
  
  // 上传的文件列表
  RxList<String> uploadedFiles = <String>[].obs;
  
  // 是否正在提交
  RxBool isSubmitting = false.obs;
  
  OrderRequestRefundState() {
    ///Initialize variables
  }
  
  // 设置退款原因
  void setRefundReason(String reason) {
    refundReason.value = reason;
  }
  
  // 设置退款类型
  void setRefundType(int type) {
    refundType.value = type;
  }
  
  // 设置退款金额
  void setRefundAmount(double amount) {
    refundAmount.value = amount;
  }
  
  // 添加上传文件
  void addUploadFile(String filePath) {
    uploadedFiles.add(filePath);
  }
  
  // 移除上传文件
  void removeUploadFile(int index) {
    if (index < uploadedFiles.length) {
      uploadedFiles.removeAt(index);
    }
  }
  
  // 清空表单
  void clearForm() {
    refundReason.value = '';
    refundType.value = 0;
    uploadedFiles.clear();
  }
}
