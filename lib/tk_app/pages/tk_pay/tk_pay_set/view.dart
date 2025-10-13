import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'logic.dart';

class TkPaySetPage extends StatelessWidget {
  TkPaySetPage({Key? key}) : super(key: key);

  final logic = Get.find<TkPaySetLogic>();
  final state = Get.find<TkPaySetLogic>().state;

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
          '支付设置',
          style: TextStyle(fontSize: 18.sp, color: const Color(0xFF333333)),
        ),
        centerTitle: true,
      ),
      body: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10.h),
                _buildGroup([
                  _buildListItem('修改支付密码', onTap: logic.onModifyPasswordTap),
                  _buildListItem('忘记支付密码', onTap: logic.onForgetPasswordTap),
                ]),
                SizedBox(height: 10.h),
                _buildGroup([
                  _buildListItem('手机面容识别', trailing: '已关闭'),
                  _buildListItem('线下刷脸支付及服务', trailing: '已开启'),
                ]),
                SizedBox(height: 10.h),
                _buildGroup([
                  _buildListItem('自动续费'),
                  _buildListItem('Apple服务扣费'),
                  _buildListItem('免密支付'),
                ]),
                SizedBox(height: 10.h),
                _buildGroup([
                  _buildListItem('手机号转账设置', trailing: '已开启'),
                ]),
                SizedBox(height: 20.h),
                _buildLogoutButton(),
              ],
            ),
          );
        },
      ),
    );
  }

  /// 构建列表项组
  Widget _buildGroup(List<Widget> children) {
    return Container(
      color: Colors.white,
      child: Column(
        children: children,
      ),
    );
  }

  /// 构建列表项
  Widget _buildListItem(String title, {String? trailing, VoidCallback? onTap}) {
    return ListTile(
      title: Text(title, style: TextStyle(fontSize: 16.sp,color: const Color(0xFF333333))),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailing != null)
            Text(
              trailing,
              style: TextStyle(fontSize: 14.sp, color: const Color(0xFF999999)),
            ),
          SizedBox(width: 8.w),
          Icon(Icons.arrow_forward_ios, size: 16.sp, color: Colors.grey),
        ],
      ),
      onTap: onTap ?? () {},
    );
  }

  /// 构建注销按钮
  Widget _buildLogoutButton() {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: TextButton(
        style: ButtonStyle(
          splashFactory: NoSplash.splashFactory,
          overlayColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: () {},
        child: Text(
          '注销TokLink支付',
          style: TextStyle(fontSize: 16.sp, color: const Color(0xFF333333)),
        ),
      ),
    );
  }
}
