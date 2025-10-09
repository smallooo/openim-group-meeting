import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class StrategyMemberApplyPage extends GetView<StrategyMemberApplyLogic> {
  StrategyMemberApplyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 确保controller被注册
    Get.put(StrategyMemberApplyLogic());
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          '交易员申请',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          // 点击空白处收起键盘
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 用户头像部分
              _buildAvatarSection(),
              const SizedBox(height: 30),
              
              // 交易员昵称
              _buildNicknameSection(),
              const SizedBox(height: 20),
              
              // 交易员简介
              _buildIntroSection(),
              const SizedBox(height: 30),
              
              // 收费设置
              _buildFeeSettings(),
              const SizedBox(height: 40),
              
              // 提交申请按钮
              _buildSubmitButton(),
              const SizedBox(height: 20),
              
              // 隐私政策
              _buildPrivacyPolicy(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAvatarSection() {
    return Center(
      child: Obx(() => GestureDetector(
        onTap: controller.pickAvatar,
        child: Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
            image: controller.state.avatarUrl.value.isNotEmpty
                ? DecorationImage(
                    image: FileImage(File(controller.state.avatarUrl.value)),
                    fit: BoxFit.cover,
                  )
                : null,
          ),
          child: Stack(
            children: [
              if (controller.state.avatarUrl.value.isEmpty)
                const Center(
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.grey,
                  ),
                ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: const Icon(
                    Icons.camera_alt,
                    size: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget _buildNicknameSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '交易员昵称',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey[200]!),
          ),
          child: TextField(
            controller: controller.state.nicknameController,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: '请输入您的交易员昵称',
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildIntroSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '交易员简介',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey[200]!),
          ),
          child: TextField(
            controller: controller.state.introController,
            maxLines: 5,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: '请简单介绍您的交易策略和经验',
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFeeSettings() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '收费设置',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 20),
        
        // Tab切换
        _buildTabBar(),
        const SizedBox(height: 20),
        
        // 订阅费设置
        _buildSubscriptionFees(),
      ],
    );
  }

  Widget _buildTabBar() {
    return Obx(() => Row(
      children: [
        _buildTabItem('合约策略', 0),
        const SizedBox(width: 40),
        _buildTabItem('现货策略', 1),
      ],
    ));
  }

  Widget _buildTabItem(String title, int index) {
    final isSelected = controller.state.selectedTabIndex.value == index;
    return GestureDetector(
      onTap: () => controller.switchTab(index),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              color: isSelected ? Colors.black : Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 2,
            width: 60,
            color: isSelected ? Colors.green : Colors.transparent,
          ),
        ],
      ),
    );
  }

  Widget _buildSubscriptionFees() {
    return Obx(() {
      final isContract = controller.state.selectedTabIndex.value == 0;
      return Column(
        children: [
          _buildFeeItem(
            '订阅费/月',
            isContract ? controller.state.contractMonthlyFeeEnabled : controller.state.spotMonthlyFeeEnabled,
            isContract ? controller.state.contractMonthlyFeeController : controller.state.spotMonthlyFeeController,
            isContract ? controller.toggleContractMonthlyFee : controller.toggleSpotMonthlyFee,
          ),
          const SizedBox(height: 16),
          _buildFeeItem(
            '订阅费/季',
            isContract ? controller.state.contractQuarterlyFeeEnabled : controller.state.spotQuarterlyFeeEnabled,
            isContract ? controller.state.contractQuarterlyFeeController : controller.state.spotQuarterlyFeeController,
            isContract ? controller.toggleContractQuarterlyFee : controller.toggleSpotQuarterlyFee,
          ),
          const SizedBox(height: 16),
          _buildFeeItem(
            '订阅费/年',
            isContract ? controller.state.contractYearlyFeeEnabled : controller.state.spotYearlyFeeEnabled,
            isContract ? controller.state.contractYearlyFeeController : controller.state.spotYearlyFeeController,
            isContract ? controller.toggleContractYearlyFee : controller.toggleSpotYearlyFee,
          ),
        ],
      );
    });
  }

  Widget _buildFeeItem(String title, RxBool enabled, TextEditingController textController, Function(bool) onToggle) {
    return Obx(() => Column(
      children: [
        // 第一行：标题和开关
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            Switch(
              value: enabled.value,
              onChanged: onToggle,
              activeColor: Colors.green,
            ),
          ],
        ),
        const SizedBox(height: 12),
        // 第二行：输入框和单位
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: enabled.value ? Colors.white : Colors.grey[100],
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: TextField(
                  controller: textController,
                  enabled: enabled.value,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 16,
                    color: enabled.value ? Colors.black : Colors.grey,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Text(
              'CNY',
              style: TextStyle(
                fontSize: 16,
                color: enabled.value ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ));
  }

  Widget _buildSubmitButton() {
    return Obx(() => SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: controller.state.canSubmit.value && !controller.state.isSubmitting.value 
            ? controller.submitApplication 
            : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: controller.state.canSubmit.value && !controller.state.isSubmitting.value 
              ? const Color(0xFF9E13F7) 
              : Colors.grey[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0,
        ),
        child: controller.state.isSubmitting.value
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                '提交申请',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: controller.state.canSubmit.value && !controller.state.isSubmitting.value 
                      ? Colors.white 
                      : Colors.grey[600],
                ),
              ),
      ),
    ));
  }

  Widget _buildPrivacyPolicy() {
    return Obx(() => Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () => controller.togglePrivacyPolicy(!controller.state.privacyPolicyAgreed.value),
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: controller.state.privacyPolicyAgreed.value ? Colors.purple : Colors.transparent,
                border: Border.all(
                  color: controller.state.privacyPolicyAgreed.value ? Colors.purple : Colors.grey,
                  width: 2,
                ),
              ),
              child: controller.state.privacyPolicyAgreed.value
                  ? const Icon(
                      Icons.check,
                      size: 14,
                      color: Colors.white,
                    )
                  : null,
            ),
          ),
          const SizedBox(width: 8),
          const Text(
            '我已阅读并同意',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const Text(
            '(个人交易员隐私政策)',
            style: TextStyle(
              fontSize: 14,
              color: Colors.purple,
            ),
          ),
        ],
      ),
    ));
  }
}