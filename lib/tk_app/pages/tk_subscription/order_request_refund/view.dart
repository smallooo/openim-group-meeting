import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class OrderRequestRefundPage extends StatelessWidget {
  OrderRequestRefundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 注册控制器
    Get.put(OrderRequestRefundLogic());
    
    final logic = Get.find<OrderRequestRefundLogic>();
    final state = logic.state;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: logic.goBack,
        ),
        title: const Text(
          '退款申请',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          // 点击空白处收起键盘
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 退款原因
              _buildRefundReasonSection(logic, state),
              const SizedBox(height: 24),
              
              // 退款类型
              _buildRefundTypeSection(logic, state),
              const SizedBox(height: 24),
              
              // 上传凭证
              _buildUploadSection(logic, state),
              const SizedBox(height: 40),
              
              // 提交按钮
              _buildSubmitButton(logic, state),
            ],
          ),
        ),
      ),
    );
  }

  // 退款原因部分
  Widget _buildRefundReasonSection(OrderRequestRefundLogic logic, state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '退款原因',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFFE5E5E5)),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  onChanged: logic.updateRefundReason,
                  maxLines: null,
                  maxLength: 300,
                  decoration: const InputDecoration(
                    hintText: '请详细描述您的退款理由',
                    hintStyle: TextStyle(
                      color: Color(0xFFBBBBBB),
                      fontSize: 14,
                    ),
                    border: InputBorder.none,
                    counterText: '',
                  ),
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                right: 12,
                child: Obx(() => Text(
                  '${state.refundReason.value.length}/300',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFFBBBBBB),
                  ),
                )),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // 退款类型部分
  Widget _buildRefundTypeSection(OrderRequestRefundLogic logic, state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '退款类型',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 16),
        
        // 全额退款选项
        Obx(() => GestureDetector(
          onTap: () => logic.selectRefundType(0),
          child: Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: state.refundType.value == 0 
                    ? const Color(0xFF9E13F7) 
                    : const Color(0xFFE5E5E5),
              ),
            ),
            child: Row(
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '全额退款',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '(所有商品退款)',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFBBBBBB),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: state.refundType.value == 0 
                          ? const Color(0xFF9E13F7) 
                          : const Color(0xFFBBBBBB),
                      width: 2,
                    ),
                  ),
                  child: state.refundType.value == 0
                      ? Center(
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF9E13F7),
                            ),
                          ),
                        )
                      : null,
                ),
              ],
            ),
          ),
        )),
        
        // 部分退款选项
        Obx(() => GestureDetector(
          onTap: () => logic.selectRefundType(1),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: state.refundType.value == 1 
                    ? const Color(0xFF9E13F7) 
                    : const Color(0xFFE5E5E5),
              ),
            ),
            child: Row(
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '部分退款',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '(部分商品退款)',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFBBBBBB),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: state.refundType.value == 1 
                          ? const Color(0xFF9E13F7) 
                          : const Color(0xFFBBBBBB),
                      width: 2,
                    ),
                  ),
                  child: state.refundType.value == 1
                      ? Center(
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF9E13F7),
                            ),
                          ),
                        )
                      : null,
                ),
              ],
            ),
          ),
        )),
      ],
    );
  }

  // 上传凭证部分
  Widget _buildUploadSection(OrderRequestRefundLogic logic, state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '上传凭证',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 16),
        
        // 已选择的图片列表
        Obx(() {
          if (state.uploadedFiles.isNotEmpty) {
            return Column(
              children: [
                ...state.uploadedFiles.asMap().entries.map((entry) {
                  int index = entry.key;
                  String filePath = entry.value;
                  return Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFFE5E5E5)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                              image: FileImage(File(filePath)),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '图片 ${index + 1}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                '已选择',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () => logic.removeFile(index),
                          icon: const Icon(
                            Icons.close,
                            color: Color(0xFF999999),
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                const SizedBox(height: 8),
              ],
            );
          }
          return const SizedBox.shrink();
        }),
        
        // 上传按钮
        GestureDetector(
          onTap: logic.uploadFile,
          child: Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color(0xFFE5E5E5),
                style: BorderStyle.solid,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.cloud_upload_outlined,
                  size: 32,
                  color: Colors.grey[400],
                ),
                const SizedBox(height: 8),
                Text(
                  '点击选择图片上传\n支持 JPG、PNG 格式',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // 提交按钮
  Widget _buildSubmitButton(OrderRequestRefundLogic logic, state) {
    return Obx(() => SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: state.isSubmitting.value ? null : logic.submitRefundRequest,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF9E13F7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0,
        ),
        child: state.isSubmitting.value
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              )
            : const Text(
                '提交退款申请',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
    ));
  }
}
