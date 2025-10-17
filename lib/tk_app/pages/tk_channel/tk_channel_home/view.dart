import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class TkChannelHomePage extends StatelessWidget {
  TkChannelHomePage({Key? key}) : super(key: key);

  final logic = Get.find<TkChannelHomeLogic>();
  final state = Get.find<TkChannelHomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAEDF4),
      appBar: AppBar(
        title: const Text('频道'),
        backgroundColor:  const Color(0xFFEAEDF4),
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(Icons.search_rounded),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(Icons.share_outlined),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final bool isNarrow = constraints.maxWidth < 380;
          final double sideWidth = isNarrow ? 72 : 84;
          final double contentHPadding = isNarrow ? 12 : 24;

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _SideBar(width: sideWidth),
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Container(
                    color: const Color(0xFFF5F6FA),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(
                        horizontal: contentHPadding,
                        vertical: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 12),
                          _GroupHeader(),
                          const SizedBox(height: 16),
                          const _SectionHeader(title: '信息'),
                          const SizedBox(height: 8),
                          const _CardChannelItem(title: '欢迎'),
                          const SizedBox(height: 12),
                          const _CardChannelItem(title: '公告'),
                          const SizedBox(height: 20),
                          const _SectionHeader(title: '综合'),
                          const SizedBox(height: 8),
                          const _ListChannelItem(title: '中文交流'),
                          const _ListChannelItem(title: '英语交流'),
                          const _ListChannelItem(title: '数据科学', selected: true),
                          const _ListChannelItem(title: 'Dune讨论'),
                          const _ListChannelItem(title: 'SQL讨论'),
                          const _ListChannelItem(title: '教程讨论'),
                          const _ListChannelItem(title: '招聘信息'),
                          const SizedBox(height: 20),
                          const _SectionHeader(title: '语音频道'),
                          const SizedBox(height: 8),
                          const _VoiceChannelItem(title: '休息室'),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _GroupHeader extends StatelessWidget {
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
          const Text(
            'Sixdegree',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
    final Color baseColor = selected ? Colors.white : Colors.transparent;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: baseColor,
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
        leading: const Icon(Icons.tag_rounded, size: 20, color: Colors.black54),
        title: Text(title),
        dense: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        tileColor: baseColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        onTap: () {},
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
  const _SideBar({required this.width});

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
              itemCount: 8,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final bool selected = index == 2; // 示例选中项
                final bool showDot = index == 2; // 选中项显示红点
                return _AvatarItem(selected: selected, showDot: showDot);
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
  const _AvatarItem({this.selected = false, this.showDot = false});

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
              left: -6,
              top: 10,
              bottom: 10,
              child: Container(
                width: 10,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: selected
                  ? Border.all(color: Colors.green, width: 4)
                  : null,
            ),
            clipBehavior: Clip.hardEdge,
            child: Container(
              color: Colors.grey.shade300,
              alignment: Alignment.center,
              child: const Icon(Icons.person, color: Colors.black54, size: 32),
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
