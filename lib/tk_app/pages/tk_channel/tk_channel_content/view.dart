import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../routes/app_pages.dart';
import 'logic.dart';

class TkChannelContentPage extends StatelessWidget {
  TkChannelContentPage({Key? key}) : super(key: key);

  final logic = Get.put(TkChannelContentLogic());
  final state = Get.find<TkChannelContentLogic>().state;

  /// 格式化时间戳为可读格式
  String _formatTimestamp(String createdAt) {
    try {
      // 解析时间字符串 "2025-10-16 17:03:26"
      final dateTime = DateTime.parse(createdAt);
      
      // 格式化为中文格式 "2025年10月16日 下午5:03"
      final formatter = DateFormat('yyyy年MM月dd日 a h:mm', 'zh_CN');
      return formatter.format(dateTime);
    } catch (e) {
      // 如果解析失败，返回原始字符串
      return createdAt;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: Obx(() => Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xFFFF5A5A),
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: const Text(
                '#',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              state.categoryName.value.isNotEmpty 
                  ? state.categoryName.value 
                  : '文字频道',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // 欢迎消息
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Obx(() => Text(
              '欢迎来到频道！这是${state.categoryName.value.isNotEmpty ? state.categoryName.value : "聊天"}的起点。',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            )),
          ),
          
          // 消息列表区域
          Expanded(
            child: Obx(() {
              if (state.isLoadingProducts.value) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              
              if (state.hasError.value) {
                return const Center(
                  child: Text(
                    '加载失败，请重试',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                );
              }
              
              if (state.productList.isEmpty) {
                return const Center(
                  child: Text(
                    '暂无商品数据',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                );
              }
              
              return ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  const SizedBox(height: 16),
                  // 动态渲染商品列表
                  ...state.productList.map((product) {
                    return Column(
                      children: [
                        _MessageItem(
                          avatar: 'https://via.placeholder.com/40',
                          username: 'AKA',
                          timestamp: _formatTimestamp(product.createdAt),
                          content: 'https://example.com/product',
                          hasCard: true,
                          cardTitle: product.name,
                          cardDescription: product.subName,
                          onCardTap: () {
                            // 跳转到商品详情页面，使用真实的产品ID
                            Get.toNamed(AppRoutes.tkProductDetail, arguments: {
                              'productId': product.id,
                            });
                          },
                        ),
                        const SizedBox(height: 16),
                      ],
                    );
                  }).toList(),
                ],
              );
            }),
          ),
          
          // 输入框区域
          // Container(
          //   padding: const EdgeInsets.all(16),
          //   decoration: const BoxDecoration(
          //     color: Colors.white,
          //     border: Border(top: BorderSide(color: Color(0xFFE0E0E0))),
          //   ),
          //   child: Row(
          //     children: [
          //       Expanded(
          //         child: Container(
          //           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          //           decoration: BoxDecoration(
          //             color: const Color(0xFFF5F5F5),
          //             borderRadius: BorderRadius.circular(24),
          //           ),
          //           child: Obx(() => Text(
          //             '在 ${state.categoryName.value.isNotEmpty ? state.categoryName.value : "频道"} 中发送消息',
          //             style: const TextStyle(
          //               color: Colors.grey,
          //               fontSize: 16,
          //             ),
          //           )),
          //         ),
          //       ),
          //       const SizedBox(width: 12),
          //       Container(
          //         width: 40,
          //         height: 40,
          //         decoration: BoxDecoration(
          //           color: const Color(0xFF5865F2),
          //           borderRadius: BorderRadius.circular(20),
          //         ),
          //         child: const Icon(
          //           Icons.send,
          //           color: Colors.white,
          //           size: 20,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

class _MessageItem extends StatelessWidget {
  final String avatar;
  final String username;
  final String timestamp;
  final String content;
  final bool hasCard;
  final String? cardTitle;
  final String? cardDescription;
  final VoidCallback? onCardTap;

  const _MessageItem({
    required this.avatar,
    required this.username,
    required this.timestamp,
    required this.content,
    this.hasCard = false,
    this.cardTitle,
    this.cardDescription,
    this.onCardTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey.shade300,
          child: const Icon(Icons.person, color: Colors.grey),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    username,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    timestamp,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                content,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.4,
                ),
              ),
              if (hasCard) ...[
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: onCardTap,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFFE0E0E0)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 4,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFF5865F2),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (cardTitle != null)
                                Text(
                                  cardTitle!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              if (cardDescription != null) ...[
                                const SizedBox(height: 4),
                                Text(
                                  cardDescription!,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xFF1E3A8A),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              'P',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _DateDivider extends StatelessWidget {
  final String date;
  
  const _DateDivider({required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Colors.grey.shade300)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            date,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ),
        Expanded(child: Divider(color: Colors.grey.shade300)),
      ],
    );
  }
}
