import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'logic.dart';
import 'state.dart';

class TkGuaranteeKeysPage extends StatelessWidget {
  TkGuaranteeKeysPage({Key? key}) : super(key: key);

  final logic = Get.find<TkGuaranteeKeysLogic>();
  final state = Get.find<TkGuaranteeKeysLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return SafeArea(
            child: Column(
              children: [
                _buildHeader(context),
                Expanded(
                  child: _buildContent(context),
                ),
                _buildFooter(context),
              ],
            ),
          );
        },
      ),
    );
  }

  /// 构建顶部导航栏
  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        top: 8.h,
        bottom: 16.h,
      ),
      child: Row(
        children: [
          // 返回按钮
          IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Get.back(),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
          SizedBox(width: 8.w),
          // 标题
          Expanded(
            child: Text(
              '通行密钥',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(width: 8.w),
          // 量化交易按钮（右上角）
          IconButton(
            icon: Container(
              width: 24.w,
              height: 24.w,
              decoration: const BoxDecoration(
                color: Color(0xFF666666),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.trending_up,
                size: 16.sp,
                color: Colors.white,
              ),
            ),
            onPressed: () => logic.navigateToProfit(),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
        ],
      ),
    );
  }

  /// 构建内容区域
  Widget _buildContent(BuildContext context) {
    return Obx(() {
      if (state.isLoading.value && state.passkeyList.isEmpty) {
        return const Center(child: CircularProgressIndicator());
      }

      if (state.passkeyList.isEmpty) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '暂无通行密钥',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 16.h),
              ElevatedButton(
                onPressed: () => logic.refreshPasskeys(),
                child: const Text('刷新'),
              ),
            ],
          ),
        );
      }

      return RefreshIndicator(
        onRefresh: () => logic.refreshPasskeys(),
        child: Column(
          children: [
            // 通行密钥列表
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 8.h,
                ),
                itemCount: state.passkeyList.length,
                itemBuilder: (context, index) {
                  return _PasskeyCard(
                    passkey: state.passkeyList[index],
                    onTap: () => logic.viewPasskeyDetail(
                      state.passkeyList[index].id,
                    ),
                  );
                },
              ),
            ),
            // 分页指示器
            _buildPaginationIndicator(),
            SizedBox(height: 16.h),
          ],
        ),
      );
    });
  }

  /// 构建分页指示器
  Widget _buildPaginationIndicator() {
    return Obx(() {
      if (state.totalPages.value <= 1) {
        return const SizedBox.shrink();
      }

      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          state.totalPages.value,
          (index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            width: 8.w,
            height: 8.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: state.currentPage.value == index
                  ? const Color(0xFF4CAF50)
                  : const Color(0xFFE0E0E0),
            ),
          ),
        ),
      );
    });
  }

  /// 构建底部按钮
  Widget _buildFooter(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 16.h,
        left: 20.w,
        right: 20.w,
        bottom: MediaQuery.of(context).padding.bottom + 16.h,
      ),
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.black.withOpacity(0.05),
      //       blurRadius: 10,
      //       offset: const Offset(0, -2),
      //     ),
      //   ],
      // ),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => logic.createPasskey(),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFF5F5F5),
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            padding: EdgeInsets.symmetric(vertical: 16.h),
            elevation: 0,
          ),
          child: Text(
            '创建通行密钥',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

/// 通行密钥卡片组件
class _PasskeyCard extends StatelessWidget {
  final PasskeyItem passkey;
  final VoidCallback onTap;

  const _PasskeyCard({
    required this.passkey,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: const Color(0xFFE0E0E0),
          width: 0,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12.r),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 第一行：图标和名称
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 左侧图标
                        Container(
                          width: 14.38.w,
                          height: 10.36.w,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Icon(
                            Icons.vpn_key,
                            size: 24.sp,
                            color: const Color(0xFF666666),
                          ),
                        ),
                        SizedBox(width: 12.w),
                        // 名称
                        Expanded(
                          child: Text(
                            passkey.name,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    // 交易所名称和箭头在同一行，左对齐
                    Row(
                      children: [
                        Text(
                          '交易所名称 ${passkey.exchangeName}',
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: const Color(0xFF999999),
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.chevron_right,
                          size: 20.sp,
                          color: const Color(0xFF666666),
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h),
                    // 使用时间单独一行，左对齐
                    Text(
                      '上次使用时间 ${passkey.lastUsedTime}',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: const Color(0xFF999999),
                      ),
                    ),
                  ],
                ),
              ),
              // 右上角状态指示器
              Positioned(
                top: 12.w,
                right: 20.w,
                child: Container(
                  width: 8.w,
                  height: 8.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: passkey.isActive
                        ? const Color(0xFF4CAF50)
                        : const Color(0xFFF44336),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 通行密钥详情底部弹窗
class PasskeyDetailBottomSheet extends StatelessWidget {
  final PasskeyItem passkey;

  const PasskeyDetailBottomSheet({
    Key? key,
    required this.passkey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<TkGuaranteeKeysLogic>();
    
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            // 标题
            Padding(
              padding: EdgeInsets.all(20.w),
              child: Text(
                passkey.name,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            // 内容区域
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                children: [
                  _buildInfoRow('交易所名称', passkey.exchangeName),
                  SizedBox(height: 12.h),
                  _buildInfoRow('APIKEY', passkey.apikey),
                  SizedBox(height: 12.h),
                  _buildInfoRow('SECRETKEY', passkey.secretKey),
                  SizedBox(height: 12.h),
                  _buildInfoRow('PH', passkey.ph),
                ],
              ),
            ),
            SizedBox(height: 24.h),
            // 底部按钮
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  // 启用按钮
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Get.back(result: {'id': passkey.id, 'enable': true});
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFF4CAF50), width: 1),
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF4CAF50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                      ),
                      child: Text(
                        '启用',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  // 禁用按钮
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.back(result: {'id': passkey.id, 'enable': false});
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE0E0E0),
                        foregroundColor: const Color(0xFF666666),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        elevation: 0,
                      ),
                      child: Text(
                        '禁用',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).padding.bottom + 20.h),
            ],
          ),
        ),
      ),
    );
  }

  /// 构建信息行
  Widget _buildInfoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 标签
        SizedBox(
          width: 100.w,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(width: 12.w),
        // 值
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
