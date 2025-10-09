import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../order_list/state.dart';

class OrderAfterDetailState {
  // 订单数据
  Rx<OrderItem?> orderItem = Rx<OrderItem?>(null);
  
  // 售后申请表单
  RxString selectedReason = ''.obs;
  RxString description = ''.obs;
  RxList<String> selectedImages = <String>[].obs;
  
  // 售后原因选项
  final List<String> reasonOptions = [
    '商品质量问题',
    '商品与描述不符',
    '收到商品损坏',
    '商品发错',
    '不想要了',
    '其他原因',
  ];
  
  // 是否正在提交
  RxBool isSubmitting = false.obs;
  
  OrderAfterDetailState() {
    ///Initialize variables
  }
  
  // 设置订单数据
  void setOrderItem(OrderItem item) {
    orderItem.value = item;
  }
  
  // 选择售后原因
  void selectReason(String reason) {
    selectedReason.value = reason;
  }
  
  // 更新描述
  void updateDescription(String desc) {
    description.value = desc;
  }
  
  // 添加图片
  void addImage(String imagePath) {
    selectedImages.add(imagePath);
  }
  
  // 移除图片
  void removeImage(int index) {
    if (index < selectedImages.length) {
      selectedImages.removeAt(index);
    }
  }
  
  // 清空表单
  void clearForm() {
    selectedReason.value = '';
    description.value = '';
    selectedImages.clear();
  }
}
