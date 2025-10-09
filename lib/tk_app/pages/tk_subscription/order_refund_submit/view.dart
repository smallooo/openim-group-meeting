import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class OrderRefundSubmitPage extends StatelessWidget {
  const OrderRefundSubmitPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<OrderRefundSubmitLogic>();
    final state = logic.state;

    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Spacer(flex: 2),
            
            // 状态图标
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                color: Color(0xFFFF4444),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.close,
                color: Colors.white,
                size: 40,
              ),
            ),
            
            const SizedBox(height: 24),
            
            // 主标题
            const Text(
              '退款申请已提交',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Color(0xFF333333),
              ),
            ),
            
            const SizedBox(height: 12),

            // 副标题
            const Text(
              '我们已经收到您的退款申请,正在等待处理',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF666666),
                height: 1.4,
              ),
            ),
            
            const Spacer(flex: 2),
            
            // 退款请求摘要卡片
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFE5E5E5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '退款请求摘要',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF333333),
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // 退款请求ID
                  Obx(() => _buildInfoRow(
                    '退款请求 ID:',
                    state.refundRequestId.value,
                  )),
                  
                  const SizedBox(height: 12),
                  
                  // 横线分隔
                  Container(
                    height: 1,
                    color: const Color(0xFFE5E5E5),
                  ),
                  
                  const SizedBox(height: 12),
                  
                  // 提交日期
                  Obx(() => _buildInfoRow(
                    '提交日期:',
                    state.submissionDate.value,
                  )),
                ],
              ),
            ),
            
            const Spacer(flex: 3),
            
            // 按钮区域
            Column(
              children: [
                // 跟踪退款状态按钮
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: logic.trackRefundStatus,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9E13F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      '跟踪退款状态',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                
                const SizedBox(height: 16),
                
                // 完成按钮
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: logic.complete,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF5F5F5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                          color: Color(0xFFE5E5E5),
                          width: 1,
                        ),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      '完成',
                      style: TextStyle(
                        color: Color(0xFF999999),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
  
  // 构建信息行
  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF999999),
          ),
        ),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF999999),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
