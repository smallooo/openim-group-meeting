import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ChatRedPacketLogic extends GetxController{
  var amount = 0.0.obs;
  final amountCtrl = TextEditingController();
  final blessingCtrl = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    amountCtrl.addListener(_onAmountChanged);
  }

  void _onAmountChanged() {
  final text = amountCtrl.text;
  if (text.isEmpty || text == ".") {
    amount.value = 0.0;
    return;
  }
  double? value = double.tryParse(text);
  if (value != null) {
    amount.value = value;
  }
}

  @override
  void onClose() {
    amountCtrl.removeListener(_onAmountChanged);
    amountCtrl.dispose();
    blessingCtrl.dispose();
    super.onClose();
  }

  void generateRedPacket() {
    // Logic to generate red packet
    final amountValue = amount.value;
    final blessingValue = blessingCtrl.text;

    if (amountValue > 0) {
      // Call API to generate red packet

    } else {
      // Show error message
    } 
  }
  
}