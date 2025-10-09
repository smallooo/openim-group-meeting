import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class StrategySetPage extends StatelessWidget {
  StrategySetPage({Key? key}) : super(key: key);

  final logic = Get.find<StrategySetLogic>();
  final state = Get.find<StrategySetLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "策略设置",
          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF9F9F9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "试算金额",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Text(
                              "预算资金:",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 85,
                              height: 30,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(width: 10),
                            // Text("USDT"),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Text(
                              "策略类型:",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 10),
                            Obx(
                              () => Row(
                                children: [
                                  GestureDetector(
                                    onTap: () => logic.changeStrategyType("平推"),
                                    child: _buildStrategyTypeButton("平推", state.selectedStrategyType.value == "平推"),
                                  ),
                                  SizedBox(width: 10),
                                  GestureDetector(
                                    onTap: () => logic.changeStrategyType("保守型"),
                                    child: _buildStrategyTypeButton("保守型", state.selectedStrategyType.value == "保守型"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Text(
                          "单数: 4 | 张数: 4 | 总间隔: 90%",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "需要总金额约: 2833.6476 USDT",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF9F9F9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "整体止盈",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Text(
                              "整体止盈比例:",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 85,
                              height: 29,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text("%"),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Text(
                              "整体回降比例:",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 85,
                              height: 29,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text("%"),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "盈利金额达到持仓费用的8%后,触发追踪止盈,盈利比例增长达最大值后减少19%,则卖出平仓",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF9F9F9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "网格止盈",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Text(
                              "整体止盈比例:",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 85,
                              height: 29,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text("%"),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "仅方向行情结束后再进行交易(设置为0表示不启用该功能)",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Implement cancel action
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
                    child: Text("取消", style: TextStyle(fontSize: 16)),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Implement confirm action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text("确认", style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStrategyTypeButton(String text, bool isSelected) {
    return Container(
      width: 98,
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFF9E13F7) : Colors.grey[200],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
