import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toklink/tk_app/pages/tk_subscription/order_after_detail/state.dart';

import '../order_list/state.dart';
import 'logic.dart';

class OrderAfterDetailPage extends StatelessWidget {
  OrderAfterDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 注册控制器
    Get.put(OrderAfterDetailLogic());
    
    final logic = Get.find<OrderAfterDetailLogic>();
    final state = logic.state;
    
    return Scaffold(
      // backgroundColor: const Color(0xFFF5F5F5),
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: logic.goBack,
        ),
        title: const Text(
          '交易详情',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        if (state.orderItem.value == null) {
          return const Center(
            child: Text('订单数据加载失败'),
          );
        }
        
        final order = state.orderItem.value!;
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 商品列表卡片
              _buildProductListCard(order),
              const SizedBox(height: 16),
              
              // 订单概要卡片
              _buildOrderSummaryCard(order),
              const SizedBox(height: 32),
              
              // 申请退款按钮
              _buildRefundButton(logic, state),
            ],
          ),
        );
      }),
    );
  }

  // 商品列表卡片
  Widget _buildProductListCard(OrderItem order) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '商品列表',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16),
          ...order.items.map((item) => Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                // 商品图片/图标
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2D3748),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    item.icon,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '数量：${item.quantity}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '¥${item.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }

  // 订单概要卡片
  Widget _buildOrderSummaryCard(OrderItem order) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '订单概要',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16),
          
          // 交易ID
          _buildSummaryRow('交易ID', order.transactionId),
          const SizedBox(height: 12),
          
          // 创建日期
          _buildSummaryRow('创建日期', _formatDate(order.createTime)),
          const SizedBox(height: 12),
          
          // 支付方式
          _buildSummaryRow('支付方式', '钱包'),
          const SizedBox(height: 12),
          
          // 状态
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '订单概要',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFF4CAF50),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  '已完成',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 20),
          const Divider(height: 1, color: Color(0xFFE0E0E0)),
          const SizedBox(height: 16),
          
          // 价格明细
          Row(
            children: [
              const Icon(
                Icons.receipt_outlined,
                size: 20,
                color: Colors.grey,
              ),
              const SizedBox(width: 8),
              const Text(
                '商品小计',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              Text(
                '¥${_calculateSubtotal(order).toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          
          // 运费
          Row(
            children: [
              const Icon(
                Icons.local_shipping_outlined,
                size: 20,
                color: Colors.grey,
              ),
              const SizedBox(width: 8),
              const Text(
                '运费',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              const Text(
                '¥10.00',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          
          // 优惠
          Row(
            children: [
              const Icon(
                Icons.local_offer_outlined,
                size: 20,
                color: Colors.grey,
              ),
              const SizedBox(width: 8),
              const Text(
                '优惠',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              const Text(
                '- ¥50.00',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  
  // 构建概要行
  Widget _buildSummaryRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
  
  // 格式化日期
  String _formatDate(DateTime date) {
    return '${date.year}年${date.month.toString().padLeft(2, '0')}月${date.day.toString().padLeft(2, '0')}日${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
  }
  
  // 计算小计
  double _calculateSubtotal(OrderItem order) {
    return order.items.fold(0.0, (sum, item) => sum + (item.price * item.quantity));
  }

  // 申请退款按钮
  Widget _buildRefundButton(OrderAfterDetailLogic logic, OrderAfterDetailState state) {
    return Obx(() => SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: state.isSubmitting.value ? null : logic.submitAfterSales,
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
                '申请退款',
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
