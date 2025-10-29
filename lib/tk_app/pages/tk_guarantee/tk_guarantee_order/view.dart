import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toklink/routes/app_pages.dart';
import 'package:openim_common/openim_common.dart';

import 'logic.dart';
import 'model/order_list_models.dart';

class TkGuaranteeOrderPage extends StatelessWidget {
  TkGuaranteeOrderPage({super.key});

  final logic = Get.find<TkGuaranteeOrderLogic>();
  final state = Get.find<TkGuaranteeOrderLogic>().state;

  final List<OrderStatusFilter> tabFilters = const [
    OrderStatusFilter.all,
    OrderStatusFilter.inProgress,
    OrderStatusFilter.pendingPay,
    OrderStatusFilter.pendingShip,
    OrderStatusFilter.completed,
    OrderStatusFilter.afterSales,
  ];

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
              Expanded(child: _buildOrderList()),
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
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.receipt_long, color: Colors.white),
                    onPressed: () => Get.toNamed(AppRoutes.tkGuaranteeRefundOrder),
                  ),
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
            children: List.generate(tabFilters.length, (index) {
              return Obx(() {
                final selected = state.selectedTabIndex.value == index;
                return Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: GestureDetector(
                    onTap: () {
                      state.selectedTabIndex.value = index;
                      logic.filterOrdersByStatus(tabFilters[index]);
                    },
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
                        tabFilters[index].text,
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
    return Obx(() {
      if (state.isLoading.value && state.orderRecords.isEmpty) {
        return const Center(child: CircularProgressIndicator());
      }

      // 直接在Obx中访问可观察变量
      final filter = state.currentFilter.value;
      final allOrders = state.orderRecords;
      
      List<OrderRecord> data;
      if (filter == OrderStatusFilter.all) {
        data = allOrders;
      } else {
        final statusValues = filter.statusValues;
        if (statusValues == null || statusValues.isEmpty) {
          data = allOrders;
        } else {
          data = allOrders.where((order) => statusValues.contains(order.orderStatus)).toList();
        }
      }

      if (data.isEmpty) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('暂无订单', style: TextStyle(fontSize: 14.sp, color: Colors.black54)),
              SizedBox(height: 16.h),
              ElevatedButton(
                onPressed: () => logic.refreshOrderList(),
                child: const Text('刷新'),
              ),
            ],
          ),
        );
      }

      return RefreshIndicator(
        onRefresh: () => logic.refreshOrderList(),
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          itemCount: data.length + (state.hasMore.value ? 1 : 0),
          itemBuilder: (context, index) {
            if (index == data.length) {
              // 加载更多指示器
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Center(
                  child: state.isLoading.value
                      ? const CircularProgressIndicator()
                      : ElevatedButton(
                          onPressed: () => logic.loadMoreOrders(),
                          child: const Text('加载更多'),
                        ),
                ),
              );
            }
            return _OrderCard(order: data[index]);
          },
        ),
      );
    });
  }
}

class _OrderCard extends StatelessWidget {
  final OrderRecord order;
  const _OrderCard({required this.order});

  Color get statusColor {
    final status = OrderStatus.fromValue(order.orderStatus);
    switch (status) {
      case OrderStatus.pendingPayment:
        return const Color(0xFFFFE8D1);
      case OrderStatus.pendingShipment:
        return const Color(0xFFFFF5CC);
      case OrderStatus.shipped:
        return const Color(0xFFCFF7E9);
      case OrderStatus.completed:
        return const Color(0xFFE5F2FF);
      case OrderStatus.refunded:
        return const Color(0xFFFFE4E1); // 售后状态颜色
      case OrderStatus.cancelled:
        return const Color(0xFFF2F2F2);
    }
  }

  Widget get statusImage {   
    final status = OrderStatus.fromValue(order.orderStatus);
    switch (status) {
      case OrderStatus.pendingPayment:
        return ImageRes.tkGuarantee4.toImage;
      case OrderStatus.pendingShipment:
        return ImageRes.tkGuarantee5.toImage;
      case OrderStatus.shipped:
        return ImageRes.tkGuarantee3.toImage;
      case OrderStatus.completed:
        return ImageRes.tkGuarantee6.toImage;
      case OrderStatus.refunded:
        // 如果需要售后状态的特殊图片，可以在这里添加
        // 暂时使用和退款相同的处理
        return const SizedBox.shrink();
      case OrderStatus.cancelled:
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
                        '订单号：${order.orderNo}',
                        style: TextStyle(fontSize: 13.sp, color: const Color(0xFF333333)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Image.network(
                        order.productPic,
                        width: 60.w,
                        height: 60.w,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 60.w,
                            height: 60.w,
                            color: Colors.grey[200],
                            child: const Icon(Icons.image, color: Colors.grey),
                          );
                        },
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            order.productName,
                            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: const Color(0xFF333333)),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 4.h),
                          Text('数量：${order.productCount}', style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
                          if (order.buyerName.isNotEmpty) ...[
                            SizedBox(height: 4.h),
                            Text('买家：${order.buyerName}', style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
                          ],
                          if (order.sellerName.isNotEmpty) ...[
                            SizedBox(height: 4.h),
                            Text('卖家：${order.sellerName}', style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('实付金额', style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
                        Text('¥ ${order.totalAmount.toStringAsFixed(2)}',
                             style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: const Color(0xFFEB2F2F))),
                      ],
                    ),
                    if (order.totalAmount != order.payAmount)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('总金额', style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
                          Text('¥ ${order.totalAmount.toStringAsFixed(2)}', 
                               style: TextStyle(fontSize: 14.sp, color: Colors.black54, decoration: TextDecoration.lineThrough)),
                        ],
                      ),
                  ],
                ),
                SizedBox(height: 8.h),
                Text('创建时间：${order.createdAt}', style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
                SizedBox(height: 12.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.tkGuaranteeOrderDetail, arguments: {'orderId': order.orderId});
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
}
