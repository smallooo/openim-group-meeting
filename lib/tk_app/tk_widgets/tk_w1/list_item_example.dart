import 'package:flutter/material.dart';

import 'list_item_widget.dart';
// import '../list_item_widget.dart';

/// 列表项组件使用示例
class ListItemExample extends StatelessWidget {
  const ListItemExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('列表项组件示例'),
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
                ListItemWidget(
                  leftIcon: const Icon(Icons.wallet, color: Color(0xFF4CAF50)),
                  text: '支付',
                  onTap: () => _showSnackBar(context, '点击了支付'),
                ),
                ListItemWidget(
                  leftIcon: const Icon(Icons.settings, color: Color(0xFF2196F3)),
                  text: '设置',
                  onTap: () => _showSnackBar(context, '点击了设置'),
                ),
                ListItemWidget(
                  leftIcon: const Icon(Icons.person, color: Color(0xFFFF9800)),
                  text: '个人资料',
                  onTap: () => _showSnackBar(context, '点击了个人资料'),
                ),
              ],
            ),

            // 预设样式示例
            _buildSection(
              '预设样式',
              [
                PresetListItemWidget(
                  iconType: ListItemIconType.wallet,
                  text: '钱包',
                  onTap: () => _showSnackBar(context, '点击了钱包'),
                ),
                PresetListItemWidget(
                  iconType: ListItemIconType.payment,
                  text: '支付',
                  onTap: () => _showSnackBar(context, '点击了支付'),
                ),
                PresetListItemWidget(
                  iconType: ListItemIconType.settings,
                  text: '设置',
                  onTap: () => _showSnackBar(context, '点击了设置'),
                ),
                PresetListItemWidget(
                  iconType: ListItemIconType.user,
                  text: '用户',
                  onTap: () => _showSnackBar(context, '点击了用户'),
                ),
              ],
            ),

            // 自定义样式示例
            _buildSection(
              '自定义样式',
              [
                ListItemWidget(
                  leftIcon: const Icon(Icons.star, color: Color(0xFFFFD700)),
                  text: '收藏',
                  textStyle: const TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFF333333),
                    fontWeight: FontWeight.bold,
                  ),
                  rightIcon: const Icon(Icons.arrow_forward_ios, size: 14.0),
                  backgroundColor: const Color(0xFFFFF8E1),
                  padding: const EdgeInsets.all(16.0),
                  onTap: () => _showSnackBar(context, '点击了收藏'),
                ),
                ListItemWidget(
                  leftIcon: const Icon(Icons.notifications, color: Color(0xFFE91E63)),
                  text: '通知',
                  textStyle: const TextStyle(
                    fontSize: 16.0,
                    color: Color(0xFFE91E63),
                  ),
                  rightIcon: const Icon(Icons.arrow_forward_ios, size: 14.0),
                  backgroundColor: const Color(0xFFFCE4EC),
                  onTap: () => _showSnackBar(context, '点击了通知'),
                ),
              ],
            ),

            // 带分割线示例
            _buildSection(
              '带分割线',
              [
                ListItemWidget(
                  leftIcon: const Icon(Icons.home, color: Color(0xFF4CAF50)),
                  text: '首页',
                  showDivider: true,
                  onTap: () => _showSnackBar(context, '点击了首页'),
                ),
                ListItemWidget(
                  leftIcon: const Icon(Icons.search, color: Color(0xFF2196F3)),
                  text: '搜索',
                  showDivider: true,
                  onTap: () => _showSnackBar(context, '点击了搜索'),
                ),
                ListItemWidget(
                  leftIcon: const Icon(Icons.favorite, color: Color(0xFFE91E63)),
                  text: '喜欢',
                  showDivider: false,
                  onTap: () => _showSnackBar(context, '点击了喜欢'),
                ),
              ],
            ),

            // 使用图片路径示例
            _buildSection(
              '使用图片路径',
              [
                ListItemWidget(
                  leftIconPath: 'assets/images/wallet.png', // 假设有这个图片
                  text: '钱包（图片）',
                  onTap: () => _showSnackBar(context, '点击了钱包（图片）'),
                ),
                ListItemWidget(
                  leftIconPath: 'assets/images/settings.png', // 假设有这个图片
                  text: '设置（图片）',
                  onTap: () => _showSnackBar(context, '点击了设置（图片）'),
                ),
              ],
            ),

            // 不同高度示例
            _buildSection(
              '不同高度',
              [
                ListItemWidget(
                  leftIcon: const Icon(Icons.short_text, color: Color(0xFF9C27B0)),
                  text: '短项',
                  height: 40.0,
                  onTap: () => _showSnackBar(context, '点击了短项'),
                ),
                ListItemWidget(
                  leftIcon: const Icon(Icons.view_headline, color: Color(0xFF9C27B0)),
                  text: '标准项',
                  height: 56.0,
                  onTap: () => _showSnackBar(context, '点击了标准项'),
                ),
                ListItemWidget(
                  leftIcon: const Icon(Icons.view_agenda, color: Color(0xFF9C27B0)),
                  text: '长项',
                  height: 72.0,
                  onTap: () => _showSnackBar(context, '点击了长项'),
                ),
              ],
            ),

            // 禁用波纹效果示例
            _buildSection(
              '禁用波纹效果',
              [
                ListItemWidget(
                  leftIcon: const Icon(Icons.touch_app, color: Color(0xFF4CAF50)),
                  text: '有波纹效果（默认）',
                  onTap: () => _showSnackBar(context, '点击了有波纹效果'),
                ),
                ListItemWidget(
                  leftIcon: const Icon(Icons.touch_app, color: Color(0xFF2196F3)),
                  text: '无波纹效果',
                  showRippleEffect: false,
                  onTap: () => _showSnackBar(context, '点击了无波纹效果'),
                ),
                PresetListItemWidget(
                  iconType: ListItemIconType.settings,
                  text: '预设样式 - 有波纹',
                  onTap: () => _showSnackBar(context, '点击了预设样式 - 有波纹'),
                ),
                PresetListItemWidget(
                  iconType: ListItemIconType.user,
                  text: '预设样式 - 无波纹',
                  showRippleEffect: false,
                  onTap: () => _showSnackBar(context, '点击了预设样式 - 无波纹'),
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
            child: Column(children: children),
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
class ListItemWidgetUsage {
  static const String usage = '''
# ListItemWidget 使用说明

## 基础用法

```dart
ListItemWidget(
  leftIcon: Icon(Icons.wallet, color: Color(0xFF4CAF50)),
  text: '支付',
  onTap: () => print('点击了支付'),
)
```

## 主要属性

### 必需属性
- `text`: 中间显示的文字内容

### 可选属性
- `leftIcon`: 左侧图标 Widget
- `leftIconPath`: 左侧图标图片路径
- `leftIconSize`: 左侧图标大小，默认 24.0
- `rightIcon`: 右侧图标 Widget
- `rightIconPath`: 右侧图标图片路径
- `rightIconSize`: 右侧图标大小，默认 16.0
- `onTap`: 点击事件回调
- `textStyle`: 文字样式
- `backgroundColor`: 背景颜色
- `padding`: 内边距，默认 EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0)
- `margin`: 外边距
- `height`: 组件高度
- `showDivider`: 是否显示分割线，默认 false
- `dividerColor`: 分割线颜色
- `dividerHeight`: 分割线高度，默认 0.5
- `dividerLeftMargin`: 分割线左边距，默认 16.0
- `dividerRightMargin`: 分割线右边距，默认 0.0
- `showRippleEffect`: 是否显示点击波纹效果，默认 true

## 预设样式

使用 PresetListItemWidget 可以快速创建常用样式的列表项：

```dart
PresetListItemWidget(
  iconType: ListItemIconType.wallet,
  text: '钱包',
  onTap: () => print('点击了钱包'),
)
```

### 支持的图标类型
- wallet: 钱包图标
- payment: 支付图标
- settings: 设置图标
- user: 用户图标
- message: 消息图标
- phone: 电话图标
- email: 邮件图标
- location: 位置图标
- calendar: 日历图标
- star: 星标图标

## 自定义样式示例

```dart
ListItemWidget(
  leftIcon: Icon(Icons.star, color: Color(0xFFFFD700)),
  text: '收藏',
  textStyle: TextStyle(
    fontSize: 18.0,
    color: Color(0xFF333333),
    fontWeight: FontWeight.bold,
  ),
  rightIcon: Icon(Icons.arrow_forward_ios, size: 14.0),
  backgroundColor: Color(0xFFFFF8E1),
  padding: EdgeInsets.all(16.0),
  onTap: () => print('点击了收藏'),
)
```

## 带分割线示例

```dart
ListItemWidget(
  leftIcon: Icon(Icons.home, color: Color(0xFF4CAF50)),
  text: '首页',
  showDivider: true,
  onTap: () => print('点击了首页'),
)
```

## 禁用波纹效果示例

```dart
// 禁用波纹效果
ListItemWidget(
  leftIcon: Icon(Icons.settings, color: Color(0xFF2196F3)),
  text: '设置',
  showRippleEffect: false,
  onTap: () => print('点击了设置'),
)

// 预设样式禁用波纹效果
PresetListItemWidget(
  iconType: ListItemIconType.user,
  text: '用户',
  showRippleEffect: false,
  onTap: () => print('点击了用户'),
)
```
''';
}
