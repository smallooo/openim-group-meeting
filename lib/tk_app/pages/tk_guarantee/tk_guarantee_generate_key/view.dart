import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'logic.dart';
import 'state.dart';

class TkGuaranteeGenerateKeyPage extends StatelessWidget {
  TkGuaranteeGenerateKeyPage({Key? key}) : super(key: key);

  final logic = Get.find<TkGuaranteeGenerateKeyLogic>();
  final state = Get.find<TkGuaranteeGenerateKeyLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          // 点击空白处收起键盘
          FocusScope.of(context).unfocus();
        },
        behavior: HitTestBehavior.translucent,
        child: ScreenUtilInit(
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
              '生成密钥',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(width: 48.w), // 平衡左侧返回按钮
        ],
      ),
    );
  }

  /// 构建内容区域
  Widget _buildContent(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8.h),
          // 交易所名称
          _buildInputField(
            label: '交易所名称',
            value: state.exchangeName,
            onChanged: (value) => state.exchangeName.value = value,
            enabled: false, // 预填充，不可编辑
          ),
          SizedBox(height: 24.h),
          // APIKEY
          _buildInputField(
            label: 'APIKEY',
            placeholder: '请输入',
            value: state.apikey,
            onChanged: (value) => state.apikey.value = value,
            obscureText: false,
          ),
          SizedBox(height: 24.h),
          // SECRET-KEY
          _buildInputField(
            label: 'SECRET-KEY',
            placeholder: '请输入',
            value: state.secretKey,
            onChanged: (value) => state.secretKey.value = value,
            obscureText: true,
          ),
          SizedBox(height: 24.h),
          // PH (仅OKX交易所需要)
          Obx(() {
            if (state.exchangeName.value == 'OKX') {
              return _buildInputField(
                label: 'PH(仅OKX交易所需要)',
                placeholder: '请输入',
                value: state.ph,
                onChanged: (value) => state.ph.value = value,
                obscureText: false,
              );
            }
            return const SizedBox.shrink();
          }),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }

  /// 构建输入框
  Widget _buildInputField({
    required String label,
    String? placeholder,
    required RxString value,
    required Function(String) onChanged,
    bool enabled = true,
    bool obscureText = false,
  }) {
    return _InputFieldWidget(
      label: label,
      placeholder: placeholder,
      value: value,
      onChanged: onChanged,
      enabled: enabled,
      obscureText: obscureText,
    );
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
      child: Obx(() {
        return SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: state.isGenerating.value ? null : () => logic.generateKey(),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFF5F5F5),
              foregroundColor: Colors.black,
              disabledBackgroundColor: const Color(0xFFE0E0E0),
              disabledForegroundColor: const Color(0xFF999999),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              padding: EdgeInsets.symmetric(vertical: 16.h),
              elevation: 0,
            ),
            child: state.isGenerating.value
                ? SizedBox(
                    height: 20.h,
                    width: 20.w,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.black.withOpacity(0.5),
                      ),
                    ),
                  )
                : Text(
                    '立即生成密钥',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
          ),
        );
      }),
    );
  }
}

/// 输入框组件（使用 StatefulWidget 管理 controller）
class _InputFieldWidget extends StatefulWidget {
  final String label;
  final String? placeholder;
  final RxString value;
  final Function(String) onChanged;
  final bool enabled;
  final bool obscureText;

  const _InputFieldWidget({
    required this.label,
    this.placeholder,
    required this.value,
    required this.onChanged,
    this.enabled = true,
    this.obscureText = false,
  });

  @override
  State<_InputFieldWidget> createState() => _InputFieldWidgetState();
}

class _InputFieldWidgetState extends State<_InputFieldWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.value.value);
    // 监听外部值变化
    widget.value.listen((newValue) {
      if (_controller.text != newValue) {
        _controller.text = newValue;
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 标签
        Text(
          widget.label,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8.h),
        // 输入框
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: TextField(
            enabled: widget.enabled,
            obscureText: widget.obscureText,
            controller: _controller,
            onChanged: widget.onChanged,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              hintText: widget.placeholder,
              hintStyle: TextStyle(
                fontSize: 14.sp,
                color: const Color(0xFF999999),
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
