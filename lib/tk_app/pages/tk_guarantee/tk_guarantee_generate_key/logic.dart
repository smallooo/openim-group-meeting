import 'package:get/get.dart';

import 'state.dart';

class TkGuaranteeGenerateKeyLogic extends GetxController {
  final TkGuaranteeGenerateKeyState state = TkGuaranteeGenerateKeyState();

  /// 生成密钥
  Future<void> generateKey() async {
    // 验证必填字段
    if (state.apikey.value.isEmpty) {
      Get.snackbar('提示', '请输入APIKEY');
      return;
    }
    if (state.secretKey.value.isEmpty) {
      Get.snackbar('提示', '请输入SECRET-KEY');
      return;
    }
    if (state.exchangeName.value == 'OKX' && state.ph.value.isEmpty) {
      Get.snackbar('提示', 'OKX交易所需要输入PH');
      return;
    }

    state.isGenerating.value = true;
    try {
      // TODO: 调用API生成密钥
      await Future.delayed(const Duration(seconds: 2));
      
      // 生成成功后返回上一页
      Get.back(result: true);
      Get.snackbar('成功', '密钥生成成功');
    } catch (e) {
      Get.snackbar('错误', '生成密钥失败：${e.toString()}');
    } finally {
      state.isGenerating.value = false;
    }
  }
}
