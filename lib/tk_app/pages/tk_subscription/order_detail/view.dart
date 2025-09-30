import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 确保控制器被注册
    final logic = Get.put(OrderDetailLogic());
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
          '订单详情',
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
        
        if (state.orderDetail.value == null) {
          return const Center(
            child: Text(
              '订单详情加载失败',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          );
        }
        
        final orderDetail = state.orderDetail.value!;
        
        return SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.all(20),
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
                // 订单商品列表
                _buildOrderItems(orderDetail),
                
                const SizedBox(height: 24),
                
                // 订单汇总信息
                _buildOrderSummary(orderDetail),
              ],
            ),
          ),
        );
      }),
    );
  }

  // 订单商品列表
  Widget _buildOrderItems(OrderDetailItem orderDetail) {
    return Column(
      children: orderDetail.items.map((product) => _buildProductItem(product)).toList(),
    );
  }

  // 单个商品项
  Widget _buildProductItem(OrderDetailProduct product) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
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
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '数量: ${product.quantity}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          
          // 价格
          Text(
            product.priceText,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  // 订单汇总信息
  Widget _buildOrderSummary(OrderDetailItem orderDetail) {
    return Column(
      children: [
        // 总计
        _buildSummaryRow('总计', orderDetail.totalAmountText),
        
        const SizedBox(height: 16),
        
        // 交易编号
        _buildSummaryRow('交易编号', orderDetail.transactionId),
        
        const SizedBox(height: 16),
        
        // 交易时间
        _buildSummaryRow('交易时间', orderDetail.formattedTime),
        
        const SizedBox(height: 16),
        
        // 交易金额
        _buildSummaryRow('交易金额', orderDetail.transactionAmountText),
      ],
    );
  }

  // 汇总信息行
  Widget _buildSummaryRow(String label, String value) {
    return Row(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}