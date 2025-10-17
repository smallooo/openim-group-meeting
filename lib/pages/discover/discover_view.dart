import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';

import 'discover_logic.dart';

class DiscoverPage extends StatelessWidget {
  final logic = Get.find<DiscoverLogic>();

  DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '发现',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: Styles.c_0C1C33,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Styles.c_F8F9FA,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        // 频道入口 - 单独一块
        _buildMenuItem(
          icon: ImageRes.tkFind3,
          title: '策略',
          onTap: () {
            logic.goToStrategyPage();
          },
          // icon: ImageRes.tkFind1,
          // title: '频道入口',
          // onTap: () {
          //   // TODO: 实现频道入口逻辑
          //   print('点击频道入口');
          // },
        ),
        _buildMenuItem(
          icon: ImageRes.tagIcon,
          title: '量化',
          onTap: () {
            logic.goToDan();

          },
          // icon: ImageRes.tkFind1,
          // title: '频道入口',
          // onTap: () {
          //   // TODO: 实现频道入口逻辑
          //   print('点击频道入口');
          // },
        ),
        // 担保入口和策略入口 - 连在一起的块
        Container(
          color: Colors.white,
          margin: EdgeInsets.only(bottom: 8.h),
          child: Column(
            children: [
              // _buildMenuItemWithoutMargin(
              //   icon: ImageRes.tkFind2,
              //   title: '跟单',
              //   onTap: () {
              //     // TODO: 实现担保入口逻辑
              //     print('点击担保入口');
              //   },
              // ),
              // 分割线
              Container(
                height: 1.h,
                margin: EdgeInsets.only(left: 52.w), // 左边空出图标+间距的位置
                color: Styles.c_E8EAEF,
              ),
              _buildMenuItemWithoutMargin(
                icon: ImageRes.tkFind1,
                title: '频道',
                onTap: () {
                  logic.goToChannelPage();
                },
              ),
              // 分割线
              Container(
                height: 1.h,
                margin: EdgeInsets.only(left: 52.w), // 左边空出图标+间距的位置
                color: Styles.c_E8EAEF,
              ),
              _buildMenuItemWithoutMargin(
                icon: ImageRes.tkFind2,
                title: '担保',
                onTap: () {
                  logic.goToGuaranteePage();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMenuItem({
    required String icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 8.h),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Row(
            children: [
              // 图标
              icon.toImage
                ..width = 24.w
                ..height = 24.h,
              12.horizontalSpace,
              // 标题
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Styles.c_0C1C33,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              // 右箭头
              Icon(
                Icons.arrow_forward_ios,
                size: 16.w,
                color: Styles.c_8E9AB0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItemWithoutMargin({
    required String icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Row(
          children: [
            // 图标
            icon.toImage
              ..width = 24.w
              ..height = 24.h,
            12.horizontalSpace,
            // 标题
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Styles.c_0C1C33,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            // 右箭头
            Icon(
              Icons.arrow_forward_ios,
              size: 16.w,
              color: Styles.c_8E9AB0,
            ),
          ],
        ),
      ),
    );
  }
}
