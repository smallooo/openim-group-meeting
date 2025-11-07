import 'package:get/get.dart';

class TkGuaranteeGenerateKeyState {
  TkGuaranteeGenerateKeyState() {
    ///Initialize variables
  }

  // 交易所名称
  final exchangeName = 'OKX'.obs;
  
  // APIKEY
  final apikey = ''.obs;
  
  // SECRET-KEY
  final secretKey = ''.obs;
  
  // PH (仅OKX交易所需要)
  final ph = ''.obs;
  
  // 是否正在生成
  final isGenerating = false.obs;
}
