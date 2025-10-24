import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class TkGuaranteeCreateOrderPage extends StatefulWidget {
  const TkGuaranteeCreateOrderPage({super.key});

  @override
  State<TkGuaranteeCreateOrderPage> createState() =>
      _TkGuaranteeCreateOrderPageState();
}

class _TkGuaranteeCreateOrderPageState extends State<TkGuaranteeCreateOrderPage>
    with SingleTickerProviderStateMixin {
  final logic = Get.find<TkGuaranteeCreateOrderLogic>();
  final state = Get.find<TkGuaranteeCreateOrderLogic>().state;

  late TabController _tabController;
  
  // 表单控制器
  final _productNameController = TextEditingController();
  final _productDescriptionController = TextEditingController();
  final _categoryController = TextEditingController();
  final _priceController = TextEditingController();
  
  // 表单验证key - 为每个Tab创建独立的key
  final _guaranteeFormKey = GlobalKey<FormState>();
  final _productFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _initializeFormData();
  }

  /// 初始化表单数据
  void _initializeFormData() {
    final orderData = logic.getOrderData();
    if (orderData != null) {
      _categoryController.text = orderData['category']?.toString() ?? '';
      _productNameController.text = orderData['productName']?.toString() ?? '';
      _productDescriptionController.text = orderData['productDescription']?.toString() ?? '';
      _priceController.text = orderData['totalPrice']?.toString() ?? '';
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    _productNameController.dispose();
    _productDescriptionController.dispose();
    _categoryController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('创建订单',style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xFF333333),fontSize: 18),),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(49.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  labelPadding: const EdgeInsets.only(right: 24.0),
                  indicator: const BoxDecoration(),
                  labelStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  unselectedLabelStyle: const TextStyle(fontSize: 16),
                  labelColor: const Color(0xFF333333),
                  unselectedLabelColor: const Color(0xFF999999),
                  splashFactory: NoSplash.splashFactory,
                  tabs: const [
                    Tab(child: Align(alignment: Alignment.centerLeft, child: Text('担保订单'))),
                    Tab(child: Align(alignment: Alignment.centerLeft, child: Text('商品订单'))),
                  ],
                ),
              ),
              const Divider(height: 1, thickness: 1, color: Color(0xFFEEEEEE)),
            ],
          ),
        ),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusScope.of(context).unfocus(),
        child: TabBarView(
          controller: _tabController,
          children: [
            _buildOrderForm(isGuaranteeOrder: true),
            _buildOrderForm(isGuaranteeOrder: false),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderForm({required bool isGuaranteeOrder}) {
    return Form(
      key: isGuaranteeOrder ? _guaranteeFormKey : _productFormKey,
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
        const Text('商品详情', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Color(0xFF333333))),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.red.withValues(alpha: 0.1),
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Row(
            children: [
              Icon(Icons.info_outline, color: Colors.red),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  '您的商品仅对发送方和接收方可见, 确保隐私安全。',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        const Text('商品名称', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFF333333))),
        const SizedBox(height: 8),
        TextFormField(
          controller: _productNameController,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF333333), // 输入文字颜色
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return '请输入商品名称';
            }
            return null;
          },
          decoration: InputDecoration(
            hintStyle: const TextStyle(
              fontSize: 14,
              color: Color(0xFF999999),
            ),
            hintText: '输入虚拟商品名称',
            filled: true,
            fillColor: const Color(0xFFF9F9F9),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Text('商品描述', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFF333333)),),
        const SizedBox(height: 8),
        TextFormField(
          controller: _productDescriptionController,
          maxLines: 5,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF333333), // 输入文字颜色
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return '请输入商品描述';
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: '详细描述您的虚拟商品特点和用途',
            filled: true,
            hintStyle: const TextStyle(
              fontSize: 14,
              color: Color(0xFF999999),
            ),
            fillColor: const Color(0xFFF9F9F9),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Text('商品类别', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFF333333)),),
        const SizedBox(height: 8),
        TextFormField(
          controller: _categoryController,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF333333), // 输入文字颜色
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return '请输入商品类别';
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: '例如:游戏道具,虚拟货币,数字艺术品',
            hintStyle: const TextStyle(
              fontSize: 14,
              color: Color(0xFF999999),
            ),
            filled: true,
            fillColor: const Color(0xFFF9F9F9),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Text('价格', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFF333333)),),
        const SizedBox(height: 8),
        TextFormField(
          controller: _priceController,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return '请输入价格';
            }
            final price = double.tryParse(value.trim());
            if (price == null || price <= 0) {
              return '请输入有效的价格';
            }
            return null;
          },
          decoration: InputDecoration(
            hintStyle: const TextStyle(
              fontSize: 14,
              color: Color(0xFF999999),
            ),
            hintText: '0.00',
            prefixText: '¥ ',
            filled: true,
            fillColor: const Color(0xFFF9F9F9),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide.none,
            ),
          ),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        ),
        const SizedBox(height: 32),
        // ElevatedButton(
        //   onPressed: _handleCreateAndSend,
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: Colors.purple,
        //     minimumSize: const Size(double.infinity, 48),
        //   ),
        //   child: const Text(
        //     '创建并发送',
        //     style: TextStyle(color: Colors.white),
        //   ),
        // ),
        const SizedBox(height: 16),
        OutlinedButton(
          onPressed: _handleSaveDraft,
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(double.infinity, 48),
          ),
          child: const Text('创建并发送'),
        ),
      ],
        ),
      );
  }

  /// 验证表单数据
  bool _validateForm() {
    final currentIndex = _tabController.index;
    final formKey = currentIndex == 0 ? _guaranteeFormKey : _productFormKey;
    return formKey.currentState?.validate() ?? false;
  }

  /// 获取表单数据
  Map<String, dynamic> _getFormData() {
    return {
      'productName': _productNameController.text.trim(),
      'productDescription': _productDescriptionController.text.trim(),
      'category': _categoryController.text.trim(),
      'price': double.tryParse(_priceController.text.trim()) ?? 0.0,
    };
  }

  /// 处理保存草稿
  void _handleSaveDraft() {
    if (!_validateForm()) {
      return;
    }

    final formData = _getFormData();
    logic.saveDraft(
      productName: formData['productName'],
      productDescription: formData['productDescription'],
      category: formData['category'],
      price: formData['price'],
    );
  }

  /// 处理创建并发送
  void _handleCreateAndSend() {
    if (!_validateForm()) {
      return;
    }

    final formData = _getFormData();
    logic.createAndSend(
      productName: formData['productName'],
      productDescription: formData['productDescription'],
      category: formData['category'],
      price: formData['price'],
    );
  }



}
