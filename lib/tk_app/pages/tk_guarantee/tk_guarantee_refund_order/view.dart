import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../routes/app_pages.dart';
import 'logic.dart';
import 'model/guarantee_refund_order_model.dart';

class TkGuaranteeRefundOrderPage extends StatelessWidget {
  TkGuaranteeRefundOrderPage({Key? key}) : super(key: key);

  final logic = Get.find<TkGuaranteeRefundOrderLogic>();
  final state = Get.find<TkGuaranteeRefundOrderLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return Column(
            children: [
              _buildHeader(context),
              Expanded(child: _buildRefundList()),
            ],
          );
        },
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      height: 196,
      width: double.infinity,
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, left: 16.w, right: 0.w, bottom: 16.h),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0F0F0F), Color(0xFF171717)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.only(left: 0.w, bottom: 0),
              child: SizedBox(
                width: 100.w,
                child: const Icon(Icons.receipt_long, color: Colors.white38, size: 100),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () => Get.back(),
                  ),
                ],
              ),
              SizedBox(
                child: Text(
                  '售后订单',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                '管理您的退款申请，跟踪售后进度',
                style: TextStyle(fontSize: 13.sp, color: Colors.white70),
              ),
              SizedBox(height: 18.h),
              SizedBox(
                width: 56.w,
                height: 6.w,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(3.w),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRefundList() {
    return Obx(() {
      if (state.isLoading.value && state.refundRecords.isEmpty) {
        return const Center(child: CircularProgressIndicator());
      }

      if (state.refundRecords.isEmpty) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('暂无退款订单', style: TextStyle(fontSize: 14.sp, color: Colors.black54)),
              SizedBox(height: 16.h),
              ElevatedButton(
                onPressed: () => logic.refreshRefundList(),
                child: const Text('刷新'),
              ),
            ],
          ),
        );
      }

      return RefreshIndicator(
        onRefresh: () => logic.refreshRefundList(),
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          itemCount: state.refundRecords.length,
          itemBuilder: (context, index) {
            final item = state.refundRecords[index];
            return GestureDetector(
              onTap: () {
                Get.toNamed(
                  AppRoutes.tkGuaranteeRefundOrderDetail,
                  arguments: {'refundNo': item.refundNo},
                );
              },
              child: _RefundCard(refund: item),
            );
          },
        ),
      );
    });
  }
}

class _RefundCard extends StatelessWidget {
  final RefundRecord refund;
  const _RefundCard({required this.refund});

  Color get statusColor {
    switch (refund.status) {
      case 'pending_review':
        return const Color(0xFFFFE8D1);
      case 'approved':
        return const Color(0xFFCFF7E9);
      case 'rejected':
        return const Color(0xFFFFE4E1);
      case 'completed':
        return const Color(0xFFE5F2FF);
      case 'cancelled':
        return const Color(0xFFF2F2F2);
      default:
        return const Color(0xFFF2F2F2);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFF6F6F6), width: 1),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    '订单号：${refund.orderNo}',
                    style: TextStyle(fontSize: 13.sp, color: const Color(0xFF333333)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Expanded(
                  child: Text(
                    '退款单号：${refund.refundNo}',
                    style: TextStyle(fontSize: 13.sp, color: const Color(0xFF333333)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
              decoration: BoxDecoration(
                color: statusColor,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Text(
                refund.statusText,
                style: TextStyle(fontSize: 12.sp, color: const Color(0xFF333333)),
              ),
            ),
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('退款金额', style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
                    Text('¥ ${refund.refundAmount.toStringAsFixed(2)}', 
                         style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: const Color(0xFFEB2F2F))),
                  ],
                ),
                if (refund.refundType == 'partial')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('退款类型', style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
                      Text('部分退款', style: TextStyle(fontSize: 14.sp, color: Colors.black54)),
                    ],
                  ),
              ],
            ),
            if (refund.refundReason.isNotEmpty) ...[
              SizedBox(height: 12.h),
              Text('退款原因：${refund.refundReason}', 
                   style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
            ],
            SizedBox(height: 8.h),
            Text('申请时间：${refund.createdAt}', style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
          ],
        ),
      ),
    );
  }
}

