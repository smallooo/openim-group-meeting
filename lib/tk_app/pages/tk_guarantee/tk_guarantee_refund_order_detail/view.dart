import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'logic.dart';

class TkGuaranteeRefundOrderDetailPage extends StatelessWidget {
  TkGuaranteeRefundOrderDetailPage({Key? key}) : super(key: key);

  final logic = Get.find<TkGuaranteeRefundOrderDetailLogic>();
  final state = Get.find<TkGuaranteeRefundOrderDetailLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '售后详情',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        if (state.isLoading.value && state.detail.value == null) {
          return const Center(child: CircularProgressIndicator());
        }

        final detail = state.detail.value;
        if (detail == null) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('未找到退款详情'),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    final args = Get.arguments as Map<String, dynamic>?;
                    final refundNo = args?['refundNo'] ?? '';
                    if (refundNo is String && refundNo.isNotEmpty) {
                      logic.loadRefundDetail(refundNo);
                    }
                  },
                  child: const Text('重试'),
                ),
              ],
            ),
          );
        }

        return Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  _tile('退款单号', detail.refundNo),
                  _tile('订单号', detail.orderNo),
                  _tile('状态', detail.statusText),
                  _tile('申请时间', detail.createdAt),
                ],
              ),
            ),
            SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => logic.cancelRefund(),
                        child: const Text('撤销退款'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => logic.confirmRefund(),
                        child: const Text('确认退款'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => logic.showApproveOptions(),
                        child: const Text('审核退款'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }

  Widget _tile(String title, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFF0F0F0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: Colors.black54)),
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(color: Color(0xFF333333), fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
