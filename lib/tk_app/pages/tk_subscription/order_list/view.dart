import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class OrderListPage extends StatelessWidget {
  const OrderListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 确保控制器被注册
    final logic = Get.put(OrderListLogic());
    final state = logic.state;
    
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          '订单',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        if (state.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        
        if (state.orderList.isEmpty) {
          return const Center(
            child: Text(
              '暂无订单',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          );
        }
        
        return RefreshIndicator(
          onRefresh: () async => logic.refreshOrderList(),
          child: ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: state.orderList.length,
            itemBuilder: (context, index) {
              final order = state.orderList[index];
              return _buildOrderCard(logic, order);
            },
          ),
        );
      }),
    );
  }

  // 订单卡片
  Widget _buildOrderCard(OrderListLogic logic, OrderItem order) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 交易编号和状态
          Row(
            children: [
              Text(
                '交易编号: ${order.transactionId}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              Text(
                order.statusText,
                style: TextStyle(
                  fontSize: 14,
                  color: order.statusColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 16),
          
          // 商品列表
          ...order.items.map((product) => _buildProductItem(product)),
          
          const SizedBox(height: 16),
          
          // 实付金额
          Row(
            children: [
              const Spacer(),
              Text(
                '实付金额: ${order.totalAmount.toInt()}USDT',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 16),
          
          // 操作按钮
          _buildActionButtons(logic, order),
        ],
      ),
    );
  }

  // 商品项
  Widget _buildProductItem(OrderProduct product) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          // 商品图标
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: product.iconColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              product.icon,
              color: Colors.white,
              size: 20,
            ),
          ),
          
          const SizedBox(width: 12),
          
          // 商品信息
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '数量: ${product.quantity}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          
          // 价格
          Text(
            'USDT ${product.price.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  // 操作按钮
  Widget _buildActionButtons(OrderListLogic logic, OrderItem order) {
    return Row(
      children: [
        // 更多按钮
        GestureDetector(
          onTap: () => logic.showMoreOptions(order),
          child: Text(
            '更多',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
        ),
        
        const Spacer(),
        
        // 联系客服按钮
        GestureDetector(
          onTap: () => logic.contactCustomerService(order),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFF9E13F7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              '联系客服',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        
        const SizedBox(width: 8),
        
        // 申请售后按钮
        GestureDetector(
          onTap: () => logic.applyAfterSales(order),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color(0xFF9E13F7),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              '申请售后',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF9E13F7),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}