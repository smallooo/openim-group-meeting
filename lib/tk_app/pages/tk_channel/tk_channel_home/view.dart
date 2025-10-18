import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'models/seller_models.dart';
import 'models/channel_models.dart';

class TkChannelHomePage extends StatelessWidget {
  final logic = Get.put(TkChannelHomeLogic());
  final state = Get.find<TkChannelHomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: Obx(() {
        if (logic.state.sellerList.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return Row(
            children: [
              // 左侧商家头像列表
              _SideBar(
                width: 80,
                sellerList: logic.state.sellerList,
              ),
              // 右侧频道内容
              Expanded(
                child: Container(
                  color: const Color(0xFFF5F5F5),
                  child: Obx(() {
                    if (logic.state.isLoadingChannels.value) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    
                    if (logic.state.channelList.isEmpty) {
                      return const Center(
                        child: Text(
                          '暂无频道数据',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      );
                    }
                    
                    return Column(
                      children: [
                        // 群组头部
                        Container(
                          margin: const EdgeInsets.all(16),
                          child: Obx(() => _GroupHeader(
                            sellerName: logic.selectedSeller?.name ?? '',
                          )),
                        ),
                        // 动态频道列表
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            child: ListView.builder(
                              itemCount: logic.state.channelList.length,
                              itemBuilder: (context, channelIndex) {
                                final channel = logic.state.channelList[channelIndex];
                                return _ChannelSection(channel: channel);
                              },
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ],
          );
        }
      }),
    );
  }
}

class _ChannelSection extends StatelessWidget {
  final ChannelModel channel;
  const _ChannelSection({required this.channel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 频道标题
        _SectionHeader(title: channel.channelName),
        const SizedBox(height: 8),
        
        // 频道分类列表
        ...channel.categories.map((category) {
          // 根据频道名称判断显示样式
          if (channel.channelName.contains('语音')) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: _VoiceChannelItem(title: category.name),
            );
          } else if (channel.channelName.contains('信息')) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: _CardChannelItem(title: category.name),
            );
          } else if (channel.channelName.contains('综合')) {
            // 只有综合频道下的列表项支持选中状态
            return Obx(() {
              final logic = Get.find<TkChannelHomeLogic>();
              final bool isSelected = logic.state.selectedCategoryId.value == category.id;
              return GestureDetector(
                onTap: () {
                  logic.selectCategory(category.id, category.name);
                  // 跳转到频道内容页面
                  logic.navigateToChannelContent(
                    category.id, 
                    category.name, 
                    channel.channelName,
                  );
                },
                child: _ListChannelItem(
                  title: category.name,
                  selected: isSelected,
                ),
              );
            });
          } else {
            return _ListChannelItem(
              title: category.name,
              selected: false, // 其他频道的分类不支持选中
            );
          }
        }).toList(),
        
        const SizedBox(height: 16),
      ],
    );
  }
}

class _GroupHeader extends StatelessWidget {
  final String sellerName;
  const _GroupHeader({required this.sellerName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          Text(
            sellerName.isNotEmpty ? sellerName : 'Sixdegree',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share_outlined),
            tooltip: '分享',
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.expand_more, size: 18),
        const SizedBox(width: 6),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}

class _CardChannelItem extends StatelessWidget {
  final String title;
  const _CardChannelItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
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
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                const Text(
                  '周星：本星',
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ListChannelItem extends StatelessWidget {
  final String title;
  final bool selected;
  const _ListChannelItem({required this.title, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: selected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        boxShadow: selected
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(0.04),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ]
            : null,
      ),
      child: ListTile(
        leading: Icon(
          Icons.tag_rounded, 
          size: 20, 
          color: selected ? Colors.black87 : Colors.black54,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: selected ? Colors.black : Colors.black,
            fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
        dense: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      ),
    );
  }
}

class _VoiceChannelItem extends StatelessWidget {
  final String title;
  const _VoiceChannelItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: const Icon(Icons.volume_up_rounded, color: Colors.black87),
        title: Text(title),
        dense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        onTap: () {},
      ),
    );
  }
}

class _SideBar extends StatelessWidget {
  final double width;
  final List<MchSellerModel> sellerList;
  const _SideBar({required this.width, required this.sellerList});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.only(left: 8, right: 12, top: 12),
      child: Column(
        children: [
          _RoundButton(
            icon: Icons.add,
            background: Colors.white,
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.separated(
              itemCount: sellerList.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final seller = sellerList[index];
                final shop = seller.shops.isNotEmpty ? seller.shops.first : null;
                return Obx(() {
                  final logic = Get.find<TkChannelHomeLogic>();
                  final bool selected = logic.state.selectedSellerIndex.value == index;
                  final bool showDot = selected; // 选中的显示红点
                  return GestureDetector(
                    onTap: () => logic.selectSeller(index),
                    child: _AvatarItem(
                      selected: selected, 
                      showDot: showDot,
                      seller: seller,
                      shop: shop,
                    ),
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

// 顶部横向头像条已移除，统一使用左侧纵向侧栏实现

class _AvatarItem extends StatelessWidget {
  final bool selected;
  final bool showDot;
  final MchSellerModel? seller;
  final ShopModel? shop;
  const _AvatarItem({
    this.selected = false, 
    this.showDot = false,
    this.seller,
    this.shop,
  });

  @override
  Widget build(BuildContext context) {
    const double size = 64; // 方形头像尺寸
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          if (selected)
            Positioned(
              left: -8,
              top: 10,
              bottom: 10,
              child: Container(
                width: 5,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: selected
                  ? Border.all(color: Colors.green, width: 4)
                  : null,
            ),
            clipBehavior: Clip.hardEdge,
            child: shop?.logo.isNotEmpty == true
                ? Image.network(
                    shop!.logo,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey.shade300,
                        alignment: Alignment.center,
                        child: const Icon(Icons.store, color: Colors.black54, size: 32),
                      );
                    },
                  )
                : Container(
                    color: Colors.grey.shade300,
                    alignment: Alignment.center,
                    child: const Icon(Icons.store, color: Colors.black54, size: 32),
                  ),
          ),
          if (showDot)
            Positioned(
              right: -2,
              top: -2,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _RoundButton extends StatelessWidget {
  final IconData icon;
  final Color background;
  const _RoundButton({required this.icon, required this.background});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Icon(icon, color: Colors.black87, size: 36),
    );
  }
}
