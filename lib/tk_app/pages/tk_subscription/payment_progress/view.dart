import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';

import 'logic.dart';
import 'state.dart';

class PaymentProgressPage extends StatelessWidget {
  const PaymentProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 确保控制器被注册
    final logic = Get.put(PaymentProgressLogic());
    final state = logic.state;
    
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
          '',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: _buildBody(context, logic, state),
    );
  }
  
  Widget _buildBody(BuildContext context, PaymentProgressLogic logic, PaymentProgressState state) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1, // 10% 边距
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.08), // 从顶部8%开始
            
            // 支付进度图片
            _buildProgressImage(context),
            
            const SizedBox(height: 40),
            
            // 主标题
            _buildMainTitle(),
            
            const SizedBox(height: 16),
            
            // 副标题
            _buildSubtitle(),
          ],
        ),
      ),
    );
  }
  
  Widget _buildProgressImage(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: ImageRes.tkPaymentProgress.toImage
          ..width = MediaQuery.of(context).size.width * 0.5
          ..height = MediaQuery.of(context).size.width * 0.5,
      ),
    );
  }
  
  Widget _buildMainTitle() {
    return const Text(
      '支付正在处理中',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xFF333333),
      ),
    );
  }
  
  Widget _buildSubtitle() {
    return const Text(
      '请稍后,我们正在安全的处理您的交易',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
        color: Color(0xFF666666),
        height: 1.5,
      ),
    );
  }
}
