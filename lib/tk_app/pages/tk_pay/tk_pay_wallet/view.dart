import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'logic.dart';

class TkPayWalletPage extends StatelessWidget {
  TkPayWalletPage({Key? key}) : super(key: key);

  final logic = Get.find<TkPayWalletLogic>();
  final state = Get.find<TkPayWalletLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: Text(
          '钱包',
          style: TextStyle(fontSize: 18.sp, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              logic.toBill();
            },
            child: Text(
              '账单',
              style: TextStyle(fontSize: 16.sp, color: Colors.black),
            ),
          ),
        ],
      ),
      body: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return Column(
            children: [
              // Placeholder for list items
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10.h),
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            _buildListItem(
                              icon: Icons.money, // 替换为实际图标
                              iconColor: Colors.orange, // 替换为实际颜色
                              title: '零钱',
                              amount: '¥0.0',
                            ),
                            _buildDivider(),
                            _buildListItem(
                              icon: Icons.account_balance_wallet, // 替换为实际图标
                              iconColor: Colors.orange, // 替换为实际颜色
                              title: '零钱通',
                            ),
                            _buildDivider(),
                            _buildListItem(
                              icon: Icons.credit_card, // 替换为实际图标
                              iconColor: Colors.blue, // 替换为实际颜色
                              title: '银行卡',
                            ),
                            _buildDivider(),
                            _buildListItem(
                              icon: Icons.family_restroom, // 替换为实际图标
                              iconColor: Colors.orange, // 替换为实际颜色
                              title: '亲属卡',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        color: Colors.white,
                        child: _buildListItem(
                          icon: Icons.shopping_cart, // 替换为实际图标
                          iconColor: Colors.purple, // 替换为实际颜色
                          title: 'USDT',
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        color: Colors.white,
                        child: _buildListItem(
                          icon: Icons.headset_mic, // 替换为实际图标
                          iconColor: Colors.green, // 替换为实际颜色
                          title: '客服中心',
                        ),
                      ),
                      SizedBox(height: 20.h), // 底部留白
                    ],
                  ),
                ),
              ),
              _buildBottomLinks(),
            ],
          );
        },
      ),
    );
  }

  /// 构建列表项
  /// @param icon 列表项的图标
  /// @param iconColor 图标的颜色
  /// @param title 列表项的标题
  /// @param amount 列表项的金额（可选）
  Widget _buildListItem({
    required IconData icon,
    required Color iconColor,
    required String title,
    String? amount,
  }) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 24.sp),
          SizedBox(width: 12.w),
          Text(
            title,
            style: TextStyle(fontSize: 16.sp, color: Colors.black),
          ),
          const Spacer(),
          if (amount != null)
            Text(
              amount,
              style: TextStyle(fontSize: 16.sp, color: Colors.black),
            ),
          SizedBox(width: 8.w),
          Icon(Icons.arrow_forward_ios, size: 16.sp, color: Colors.grey),
        ],
      ),
    );
  }

  /// 构建分隔线
  Widget _buildDivider() {
    return Container(
      height: 1.h,
      color: Colors.grey[200],
      margin: EdgeInsets.only(left: 52.w), // 与图标对齐
    );
  }

  /// 构建底部链接
  Widget _buildBottomLinks() {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              // TODO: Handle '身份信息' action
            },
            child: Text(
              '身份信息',
              style: TextStyle(fontSize: 14.sp, color: Colors.purple),
            ),
          ),
          Text(
            ' | ',
            style: TextStyle(fontSize: 14.sp, color: Colors.grey),
          ),
          TextButton(
            onPressed: () {
              logic.toPaySet();
            },
            child: Text(
              '支付设置',
              style: TextStyle(fontSize: 14.sp, color: Colors.purple),
            ),
          ),
        ],
      ),
    );
  }
}
