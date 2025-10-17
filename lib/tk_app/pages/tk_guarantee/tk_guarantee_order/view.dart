import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toklink/routes/app_pages.dart';
import 'package:openim_common/openim_common.dart';

import 'logic.dart';
import 'state.dart';

class TkGuaranteeOrderPage extends StatelessWidget {
  TkGuaranteeOrderPage({Key? key}) : super(key: key);

  final logic = Get.find<TkGuaranteeOrderLogic>();
  final state = Get.find<TkGuaranteeOrderLogic>().state;

  final List<String> tabs = const ['全部', '进行中', '待付款', '待发货', '已完成'];

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
              _buildTabs(),
              Expanded(child: Obx(() => _buildOrderList())),
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
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top , left: 16.w, right: 0.w, bottom: 16.h),
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

  Widget _buildTabs() {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      padding: EdgeInsets.only(left: 20.w,top: 12.h,),
      color: Colors.white,
      child: LayoutBuilder(builder: (context, constraints) {
        final isNarrow = constraints.maxWidth < 360;
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(tabs.length, (index) {
              return Obx(() {
                final selected = state.selectedTabIndex.value == index;
                return Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: GestureDetector(
                    onTap: () => state.selectedTabIndex.value = index,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: EdgeInsets.symmetric(horizontal: isNarrow ? 12.w : 16.w, vertical: 8.h),
                      decoration: BoxDecoration(
                        color: selected ? const Color(0xFF9E13F7) : const Color(0xFFFFFFFF),
                        // 为了避免选中/未选中尺寸变化，统一设置边框宽度，选中时用透明色
                        border: Border.all(color: selected ? Colors.transparent : const Color(0xFFF6F6F6), width: 1),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Text(
                        tabs[index],
                        style: TextStyle(
                          fontSize: (isNarrow ? 12.sp : 13.sp),
                          fontWeight: FontWeight.w500,
                          color: selected ? Colors.white : const Color(0xFF999999),
                        ),
                      ),
                    ),
                  ),
                );
              });
            }),
          ),
        );
      }),
    );
  }

  Widget _buildOrderList() {
    final idx = state.selectedTabIndex.value;
    final tabStatus = [
      GuaranteeStatus.all,
      GuaranteeStatus.inProgress,
      GuaranteeStatus.pendingPay,
      GuaranteeStatus.pendingShip,
      GuaranteeStatus.completed,
    ][idx];

    final data = tabStatus == GuaranteeStatus.all
        ? state.orders
        : state.orders.where((e) => e.status == tabStatus).toList();

    if (data.isEmpty) {
      return Center(
        child: Text('暂无订单', style: TextStyle(fontSize: 14.sp, color: Colors.black54)),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return _OrderCard(order: data[index]);
      },
    );
  }
}

class _OrderCard extends StatelessWidget {
  final GuaranteeOrder order;
  const _OrderCard({required this.order});

  Color get statusColor {
    switch (order.status) {
      case GuaranteeStatus.inProgress:
        return const Color(0xFFCFF7E9);
      case GuaranteeStatus.pendingPay:
        return const Color(0xFFFFE8D1);
      case GuaranteeStatus.pendingShip:
        return const Color(0xFFFFF5CC);
      case GuaranteeStatus.completed:
        return const Color(0xFFE5F2FF);
      case GuaranteeStatus.all:
        return const Color(0xFFF2F2F2);
    }
  }

  String get statusText {
    switch (order.status) {
      case GuaranteeStatus.inProgress:
        return '进行中';
      case GuaranteeStatus.pendingPay:
        return '待付款';
      case GuaranteeStatus.pendingShip:
        return '待发货';
      case GuaranteeStatus.completed:
        return '已完成';
      case GuaranteeStatus.all:
        return '全部';
    }
  }

  Widget get statusImage {   
    switch (order.status) {
      case GuaranteeStatus.inProgress:
        return ImageRes.tkGuarantee3.toImage;
      case GuaranteeStatus.pendingPay:
        return ImageRes.tkGuarantee4.toImage;
      case GuaranteeStatus.pendingShip:
        return ImageRes.tkGuarantee5.toImage;
      case GuaranteeStatus.completed:
        return ImageRes.tkGuarantee6.toImage;
      case GuaranteeStatus.all:
        return const SizedBox.shrink();
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
        // boxShadow: [
        //   BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 8.r, offset: const Offset(0, 4)),
        // ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '订单ID：${order.id}',
                        style: TextStyle(fontSize: 13.sp, color: const Color(0xFF333333)),
                      ),
                    ),
                    // IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz, color: Colors.black54)),
                  ],
                ),
                SizedBox(height: 6.h),
                Text('买家：${order.buyer}', style: TextStyle(fontSize: 13.sp, color: Colors.black87)),
                SizedBox(height: 4.h),
                Text('卖家：${order.seller}', style: TextStyle(fontSize: 13.sp, color: Colors.black87)),
                SizedBox(height: 12.h),
                Text('¥ ${order.amount.toStringAsFixed(2)}', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: const Color(0xFFEB2F2F))),
                SizedBox(height: 8.h),
                Text(order.description, style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
                SizedBox(height: 8.h),
                Text('创建日期：${_formatDate(order.createdAt)}', style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
                SizedBox(height: 12.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.tkGuaranteeOrderDetail, arguments: {'orderId': order.id});
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9E13F7),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                    ),
                    child: Text('查看详情', style: TextStyle(fontSize: 14.sp, color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0.w,
            top: 40.h,
            child: SizedBox(width: 108.w,height: 34.h, child: statusImage),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime dt) {
    return '${dt.year}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')}';
  }
}
