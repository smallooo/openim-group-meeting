import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openim_common/openim_common.dart';
import 'package:toklink/routes/app_pages.dart';

import 'logic.dart';
import 'state.dart';

class TkGuaranteeOrderDetailPage extends StatelessWidget {
  TkGuaranteeOrderDetailPage({super.key});

  final logic = Get.find<TkGuaranteeOrderDetailLogic>();
  final TkGuaranteeOrderDetailState state = Get.find<TkGuaranteeOrderDetailLogic>().state;

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
              Expanded(
                child: Obx(() {
                  if (state.isLoading.value && state.orderDetail.value == null) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  
                  return RefreshIndicator(
                    onRefresh: () => logic.refreshOrderDetail(),
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Padding(
                        padding: EdgeInsets.all(12.w),
                        child: Column(
                          children: [
                            Obx(() => _buildOrderSummary()),
                            SizedBox(height: 12.h),
                            Obx(() => _buildStatusCard()),
                            SizedBox(height: 12.h),
                            Obx(() => _buildItemsCard()),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
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
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 0.h, left: 16.w, right: 0.w, bottom: 16.h),
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
                child: ImageRes.tkGuarantee1.toImage,
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
                  SizedBox(width: 4.w),
                  // IconButton(
                  //   icon: const Icon(Icons.more_horiz, color: Colors.white),
                  //   onPressed: () {},
                  // ),
                ],
              ),
              // SizedBox(height: 8.h),
              SizedBox(
                child: Text(
                  '我的担保订单',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                '跟踪您的所有担保交易，保持交易的安全透明',
                style: TextStyle(fontSize: 13.sp, color: Colors.white70),
              ),
              SizedBox(height: 18.h),
              SizedBox(
                width: 56.w,
                height: 6.w,
                child: ImageRes.tkGuarantee2.toImage,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOrderSummary() {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.r), border: Border.all(color: const Color(0xFFF6F6F6), width: 1),
          boxShadow: [
        BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 8.r, offset: const Offset(0, 4)),
      ]
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Expanded(
              child: Obx(() => Text('订单#${state.orderId.value}', style: TextStyle(fontSize: 13.sp, color: const Color(0xFF333333))))
            ),
            _statusTag(state.status.value),
          ]),
          SizedBox(height: 10.h),
          Obx(() => Text('¥ ${state.amountCNY.value.toStringAsFixed(2)}', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: const Color(0xFFEB2F2F)))),
          SizedBox(height: 12.h),
          Row(children: [
            CircleAvatar(radius: 16.r, backgroundColor: const Color(0xFFECECEC), backgroundImage: state.participantAvatarUrl.value.isEmpty ? null : NetworkImage(state.participantAvatarUrl.value)),
            SizedBox(width: 8.w),
            Obx(() => Text('参与方：${state.participantName.value}', style: TextStyle(fontSize: 13.sp, color: Colors.black87))),
          ]),
          SizedBox(height: 8.h),
          Obx(() => Text('客服： ${state.serviceName.value}', style: TextStyle(fontSize: 13.sp, color: Colors.black87))),
        ]),
      ),
    );
  }

  Widget _buildStatusCard() {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.r),border: Border.all(color: const Color(0xFFF6F6F6), width: 1), boxShadow: [
        // BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 8.r, offset: const Offset(0, 4)),
      ]),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Expanded(child: Text('订单状态', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: const Color(0xFF333333)))) ,
            _statusTag(state.status.value),
          ]),
          SizedBox(height: 8.h),
          Column(
            children: List.generate(
              state.steps.length,
              (index) => _buildStepItem(
                state.steps[index],
                isLast: index == state.steps.length - 1,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          // 根据订单状态显示不同的按钮
          Obx(() {
            final orderDetail = state.orderDetail.value;
            if (orderDetail != null && orderDetail.orderStatus == 1) {
              // 待付款状态，显示支付按钮
              return Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 45.h,
                    child: ElevatedButton(
                      onPressed: () => _navigateToPayment(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF9E13F7),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                        elevation: 0,
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                      ),
                      child: Text('立即支付', style: TextStyle(fontSize: 14.sp, color: Colors.white, fontWeight: FontWeight.w600)),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: double.infinity,
                    height: 45.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: const Color(0xFF9E13F7), width: 1),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r), side: BorderSide.none),
                          side: BorderSide.none,
                          elevation: 0,
                          shadowColor: Colors.transparent,
                          surfaceTintColor: Colors.transparent,
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                        ),
                        child: Text('联系客服', style: TextStyle(fontSize: 14.sp, color: const Color(0xFF9E13F7))),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              // 其他状态，只显示联系客服按钮
              return Container(
                width: double.infinity,
                height: 45.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: const Color(0xFF9E13F7), width: 1),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r), side: BorderSide.none),
                      side: BorderSide.none,
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      surfaceTintColor: Colors.transparent,
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                    ),
                    child: Text('联系客服', style: TextStyle(fontSize: 14.sp, color: const Color(0xFF9E13F7))),
                  ),
                ),
              );
            }
          }),
        ]),
      ),
    );
  }

  Widget _buildItemsCard() {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.r), border: Border.all(color: const Color(0xFFF6F6F6), width: 1),boxShadow: [
        // BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 8.r, offset: const Offset(0, 4)),
      ]),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('订单详情', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: const Color(0xFF333333))),
          SizedBox(height: 12.h),
          Column(children: state.items.map((i) => _buildItemRow(i)).toList()),
          SizedBox(height: 12.h),
          // Divider(height: 1, color: Colors.grey[300]),
          SizedBox(height: 12.h),
          _buildSummary(),
        ]),
      ),
    );
  }

  Widget _buildItemRow(OrderItem item) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: const Color(0xFFF6F6F6), width: 1),
      ),
      child: Row(children: [
        Container(
          width: 36.w,
          height: 36.w,
          decoration: BoxDecoration(color: const Color(0xFFEFF6FF), borderRadius: BorderRadius.circular(8.r)),
          child: Icon(Icons.workspace_premium, color: const Color(0xFF2B6CB0), size: 20.sp),
        ),
        SizedBox(width: 8.w),
        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(item.name, style: TextStyle(fontSize: 13.sp, color: const Color(0xFF333333))),
          SizedBox(height: 2.h),
          Text('数量：${item.quantity}', style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
        ])),
        Text('${item.currency} ${item.amount.toStringAsFixed(2)}', style: TextStyle(fontSize: 13.sp, color: const Color(0xFF333333))),
      ]),
    );
  }

  Widget _buildSummary() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [
        Expanded(child: Text('总计', style: TextStyle(fontSize: 13.sp, color: Colors.black54))),
        Obx(() => Text('${state.totalAmount.value.toStringAsFixed(0)}${state.totalCurrency.value}', style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600, color: const Color(0xFF333333)))),
      ]),
      SizedBox(height: 8.h),
      Obx(() => _summaryRow('交易编号', state.txnId.value)),
      Obx(() => _summaryRow('交易时间', state.txnTime.value)),
      Obx(() => _summaryRow('交易金额', '${state.totalAmount.value.toStringAsFixed(2)} ${state.totalCurrency.value}')),
    ]);
  }

  Widget _summaryRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(children: [
        SizedBox(width: 80.w, child: Text(label, style: TextStyle(fontSize: 12.sp, color: Colors.black54))),
        Expanded(child: Text(value, style: TextStyle(fontSize: 12.sp, color: const Color(0xFF333333)))),
      ]),
    );
  }

  Widget _buildStepItem(OrderStep s, {required bool isLast}) {
    final Widget statusIcon = SizedBox(
      width: 20.w,
      height: 20.w,
      child: s.done ? ImageRes.tkGuaranteeOrder1.toImage : ImageRes.tkGuaranteeOrder2.toImage,
    );

    final Widget connector = SizedBox(
      width: 5.w,
      height: 30.h,
      child: FittedBox(
        fit: BoxFit.fill,
        child: ImageRes.tkGuaranteeOrder3.toImage,
      ),
    );

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 20.w, child: statusIcon),
            SizedBox(width: 8.w),
            Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(s.title, style: TextStyle(fontSize: 13.sp, color: const Color(0xFF333333))),
              if (s.time.isNotEmpty) SizedBox(height: 2.h),
              if (s.time.isNotEmpty) Text(s.time, style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
            ])),
          ]),
          if (!isLast)
            Row(children: [
              SizedBox(width: 20.w, child: Align(alignment: Alignment.topCenter, child: connector)),
              SizedBox(width: 8.w),
              Expanded(child: SizedBox(height: 6.h)),
            ]),
        ],
      ),
    );
  }

  Widget _statusTag(String text) {
    return Container(
      width: 64.w,
      height: 28.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(color: const Color(0xFF3DF7CF).withOpacity(0.3), borderRadius: BorderRadius.circular(15.r)),
      child: Text(text, style: TextStyle(fontSize: 12.sp, color: const Color(0xFF0AC7BF))),
    );
  }

  /// 导航到支付页面
  void _navigateToPayment() {
    final orderDetail = state.orderDetail.value;
    if (orderDetail == null) {
      Get.snackbar('错误', '订单信息不完整');
      return;
    }

    // 准备传递给支付页面的数据
    final paymentData = {
      'orderNo': orderDetail.orderNo,
      'orderItems': orderDetail.orderItems.map((item) => {
        'id': item.id,
        'productId': item.productId,
        'skuId': item.skuId,
        'productName': item.productName,
        'productPic': item.productPic,
        'productSpecs': item.productSpecs,
        'quantity': item.quantity,
        'unitPrice': item.unitPrice,
        'totalPrice': item.totalPrice,
      }).toList(),
      'payment': orderDetail.payment != null ? {
        'id': orderDetail.payment!.id,
        'paymentId': orderDetail.payment!.paymentId,
        'amount': orderDetail.payment!.amount,
        'payType': orderDetail.payment!.payType,
        'paymentMethod': orderDetail.payment!.paymentMethod,
        'status': orderDetail.payment!.status,
        'statusText': orderDetail.payment!.statusText,
        'transactionId': orderDetail.payment!.transactionId,
        'paymentUrl': orderDetail.payment!.paymentUrl,
        'qrCode': orderDetail.payment!.qrCode,
        'payTime': orderDetail.payment!.payTime,
        'expireTime': orderDetail.payment!.expireTime,
        'createdAt': orderDetail.payment!.createdAt,
        'updatedAt': orderDetail.payment!.updatedAt,
        'thirdPartyOrderNo': orderDetail.payment!.thirdPartyOrderNo,
      } : null,
    };

    // 跳转到支付页面
    Get.toNamed(AppRoutes.tkOrderToPay, arguments: paymentData);
  }
}
