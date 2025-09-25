import 'package:flutter/material.dart';
import 'info_card_widget.dart';

/// 信息卡片组件使用示例
class InfoCardExample extends StatelessWidget {
  const InfoCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('信息卡片组件示例'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 基础用法示例
            _buildSection(
              '基础用法',
              [
                InfoCardWidget(
                  imagePath: 'assets/images/avatar.png', // 假设有这个图片
                  title: 'Wait',
                  subtitle: '地址: sjadjkdjs...',
                  onCopy: () => _showSnackBar(context, '复制了地址'),
                  onTopRightIconTap: () => _showSnackBar(context, '点击了二维码'),
                  onBottomRightIconTap: () => _showSnackBar(context, '点击了箭头'),
                  onTap: () => _showSnackBar(context, '点击了卡片'),
                ),
                InfoCardWidget(
                  imagePath: 'assets/images/avatar2.png',
                  title: '用户信息',
                  subtitle: 'ID: 123456789',
                  onCopy: () => _showSnackBar(context, '复制了用户ID'),
                  onTopRightIconTap: () => _showSnackBar(context, '点击了二维码'),
                  onBottomRightIconTap: () => _showSnackBar(context, '点击了箭头'),
                  onTap: () => _showSnackBar(context, '点击了卡片'),
                ),
              ],
            ),

            // 预设样式示例
            _buildSection(
              '预设样式',
              [
                PresetInfoCardWidget(
                  imagePath: 'assets/images/avatar.png',
                  title: '默认卡片',
                  subtitle: '地址: abc123...',
                  cardType: InfoCardType.defaultCard,
                  onCopy: () => _showSnackBar(context, '复制了地址'),
                  onTap: () => _showSnackBar(context, '点击了默认卡片'),
                ),
                PresetInfoCardWidget(
                  imagePath: 'assets/images/avatar2.png',
                  title: '紧凑卡片',
                  subtitle: 'ID: 987654321',
                  cardType: InfoCardType.compactCard,
                  onCopy: () => _showSnackBar(context, '复制了ID'),
                  onTap: () => _showSnackBar(context, '点击了紧凑卡片'),
                ),
                PresetInfoCardWidget(
                  imagePath: 'assets/images/avatar3.png',
                  title: '大卡片',
                  subtitle: '详细信息: 这是一个很长的描述信息...',
                  cardType: InfoCardType.largeCard,
                  onCopy: () => _showSnackBar(context, '复制了详细信息'),
                  onTap: () => _showSnackBar(context, '点击了大卡片'),
                ),
              ],
            ),

            // 自定义图标示例
            _buildSection(
              '自定义图标',
              [
                InfoCardWidget(
                  imagePath: 'assets/images/avatar.png',
                  title: '自定义复制图标',
                  subtitle: '地址: custom123...',
                  copyIcon: const Icon(Icons.content_copy, size: 16.0),
                  onCopy: () => _showSnackBar(context, '复制了地址'),
                  onTap: () => _showSnackBar(context, '点击了卡片'),
                ),
                InfoCardWidget(
                  imagePath: 'assets/images/avatar2.png',
                  title: '自定义右侧图标',
                  subtitle: 'ID: custom456...',
                  topRightIcon: const Icon(Icons.share, size: 20.0),
                  bottomRightIcon: const Icon(Icons.more_vert, size: 16.0),
                  onTopRightIconTap: () => _showSnackBar(context, '点击了分享'),
                  onBottomRightIconTap: () => _showSnackBar(context, '点击了更多'),
                  onTap: () => _showSnackBar(context, '点击了卡片'),
                ),
                InfoCardWidget(
                  imagePath: 'assets/images/avatar3.png',
                  title: '无复制图标',
                  subtitle: '只读信息',
                  showCopyIcon: false,
                  onTap: () => _showSnackBar(context, '点击了卡片'),
                ),
              ],
            ),

            // 自定义样式示例
            _buildSection(
              '自定义样式',
              [
                InfoCardWidget(
                  imagePath: 'assets/images/avatar.png',
                  title: '蓝色主题',
                  subtitle: '地址: blue123...',
                  backgroundColor: const Color(0xFFE3F2FD),
                  titleStyle: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1976D2),
                  ),
                  subtitleStyle: const TextStyle(
                    fontSize: 14.0,
                    color: Color(0xFF1565C0),
                  ),
                  borderRadius: 16.0,
                  onCopy: () => _showSnackBar(context, '复制了地址'),
                  onTap: () => _showSnackBar(context, '点击了蓝色主题'),
                ),
                InfoCardWidget(
                  imagePath: 'assets/images/avatar2.png',
                  title: '绿色主题',
                  subtitle: 'ID: green456...',
                  backgroundColor: const Color(0xFFE8F5E8),
                  titleStyle: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2E7D32),
                  ),
                  subtitleStyle: const TextStyle(
                    fontSize: 14.0,
                    color: Color(0xFF388E3C),
                  ),
                  borderRadius: 20.0,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  onCopy: () => _showSnackBar(context, '复制了ID'),
                  onTap: () => _showSnackBar(context, '点击了绿色主题'),
                ),
                InfoCardWidget(
                  imagePath: 'assets/images/avatar3.png',
                  title: '紫色主题',
                  subtitle: '信息: purple789...',
                  backgroundColor: const Color(0xFFF3E5F5),
                  titleStyle: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF7B1FA2),
                  ),
                  subtitleStyle: const TextStyle(
                    fontSize: 15.0,
                    color: Color(0xFF8E24AA),
                  ),
                  borderRadius: 24.0,
                  borderColor: const Color(0xFF9C27B0),
                  borderWidth: 2.0,
                  onCopy: () => _showSnackBar(context, '复制了信息'),
                  onTap: () => _showSnackBar(context, '点击了紫色主题'),
                ),
              ],
            ),

            // 不同图片大小示例
            _buildSection(
              '不同图片大小',
              [
                InfoCardWidget(
                  imagePath: 'assets/images/avatar.png',
                  title: '小图片',
                  subtitle: '地址: small123...',
                  imageSize: 40.0,
                  onCopy: () => _showSnackBar(context, '复制了地址'),
                  onTap: () => _showSnackBar(context, '点击了小图片'),
                ),
                InfoCardWidget(
                  imagePath: 'assets/images/avatar2.png',
                  title: '标准图片',
                  subtitle: 'ID: standard456...',
                  imageSize: 60.0,
                  onCopy: () => _showSnackBar(context, '复制了ID'),
                  onTap: () => _showSnackBar(context, '点击了标准图片'),
                ),
                InfoCardWidget(
                  imagePath: 'assets/images/avatar3.png',
                  title: '大图片',
                  subtitle: '信息: large789...',
                  imageSize: 80.0,
                  onCopy: () => _showSnackBar(context, '复制了信息'),
                  onTap: () => _showSnackBar(context, '点击了大图片'),
                ),
              ],
            ),

            // 禁用状态示例
            _buildSection(
              '禁用状态',
              [
                InfoCardWidget(
                  imagePath: 'assets/images/avatar.png',
                  title: '禁用卡片',
                  subtitle: '地址: disabled123...',
                  enabled: false,
                  onCopy: () => _showSnackBar(context, '复制了地址'),
                  onTap: () => _showSnackBar(context, '点击了禁用卡片'),
                ),
                PresetInfoCardWidget(
                  imagePath: 'assets/images/avatar2.png',
                  title: '禁用预设卡片',
                  subtitle: 'ID: disabled456...',
                  cardType: InfoCardType.defaultCard,
                  enabled: false,
                  onCopy: () => _showSnackBar(context, '复制了ID'),
                  onTap: () => _showSnackBar(context, '点击了禁用预设卡片'),
                ),
              ],
            ),

            // 禁用波纹效果示例
            _buildSection(
              '禁用波纹效果',
              [
                InfoCardWidget(
                  imagePath: 'assets/images/avatar.png',
                  title: '有波纹效果（默认）',
                  subtitle: '地址: ripple123...',
                  onCopy: () => _showSnackBar(context, '复制了地址'),
                  onTap: () => _showSnackBar(context, '点击了有波纹效果'),
                ),
                InfoCardWidget(
                  imagePath: 'assets/images/avatar2.png',
                  title: '无波纹效果',
                  subtitle: 'ID: noRipple456...',
                  showRippleEffect: false,
                  onCopy: () => _showSnackBar(context, '复制了ID'),
                  onTap: () => _showSnackBar(context, '点击了无波纹效果'),
                ),
              ],
            ),

            // 自定义 Widget 示例
            _buildSection(
              '自定义 Widget',
              [
                InfoCardWidget(
                  imageWidget: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.blue, Colors.purple],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  title: '渐变头像',
                  subtitle: '地址: gradient123...',
                  onCopy: () => _showSnackBar(context, '复制了地址'),
                  onTap: () => _showSnackBar(context, '点击了渐变头像'),
                ),
                InfoCardWidget(
                  imageWidget: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: const Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  title: '圆形图标',
                  subtitle: 'ID: circle456...',
                  onCopy: () => _showSnackBar(context, '复制了ID'),
                  onTap: () => _showSnackBar(context, '点击了圆形图标'),
                ),
              ],
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  /// 构建分组
  Widget _buildSection(String title, List<Widget> children) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF333333),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: children.map((child) => Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: child,
                )).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 显示提示信息
  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}

/// 使用说明文档
class InfoCardWidgetUsage {
  static const String usage = '''
# InfoCardWidget 使用说明

## 基础用法

```dart
InfoCardWidget(
  imagePath: 'assets/images/avatar.png',
  title: 'Wait',
  subtitle: '地址: sjadjkdjs...',
  onCopy: () => print('复制了地址'),
  onTopRightIconTap: () => print('点击了二维码'),
  onBottomRightIconTap: () => print('点击了箭头'),
  onTap: () => print('点击了卡片'),
)
```

## 主要属性

### 必需属性
- `title`: 主标题文字内容

### 可选属性
- `imagePath`: 左侧图片路径
- `imageWidget`: 左侧图片 Widget
- `imageSize`: 图片大小，默认 60.0
- `imageBorderRadius`: 图片圆角半径，默认 8.0
- `titleStyle`: 主标题样式
- `subtitle`: 副标题文字
- `subtitleStyle`: 副标题样式
- `showCopyIcon`: 是否显示副标题复制图标，默认 true
- `copyIcon`: 复制图标
- `copyIconSize`: 复制图标大小，默认 16.0
- `copyIconColor`: 复制图标颜色
- `onCopy`: 复制事件回调
- `topRightIcon`: 右上角图标
- `topRightIconSize`: 右上角图标大小，默认 20.0
- `topRightIconColor`: 右上角图标颜色
- `onTopRightIconTap`: 右上角图标点击事件
- `bottomRightIcon`: 右下角图标
- `bottomRightIconSize`: 右下角图标大小，默认 16.0
- `bottomRightIconColor`: 右下角图标颜色
- `onBottomRightIconTap`: 右下角图标点击事件
- `onTap`: 整个卡片点击事件
- `backgroundColor`: 背景颜色，默认 Color(0xFFF5F5F5)
- `padding`: 内边距，默认 EdgeInsets.all(16.0)
- `margin`: 外边距
- `height`: 高度
- `borderRadius`: 圆角半径，默认 12.0
- `borderColor`: 边框颜色
- `borderWidth`: 边框宽度
- `boxShadow`: 阴影效果
- `showRippleEffect`: 是否显示点击波纹效果，默认 true
- `rippleColor`: 波纹效果颜色
- `enabled`: 是否启用卡片，默认 true

## 预设样式

使用 PresetInfoCardWidget 可以快速创建常用样式的信息卡片：

```dart
// 默认卡片
PresetInfoCardWidget(
  imagePath: 'assets/images/avatar.png',
  title: '默认卡片',
  subtitle: '地址: abc123...',
  cardType: InfoCardType.defaultCard,
  onCopy: () => print('复制了地址'),
  onTap: () => print('点击了默认卡片'),
)

// 紧凑卡片
PresetInfoCardWidget(
  imagePath: 'assets/images/avatar.png',
  title: '紧凑卡片',
  subtitle: 'ID: 987654321',
  cardType: InfoCardType.compactCard,
  onCopy: () => print('复制了ID'),
  onTap: () => print('点击了紧凑卡片'),
)

// 大卡片
PresetInfoCardWidget(
  imagePath: 'assets/images/avatar.png',
  title: '大卡片',
  subtitle: '详细信息: 这是一个很长的描述信息...',
  cardType: InfoCardType.largeCard,
  onCopy: () => print('复制了详细信息'),
  onTap: () => print('点击了大卡片'),
)
```

### 支持的卡片类型
- `defaultCard`: 默认卡片（60px 图片，16px 标题）
- `compactCard`: 紧凑卡片（50px 图片，14px 标题）
- `largeCard`: 大卡片（80px 图片，18px 标题）

## 自定义样式示例

```dart
InfoCardWidget(
  imagePath: 'assets/images/avatar.png',
  title: '自定义样式',
  subtitle: '地址: custom123...',
  backgroundColor: Color(0xFFE3F2FD),
  titleStyle: TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Color(0xFF1976D2),
  ),
  subtitleStyle: TextStyle(
    fontSize: 14.0,
    color: Color(0xFF1565C0),
  ),
  borderRadius: 16.0,
  boxShadow: [
    BoxShadow(
      color: Colors.blue.withOpacity(0.2),
      blurRadius: 8,
      offset: Offset(0, 4),
    ),
  ],
  onCopy: () => print('复制了地址'),
  onTap: () => print('点击了自定义样式'),
)
```

## 自定义图标示例

```dart
InfoCardWidget(
  imagePath: 'assets/images/avatar.png',
  title: '自定义图标',
  subtitle: 'ID: custom456...',
  copyIcon: Icon(Icons.content_copy, size: 16.0),
  topRightIcon: Icon(Icons.share, size: 20.0),
  bottomRightIcon: Icon(Icons.more_vert, size: 16.0),
  onCopy: () => print('复制了ID'),
  onTopRightIconTap: () => print('点击了分享'),
  onBottomRightIconTap: () => print('点击了更多'),
  onTap: () => print('点击了自定义图标'),
)
```

## 禁用状态示例

```dart
InfoCardWidget(
  imagePath: 'assets/images/avatar.png',
  title: '禁用卡片',
  subtitle: '地址: disabled123...',
  enabled: false,
  onCopy: () => print('复制了地址'),
  onTap: () => print('点击了禁用卡片'),
)
```

## 禁用波纹效果示例

```dart
InfoCardWidget(
  imagePath: 'assets/images/avatar.png',
  title: '无波纹效果',
  subtitle: 'ID: noRipple456...',
  showRippleEffect: false,
  onCopy: () => print('复制了ID'),
  onTap: () => print('点击了无波纹效果'),
)
```
''';
}
