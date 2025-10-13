import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class OrderSetPage extends StatelessWidget {
  OrderSetPage({Key? key}) : super(key: key);

  final logic = Get.find<OrderSetLogic>();
  final state = Get.find<OrderSetLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("订单设置",  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "预算资金:",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.left,
                            controller: TextEditingController(text: "5000"), // Placeholder value
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        "止损金额:",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.left,
                            controller: TextEditingController(text: "5000"), // Placeholder value
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        "止盈金额:",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.left,
                            controller: TextEditingController(text: "999996"), // Placeholder value
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "交易区间:",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.left,
                            controller: TextEditingController(text: "5000"), // Placeholder value
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text("-"),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.left,
                            controller: TextEditingController(text: "0"), // Placeholder value
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "策略类型:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF9F9F9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            // Handle strategy type selection
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "策略类型:",
                                style: TextStyle(fontSize: 16),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "平推",
                                    style: TextStyle(fontSize: 16, color: Color(0xFF0BAE4E)),
                                  ),
                                  Icon(Icons.arrow_forward_ios, size: 16, color: Colors.deepPurple),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "超出区间:",
                              style: TextStyle(fontSize: 16),
                            ),
                            Obx(
                              () => Row(
                                children: [
                                  Radio(
                                    value: "清仓卖出",
                                    groupValue: state.exceedRangeType.value, // Assuming exceedRangeType exists in state
                                    onChanged: (value) => logic.changeExceedRangeType(value as String), // Assuming changeExceedRangeType exists in logic
                                    activeColor: Colors.deepPurple,
                                  ),
                                  Text("清仓卖出"),
                                  Radio(
                                    value: "只卖不买",
                                    groupValue: state.exceedRangeType.value, // Assuming exceedRangeType exists in state
                                    onChanged: (value) => logic.changeExceedRangeType(value as String), // Assuming changeExceedRangeType exists in logic
                                    activeColor: Colors.deepPurple,
                                  ),
                                  Text("只卖不买"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "策略模式:",
                              style: TextStyle(fontSize: 16),
                            ),
                            Obx(
                              () => Row(
                                children: [
                                  Radio(
                                    value: "顺势",
                                    groupValue: state.strategyMode.value, // Assuming strategyMode exists in state
                                    onChanged: (value) => logic.changeStrategyMode(value as String), // Assuming changeStrategyMode exists in logic
                                    activeColor: Colors.deepPurple,
                                  ),
                                  Text("顺势"),
                                  Radio(
                                    value: "逆势",
                                    groupValue: state.strategyMode.value, // Assuming strategyMode exists in state
                                    onChanged: (value) => logic.changeStrategyMode(value as String), // Assuming changeStrategyMode exists in logic
                                    activeColor: Colors.deepPurple,
                                  ),
                                  Text("逆势"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "满单盈损停止:",
                              style: TextStyle(fontSize: 16),
                            ),
                            Obx(
                              () => Row(
                                children: [
                                  Radio(
                                    value: "否",
                                    groupValue: state.fullOrderStopLoss.value, // Assuming fullOrderStopLoss exists in state
                                    onChanged: (value) => logic.changeFullOrderStopLoss(value as String), // Assuming changeFullOrderStopLoss exists in logic
                                    activeColor: Colors.deepPurple,
                                  ),
                                  Text("否"),
                                  Radio(
                                    value: "是",
                                    groupValue: state.fullOrderStopLoss.value, // Assuming fullOrderStopLoss exists in state
                                    onChanged: (value) => logic.changeFullOrderStopLoss(value as String), // Assuming changeFullOrderStopLoss exists in logic
                                    activeColor: Colors.deepPurple,
                                  ),
                                  Text("是"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "区间外买入首单:",
                              style: TextStyle(fontSize: 16),
                            ),
                            Obx(
                              () => Row(
                                children: [
                                  Radio(
                                    value: "否",
                                    groupValue: state.buyFirstOrderOutsideRange.value, // Assuming buyFirstOrderOutsideRange exists in state
                                    onChanged: (value) => logic.changeBuyFirstOrderOutsideRange(value as String), // Assuming changeBuyFirstOrderOutsideRange exists in logic
                                    activeColor: Colors.deepPurple,
                                  ),
                                  Text("否"),
                                  Radio(
                                    value: "是",
                                    groupValue: state.buyFirstOrderOutsideRange.value, // Assuming buyFirstOrderOutsideRange exists in state
                                    onChanged: (value) => logic.changeBuyFirstOrderOutsideRange(value as String), // Assuming changeBuyFirstOrderOutsideRange exists in logic
                                    activeColor: Colors.deepPurple,
                                  ),
                                  Text("是"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "是否多空联动:",
                              style: TextStyle(fontSize: 16),
                            ),
                            Obx(
                                  () => Row(
                                children: [
                                  Radio(
                                    value: "否",
                                    groupValue: state.multiDirectionalLinkage.value, // Assuming multiDirectionalLinkage exists in state
                                    onChanged: (value) => logic.changeMultiDirectionalLinkage(value as String), // Assuming changeMultiDirectionalLinkage exists in logic
                                    activeColor: Colors.deepPurple,
                                  ),
                                  Text("否"),
                                  Radio(
                                    value: "是",
                                    groupValue: state.multiDirectionalLinkage.value, // Assuming multiDirectionalLinkage exists in state
                                    onChanged: (value) => logic.changeMultiDirectionalLinkage(value as String), // Assuming changeMultiDirectionalLinkage exists in logic
                                    activeColor: Colors.deepPurple,
                                  ),
                                  Text("是"),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle cancel action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.deepPurple,
                      side: BorderSide(color: Colors.deepPurple),
                      padding: EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text("取消", style: TextStyle(fontSize: 18)),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle confirm action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text("确认", style: TextStyle(fontSize: 18)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
