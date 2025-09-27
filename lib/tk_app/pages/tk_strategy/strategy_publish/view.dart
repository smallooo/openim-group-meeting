import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class StrategyPublishPage extends GetView<StrategyPublishLogic> {
  const StrategyPublishPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 确保controller被注册
    Get.put(StrategyPublishLogic());
    
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
          '发布策略',
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
          child: Column(
            children: [
              // Tab切换
              _buildTabBar(),
              
              // 分割线
              _buildDivider(),
              
              // 内容区域
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // 标题输入框
                    _buildInputField('标题', controller.state.titleController),
                    const SizedBox(height: 20),
                    
                    // 摘要输入框
                    _buildInputField('摘要', controller.state.summaryController, maxLines: 3),
                    const SizedBox(height: 20),
                    
                    // 内容输入框
                    _buildInputField('内容', controller.state.contentController, maxLines: 5),
                    const SizedBox(height: 20),
                    
                    // 币种输入框
                    _buildInlineInputField('*币种', controller.state.coinController),
                    const SizedBox(height: 20),
                    
                    // 方向输入框
                    _buildInlineInputField('*方向', controller.state.directionController),
                    const SizedBox(height: 20),
                    
                    // 类型选择器
                    _buildTypeSelector(),
                    const SizedBox(height: 30),
                    
                    // 价格设置区域
                    _buildPriceSection(0, showTypeSelector: true),
                    const SizedBox(height: 20),
                    _buildPriceSection(1, showTypeSelector: false),
                    const SizedBox(height: 20),
                    _buildPriceSection(2, showTypeSelector: false),
                    const SizedBox(height: 20),
                    
                    // 有效期设置
                    _buildValidPeriodSection(),
                    const SizedBox(height: 40),
                    
                    // 市场类型确认提示
                    // _buildMarketTypeConfirmation(),
                    // const SizedBox(height: 20),
                    
                    // 发布按钮
                    _buildPublishButton(),
                    const SizedBox(height: 20),
                    
                    // 协议勾选
                    _buildProtocolAgreement(),
                    const SizedBox(height: 10),
                    
                    // 风险提示
                    _buildRiskWarning(),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              _buildTabItem('合约策略', 0),
              const SizedBox(width: 40),
              _buildTabItem('现货策略', 1),
            ],
          ),
          // const SizedBox(height: 8),
          // // 市场类型指示器
          // _buildMarketTypeIndicator(),
        ],
      ),
    );
  }

  Widget _buildTabItem(String title, int index) {
    return Obx(() {
      final isSelected = controller.state.selectedTabIndex.value == index;
      return GestureDetector(
        onTap: () => controller.switchTab(index),
        child: Text(
          title,
          style: TextStyle(
            fontSize: isSelected ? 18 : 16,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            color: isSelected ? Colors.black : Colors.grey,
          ),
        ),
      );
    });
  }

  Widget _buildMarketTypeIndicator() {
    return Obx(() => Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: controller.state.selectedTabIndex.value == 0 
            ? Colors.blue.withOpacity(0.1) 
            : Colors.green.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: controller.state.selectedTabIndex.value == 0 
              ? Colors.blue.withOpacity(0.3) 
              : Colors.green.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            controller.state.selectedTabIndex.value == 0 
                ? Icons.trending_up 
                : Icons.show_chart,
            size: 16,
            color: controller.state.selectedTabIndex.value == 0 
                ? Colors.blue 
                : Colors.green,
          ),
          const SizedBox(width: 6),
          Text(
            '当前市场类型: ${controller.state.currentMarketType}',
            style: TextStyle(
              fontSize: 12,
              color: controller.state.selectedTabIndex.value == 0
                  ? Colors.blue
                  : Colors.green,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ));
  }

  Widget _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 1,
      color: Colors.grey[200],
    );
  }

  Widget _buildInputField(String label, TextEditingController textController, {int maxLines = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: label.startsWith('*') ? Colors.green : Colors.black,
            fontWeight: FontWeight.w500,
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
            controller: textController,
            maxLines: maxLines,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '请输入${label.replaceAll('*', '')}',
              hintStyle: const TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInlineInputField(String label, TextEditingController textController) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: label.startsWith('*') ? Colors.green : Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '请输入${label.replaceAll('*', '')}',
                hintStyle: const TextStyle(color: Colors.grey),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTypeSelector() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        children: [
          const Text(
            '*类型',
            style: TextStyle(
              fontSize: 16,
              color: Colors.green,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          _buildTypeOptionsSelector(),
        ],
      ),
    );
  }

  Widget _buildTypeOptionsSelector() {
    return Obx(() => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF9E13F7), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildTypeOption(0, '短线'),
          _buildTypeOption(1, '中线'),
          _buildTypeOption(2, '长线'),
        ],
      ),
    ));
  }

  Widget _buildTypeOption(int index, String title) {
    final isSelected = controller.state.selectedTypeIndex.value == index;
    return GestureDetector(
      onTap: () => controller.selectType(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF9E13F7) : Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: isSelected ? Colors.white : const Color(0xFF9E13F7),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  String _getPriceHintText(int index) {
    switch (index) {
      case 0:
        return '请输入目标价格';
      case 1:
        return '请输入止盈价';
      case 2:
        return '请输入止损价';
      default:
        return '请输入限价';
    }
  }

  Widget _buildPriceSection(int index, {bool showTypeSelector = true}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 价格标题和类型选择器
          Row(
            children: [
              const Icon(Icons.help_outline, size: 16, color: Colors.grey),
              const SizedBox(width: 8),
              const Text(
                '*价格',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              if (showTypeSelector) _buildPriceTypeSelector(index),
            ],
          ),
          const SizedBox(height: 16),
          
          // 价格输入框行 - 水平布局
          Row(
            children: [
              // 第一个输入框
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0), // 增加vertical padding从12到16
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[200]!),
                  ),
                  child: TextField(
                    controller: controller.state.limitPriceControllers[index],
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: _getPriceHintText(index),
                      hintStyle: const TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
              
              // 中间的水平分割线容器
              SizedBox(
                width: 20,
                child: Center(
                  child: Container(
                    height: 1,
                    width: 12,
                    color: Colors.grey[300],
                  ),
                ),
              ),
              
              // 第二个输入框
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0), // 增加vertical padding从12到16
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[200]!),
                  ),
                  child: TextField(
                    enabled: false,
                    controller: controller.state.optionalControllers[index],
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: '选填',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPriceTypeSelector(int priceIndex) {
    return Obx(() => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF9E13F7), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildPriceTypeOption(priceIndex, 0, '限价'),
          _buildPriceTypeOption(priceIndex, 1, '市价'),
        ],
      ),
    ));
  }

  Widget _buildPriceTypeOption(int priceIndex, int typeIndex, String title) {
    final isSelected = controller.state.priceTypeIndexes[priceIndex].value == typeIndex;
    return GestureDetector(
      onTap: () => controller.selectPriceType(priceIndex, typeIndex),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF9E13F7) : Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: isSelected ? Colors.white : const Color(0xFF9E13F7),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildMarketTypeConfirmation() {
    return Obx(() => Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: controller.state.selectedTabIndex.value == 0 
            ? Colors.blue.withOpacity(0.05) 
            : Colors.green.withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: controller.state.selectedTabIndex.value == 0 
              ? Colors.blue.withOpacity(0.2) 
              : Colors.green.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.info_outline,
            size: 20,
            color: controller.state.selectedTabIndex.value == 0 
                ? Colors.blue 
                : Colors.green,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              '您即将发布${controller.state.currentMarketTypeDisplayName}，市场类型为 ${controller.state.currentMarketType}',
              style: TextStyle(
                fontSize: 14,
                color: controller.state.selectedTabIndex.value == 0
                    ? Colors.blue[700]
                    : Colors.green[700],
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Widget _buildPublishButton() {
    return Obx(() => SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: controller.state.canPublish.value && !controller.state.isPublishing.value 
            ? controller.publishStrategy 
            : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: controller.state.canPublish.value && !controller.state.isPublishing.value 
              ? const Color(0xFF9E13F7) 
              : Colors.grey[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          elevation: 0,
        ),
        child: controller.state.isPublishing.value
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                '立即发布',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: controller.state.canPublish.value && !controller.state.isPublishing.value 
                      ? Colors.white 
                      : Colors.grey[600],
                ),
              ),
      ),
    ));
  }

  Widget _buildProtocolAgreement() {
    return Obx(() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => controller.toggleProtocolAgreement(!controller.state.protocolAgreed.value),
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: controller.state.protocolAgreed.value ? Colors.purple : Colors.transparent,
              border: Border.all(
                color: controller.state.protocolAgreed.value ? Colors.purple : Colors.grey,
                width: 2,
              ),
            ),
            child: controller.state.protocolAgreed.value
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
          '(交易策略发布协议)',
          style: TextStyle(
            fontSize: 14,
            color: Colors.purple,
          ),
        ),
      ],
    ));
  }

  Widget _buildRiskWarning() {
    return const Text(
      '*请勿发表与交易策略无关内容,违规账号将面临冻结账号的风险',
      style: TextStyle(
        fontSize: 12,
        color: Colors.red,
      ),
      textAlign: TextAlign.center,
    );
  }
  
  Widget _buildValidPeriodSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '*有效期',
            style: TextStyle(
              fontSize: 16,
              color: Colors.green,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          
          // 开始时间
          Row(
            children: [
              const Text(
                '开始时间:',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: GestureDetector(
                  onTap: controller.showValidFromDatePicker,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Obx(() => Text(
                      controller.state.validFromDate.value != null
                          ? '${controller.state.validFromDate.value!.year}年${controller.state.validFromDate.value!.month}月${controller.state.validFromDate.value!.day}日'
                          : '请选择开始日期',
                      style: TextStyle(
                        fontSize: 14,
                        color: controller.state.validFromDate.value != null ? Colors.black : Colors.grey,
                      ),
                    )),
                  ),
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 12),
          
          // 结束时间
          Row(
            children: [
              const Text(
                '结束时间:',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: GestureDetector(
                  onTap: controller.showValidToDatePicker,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Obx(() => Text(
                      controller.state.validToDate.value != null
                          ? '${controller.state.validToDate.value!.year}年${controller.state.validToDate.value!.month}月${controller.state.validToDate.value!.day}日'
                          : '请选择结束日期',
                      style: TextStyle(
                        fontSize: 14,
                        color: controller.state.validToDate.value != null ? Colors.black : Colors.grey,
                      ),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
