import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class TkProductDetailPage extends StatelessWidget {
  TkProductDetailPage({Key? key}) : super(key: key);

  final logic = Get.put(TkProductDetailLogic());
  final state = Get.find<TkProductDetailLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() {
        if (state.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        
        final product = state.productDetail.value;
        if (product == null) {
          return const Center(child: Text('商品信息加载失败'));
        }

        return CustomScrollView(
          slivers: [
            // 顶部图片和导航
            SliverAppBar(
              expandedHeight: 300,
              pinned: true,
              backgroundColor: Colors.white,
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Get.back(),
              ),
              title: Text(
                '商品详情',
                style: const TextStyle(color: Colors.black, fontSize: 18),
              ),
              actions: [
                // IconButton(
                //   icon: const Icon(Icons.bug_report, color: Colors.orange),
                //   onPressed: () {
                //     logic.quickTestMessageParsing();
                //   },
                // ),
                // IconButton(
                //   icon: const Icon(Icons.send, color: Colors.green),
                //   onPressed: () {
                //     logic.testSendSimpleMessage();
                //   },
                // ),
                IconButton(
                  icon: const Icon(Icons.headset, color: Colors.black),
                  onPressed: () {
                    logic.toCustomer();
                  },
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF808080), // 灰色
                        Color(0xFF999999), // 浅灰色
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      // 金条背景图片
                      Center(
                        child: product.picList.isNotEmpty
                            ? Image.network(
                                product.picList.first,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    width: 200,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Icon(
                                      Icons.image,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                  );
                                },
                              )
                            : Container(
                                width: 200,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade300,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Icon(
                                  Icons.image,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                      ),
                      // 页面指示器
                      Positioned(
                        bottom: 20,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Text(
                              '1/1',
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            // 商品信息
            SliverToBoxAdapter(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 商品名称和担保商品按钮
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: const Color(0xFF8B5CF6),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.shield, color: Colors.white, size: 16),
                              SizedBox(width: 4),
                              Text(
                                '担保商品',
                                style: TextStyle(color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 16),
                    
                    // 价格
                    Obx(() {
                      final selectedSku = logic.selectedSku;
                      final price = selectedSku?.price ?? product.defaultPrice;
                      return Text(
                        '¥${price.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF8B5CF6),
                        ),
                      );
                    }),
                    
                    const SizedBox(height: 8),
                    
                    // 分类信息
                    Text(
                      '类别：${product.categoryName}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    
                    const SizedBox(height: 24),
                    
                    // 商品详情标题
                    const Text(
                      '商品详情',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                    const SizedBox(height: 12),
                    
                    // 商品描述
                    Text(
                      product.subName.isNotEmpty 
                          ? product.subName 
                          : '立即获取稀有版虚拟金币包，助您在游戏中称霸一方！包含50000 虚拟金币及额外惊喜礼包。限时抢购，数量有限。本商品支持平台担保交易，安全无忧。特点：-稀有版本，独家发售-高额金币，助你领先一额外礼包，价值升级 使用方法:购买成功后，金币将自动发放到您的游戏账户。',
                      style: const TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Colors.black87,
                      ),
                    ),
                    
                    const SizedBox(height: 24),
                    
                    // SKU选择
                    if (product.skus.isNotEmpty) ...[
                      const Text(
                        '选择规格',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: product.skus.asMap().entries.map((entry) {
                          final index = entry.key;
                          final sku = entry.value;
                          return Obx(() {
                            final isSelected = state.selectedSkuIndex.value == index;
                            return GestureDetector(
                              onTap: () => logic.selectSku(index),
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: isSelected ? const Color(0xFF8B5CF6) : Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: isSelected ? const Color(0xFF8B5CF6) : Colors.grey.shade300,
                                  ),
                                ),
                                child: Text(
                                  sku.name,
                                  style: TextStyle(
                                    color: isSelected ? Colors.white : Colors.black,
                                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                                  ),
                                ),
                              ),
                            );
                          });
                        }).toList(),
                      ),
                      const SizedBox(height: 100), // 为底部按钮留空间
                    ],
                  ],
                ),
              ),
            ),
          ],
        );
      }),
      
      // 底部购买按钮
      // bottomNavigationBar: Obx(() {
      //   final product = state.productDetail.value;
      //   if (product == null) return const SizedBox.shrink();
      //
      //   return Container(
      //     padding: const EdgeInsets.all(16),
      //     decoration: const BoxDecoration(
      //       color: Colors.white,
      //       border: Border(top: BorderSide(color: Color(0xFFE0E0E0))),
      //     ),
      //     child: SafeArea(
      //       child: Row(
      //         children: [
      //           // 价格显示
      //           Expanded(
      //             child: Column(
      //               mainAxisSize: MainAxisSize.min,
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 const Text(
      //                   '总价',
      //                   style: TextStyle(fontSize: 12, color: Colors.grey),
      //                 ),
      //                 Obx(() {
      //                   final selectedSku = logic.selectedSku;
      //                   final price = selectedSku?.price ?? product.defaultPrice;
      //                   return Text(
      //                     '¥${price.toStringAsFixed(2)}',
      //                     style: const TextStyle(
      //                       fontSize: 20,
      //                       fontWeight: FontWeight.bold,
      //                       color: Color(0xFF8B5CF6),
      //                     ),
      //                   );
      //                 }),
      //               ],
      //             ),
      //           ),
      //
      //           // 购买按钮
      //           ElevatedButton(
      //             onPressed: () {
      //               // 购买逻辑
      //               Get.snackbar('提示', '购买功能开发中');
      //             },
      //             style: ElevatedButton.styleFrom(
      //               backgroundColor: const Color(0xFF8B5CF6),
      //               foregroundColor: Colors.white,
      //               padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(25),
      //               ),
      //             ),
      //             child: const Text(
      //               '立即购买',
      //               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   );
      // }),
    );
  }
}
