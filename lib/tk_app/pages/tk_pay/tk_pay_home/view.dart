import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openim_common/openim_common.dart';

import 'logic.dart';

class TkPayHomePage extends StatelessWidget {
  TkPayHomePage({Key? key}) : super(key: key);

  final logic = Get.find<TkPayHomeLogic>();
  final state = Get.find<TkPayHomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[200],
      appBar: AppBar(
        title: Text(
          '支付',
          style: TextStyle(
            fontSize: 18.sp,
            color: const Color(0xFF333333),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
      ),
      body: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context , child) {
          return Container(
            color: Colors.grey[200],
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildTopCard(),
                    SizedBox(height: 20.h),
                    _buildFinancialServices(),
                    SizedBox(height: 20.h),
                    _buildDailyServices(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /// 构建顶部紫色卡片
  Widget _buildTopCard() {
    return Card(
      margin: EdgeInsets.zero,
      color: const Color(0xFF911EDA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 8.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildTopCardItem(ImageRes.tkPayHome1.toImage, '收付款'),
            Obx(() => _buildTopCardItem(ImageRes.tkPayHome2.toImage, '钱包', subText: '¥${state.availableAmount.value.toStringAsFixed(2)}', onTap: () {
              logic.navigateToWalletPage();
            })),
          ],
        ),
      ),
    );
  }

  /// 构建顶部卡片项目
  /// @param onTap 点击回调函数（可选）
  Widget _buildTopCardItem(Widget icon, String text, {String? subText, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 29,
            width: 32,
            child: icon,
          ),
          SizedBox(height: 8.h),
          Text(text, style: TextStyle(color: Colors.white, fontSize: 16.sp)),
          if (subText != null) ...[
            SizedBox(height: 4.h),
            Text(subText, style: TextStyle(color: Colors.white70, fontSize: 12.sp)),
          ]
        ],
      ),
    );
  }

  /// 构建金融服务卡片
  Widget _buildFinancialServices() {
    return Card(
      margin: EdgeInsets.zero,
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Financial Services', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400,color: const Color(0xFF999999))),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildServiceItem(ImageRes.tkPayHome3.toImage, '财富', Colors.green),
                SizedBox(width: 40.w),
                _buildServiceItem(ImageRes.tkPayHome4.toImage, '贷款', Colors.orange),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// 构建日常服务卡片
  Widget _buildDailyServices() {
    return SizedBox(
      height: 138.h,
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Daily Services', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400,color: const Color(0xFF999999))),
              SizedBox(height: 16.h),
              // Add daily services items here
            ],
          ),
        ),
      ),
    );
  }

  /// 构建服务项目
  Widget _buildServiceItem(Widget icon, String text, Color color) {
    return Column(
      children: [
        SizedBox(
          height: 29,
          width: 32,
          child: icon,
        ),
        SizedBox(height: 8.h),
        Text(text, style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w300,color: Colors.black)),
      ],
    );
  }
}
