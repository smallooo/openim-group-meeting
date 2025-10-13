import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'logic.dart';

class TkPayBillPagePage extends StatelessWidget {
  TkPayBillPagePage({Key? key}) : super(key: key);

  final logic = Get.find<TkPayBillPageLogic>();
  final state = Get.find<TkPayBillPageLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: Text(
          '账单',
          style: TextStyle(fontSize: 18.sp, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz, color: Colors.black),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (context, child) {
            return Container(
              color: Colors.white,
              child: Column(
                children: [
                  _buildFilterBar(),
                  _buildMonthlySummary(),
                  Expanded(
                    child: GetBuilder<TkPayBillPageLogic>(
                      builder: (logic) {
                        return _buildTransactionList();
                      },
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  /// 构建筛选栏
  Widget _buildFilterBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Row(
              children: [
                Text('全部账单', style: TextStyle(fontSize: 14.sp)),
                Icon(Icons.arrow_drop_down, size: 20.sp),
              ],
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, size: 20.sp, color: Colors.grey[600]),
                  SizedBox(width: 8.w),
                  Text('查找交易', style: TextStyle(fontSize: 14.sp, color: Colors.grey[600])),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              '收支统计',
              style: TextStyle(fontSize: 14.sp, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  /// 构建月度总览
  Widget _buildMonthlySummary() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Row(
        children: [
          Text('2025年10月', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
          Icon(Icons.arrow_drop_down, size: 20.sp),
          const Spacer(),
          Text('支出 ¥4305.00', style: TextStyle(fontSize: 14.sp)),
          SizedBox(width: 10.w),
          Text('收入 ¥4305.00', style: TextStyle(fontSize: 14.sp)),
        ],
      ),
    );
  }

  /// 构建交易列表
  Widget _buildTransactionList() {
    return ListView.builder(
      itemCount: state.transactions.length,
      itemBuilder: (context, index) {
        final tx = state.transactions[index];
        return _buildTransactionItem(tx);
      },
    );
  }

  /// 构建单个交易项
  Widget _buildTransactionItem(Map<String, dynamic> tx) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundImage: AssetImage(tx['icon']!),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tx['title']!, style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500)),
              SizedBox(height: 4.h),
              Text(tx['date']!, style: TextStyle(fontSize: 12.sp, color: Colors.grey)),
            ],
          ),
          const Spacer(),
          Text(
            tx['amount']!,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
