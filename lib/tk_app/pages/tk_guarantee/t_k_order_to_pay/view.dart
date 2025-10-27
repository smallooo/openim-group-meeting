import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toklink/tk_app/pages/tk_guarantee/t_k_order_to_pay/state.dart';

import 'logic.dart';

class TKOrderToPayPage extends StatelessWidget {
  TKOrderToPayPage({super.key});

  final logic = Get.find<TKOrderToPayLogic>();
  final state = Get.find<TKOrderToPayLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          '收银台',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        if (state.isLoading.value && state.orderDetail.value == null) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.orderDetail.value == null) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error_outline, size: 64.sp, color: Colors.grey),
                SizedBox(height: 16.h),
                Text('订单信息加载失败', style: TextStyle(fontSize: 16.sp, color: Colors.grey)),
                SizedBox(height: 16.h),
                ElevatedButton(
                  onPressed: () => logic.loadOrderDetail(logic.orderId ?? ''),
                  child: const Text('重新加载'),
                ),
              ],
            ),
          );
        }

        return Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildOrderSection(),
                    SizedBox(height: 16.h),
                    _buildPaymentSection(),
                  ],
                ),
              ),
            ),
            _buildBottomPayButton(),
          ],
        );
      }),
    );
  }

  Widget _buildOrderSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.receipt_long,
                color: const Color(0xFF9E13F7),
                size: 20.sp,
              ),
              SizedBox(width: 8.w),
              Text(
                '订单详情',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF333333),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Obx(() => Text(
            state.orderNo.value,
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xFF666666),
            ),
          )),
          SizedBox(height: 16.h),
          Obx(() {
            if (state.orderItems.isEmpty) {
              return const SizedBox.shrink();
            }
            return Column(
              children: state.orderItems.map((item) => _buildOrderItem(item)).toList(),
            );
          }),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '商品总价：',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xFF333333),
                ),
              ),
              Obx(() => Text(
                '${state.orderItems.fold(0.0, (sum, item) => sum + (item.unitPrice * item.quantity))}${state.currency.value}',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF333333),
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOrderItem(OrderItemInfo item) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${item.productName}：',
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xFF333333),
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              '${item.quantity}×${item.unitPrice.toStringAsFixed(2)}${state.currency.value}',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF333333),
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.payment,
                color: const Color(0xFF9E13F7),
                size: 20.sp,
              ),
              SizedBox(width: 8.w),
              Text(
                '支付信息',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF333333),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          _buildPaymentRow('支付币种：', state.currency.value),
          SizedBox(height: 12.h),
          Obx(() => _buildPaymentRow(
            '支付状态：',
            state.paymentStatusText.value,
          )),
          SizedBox(height: 12.h),
          Obx(() => _buildPaymentRow(
            '手续费：',
            '${state.feeAmount.value}${state.currency.value}(${state.feeRate.value}%)',
          )),
          SizedBox(height: 16.h),
          Divider(height: 1.h, color: const Color(0xFFEEEEEE)),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '总计支付',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF333333),
                ),
              ),
              Obx(() => Text(
                '${state.totalAmount.value}${state.currency.value}',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFEB2F2F),
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color(0xFF333333),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF333333),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomPayButton() {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10.r,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: 48.h,
          child: Obx(() {
            final isCompleted = state.isPaymentCompleted.value;
            final statusText = state.paymentStatusText.value;
            
            return ElevatedButton(
              onPressed: isCompleted ? null : () async => await logic.processPay(),
              style: ElevatedButton.styleFrom(
                backgroundColor: isCompleted 
                    ? Colors.grey.withOpacity(0.3)
                    : const Color(0xFF9E13F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.r),
                ),
                elevation: 0,
              ),
              child: Text(
                isCompleted ? statusText : '继续支付',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: isCompleted ? Colors.grey : Colors.white,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
