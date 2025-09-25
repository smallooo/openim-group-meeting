import 'package:flutter/material.dart';
import 'icon_text_widget.dart';

/// 图标文字组件使用示例
class IconTextExample extends StatelessWidget {
  const IconTextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('图标文字组件示例'),
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
                IconTextWidget(
                  leftIcon: const Icon(Icons.notifications, color: Color(0xFF9C27B0)),
                  text: 'CG00587621于14:54订阅了會長David',
                  onTap: () => _showSnackBar(context, '点击了通知'),
                ),
                IconTextWidget(
                  leftIcon: const Icon(Icons.message, color: Color(0xFF2196F3)),
                  text: '新消息提醒',
                  onTap: () => _showSnackBar(context, '点击了消息'),
                ),
                IconTextWidget(
                  leftIcon: const Icon(Icons.settings, color: Color(0xFF4CAF50)),
                  text: '设置选项',
                  onTap: () => _showSnackBar(context, '点击了设置'),
                ),
              ],
            ),

            // 预设样式示例
            _buildSection(
              '预设样式',
              [
                PresetIconTextWidget(
                  iconType: IconTextIconType.notification,
                  text: 'CG00587621于14:54订阅了會長David',
                  onTap: () => _showSnackBar(context, '点击了通知'),
                ),
                PresetIconTextWidget(
                  iconType: IconTextIconType.subscription,
                  text: '订阅提醒',
                  onTap: () => _showSnackBar(context, '点击了订阅'),
                ),
                PresetIconTextWidget(
                  iconType: IconTextIconType.message,
                  text: '消息通知',
                  onTap: () => _showSnackBar(context, '点击了消息'),
                ),
                PresetIconTextWidget(
                  iconType: IconTextIconType.settings,
                  text: '系统设置',
                  onTap: () => _showSnackBar(context, '点击了设置'),
                ),
                PresetIconTextWidget(
                  iconType: IconTextIconType.user,
                  text: '用户信息',
                  onTap: () => _showSnackBar(context, '点击了用户'),
                ),
              ],
            ),

            // 自定义样式示例
            _buildSection(
              '自定义样式',
              [
                IconTextWidget(
                  leftIcon: const Icon(Icons.star, color: Color(0xFFFFD700)),
                  text: '这是一个很长的文字内容，用来测试文字溢出处理，应该显示省略号',
                  textStyle: const TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFF333333),
                    fontWeight: FontWeight.bold,
                  ),
                  backgroundColor: const Color(0xFFFFF8E1),
                  padding: const EdgeInsets.all(16.0),
                  borderRadius: 12.0,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  onTap: () => _showSnackBar(context, '点击了收藏'),
                ),
                IconTextWidget(
                  leftIcon: const Icon(Icons.warning, color: Color(0xFFFF9800)),
                  text: '警告信息',
                  textStyle: const TextStyle(
                    fontSize: 16.0,
                    color: Color(0xFFFF9800),
                    fontWeight: FontWeight.w500,
                  ),
                  backgroundColor: const Color(0xFFFFF3E0),
                  borderRadius: 8.0,
                  border: Border.all(color: const Color(0xFFFF9800), width: 1.0),
                  onTap: () => _showSnackBar(context, '点击了警告'),
                ),
                IconTextWidget(
                  leftIcon: const Icon(Icons.check_circle, color: Color(0xFF4CAF50)),
                  text: '操作成功',
                  textStyle: const TextStyle(
                    fontSize: 16.0,
                    color: Color(0xFF4CAF50),
                    fontWeight: FontWeight.w500,
                  ),
                  backgroundColor: const Color(0xFFE8F5E8),
                  borderRadius: 8.0,
                  onTap: () => _showSnackBar(context, '点击了成功'),
                ),
              ],
            ),

            // 不同高度示例
            _buildSection(
              '不同高度',
              [
                IconTextWidget(
                  leftIcon: const Icon(Icons.short_text, color: Color(0xFF9C27B0)),
                  text: '短项',
                  height: 40.0,
                  onTap: () => _showSnackBar(context, '点击了短项'),
                ),
                IconTextWidget(
                  leftIcon: const Icon(Icons.view_headline, color: Color(0xFF9C27B0)),
                  text: '标准项',
                  height: 56.0,
                  onTap: () => _showSnackBar(context, '点击了标准项'),
                ),
                IconTextWidget(
                  leftIcon: const Icon(Icons.view_agenda, color: Color(0xFF9C27B0)),
                  text: '长项',
                  height: 72.0,
                  onTap: () => _showSnackBar(context, '点击了长项'),
                ),
              ],
            ),

            // 文字溢出处理示例
            _buildSection(
              '文字溢出处理',
              [
                IconTextWidget(
                  leftIcon: const Icon(Icons.text_fields, color: Color(0xFF2196F3)),
                  text: '这是一段很长的文字内容，用来测试文字溢出处理效果，应该显示省略号而不是换行',
                  textOverflow: TextOverflow.ellipsis,
                  onTap: () => _showSnackBar(context, '点击了长文字'),
                ),
                IconTextWidget(
                  leftIcon: const Icon(Icons.text_fields, color: Color(0xFF2196F3)),
                  text: '这是一段很长的文字内容，用来测试文字溢出处理效果，应该显示省略号而不是换行',
                  textOverflow: TextOverflow.fade,
                  onTap: () => _showSnackBar(context, '点击了长文字（淡出）'),
                ),
                IconTextWidget(
                  leftIcon: const Icon(Icons.text_fields, color: Color(0xFF2196F3)),
                  text: '这是一段很长的文字内容，用来测试文字溢出处理效果，应该显示省略号而不是换行',
                  textOverflow: TextOverflow.clip,
                  onTap: () => _showSnackBar(context, '点击了长文字（裁剪）'),
                ),
              ],
            ),

            // 使用图片路径示例
            _buildSection(
              '使用图片路径',
              [
                IconTextWidget(
                  leftIconPath: 'assets/images/notification.png', // 假设有这个图片
                  text: '通知（图片）',
                  onTap: () => _showSnackBar(context, '点击了通知（图片）'),
                ),
                IconTextWidget(
                  leftIconPath: 'assets/images/settings.png', // 假设有这个图片
                  text: '设置（图片）',
                  onTap: () => _showSnackBar(context, '点击了设置（图片）'),
                ),
              ],
            ),

            // 禁用波纹效果示例
            _buildSection(
              '禁用波纹效果',
              [
                IconTextWidget(
                  leftIcon: const Icon(Icons.touch_app, color: Color(0xFF4CAF50)),
                  text: '有波纹效果（默认）',
                  onTap: () => _showSnackBar(context, '点击了有波纹效果'),
                ),
                IconTextWidget(
                  leftIcon: const Icon(Icons.touch_app, color: Color(0xFF2196F3)),
                  text: '无波纹效果',
                  showRippleEffect: false,
                  onTap: () => _showSnackBar(context, '点击了无波纹效果'),
                ),
                PresetIconTextWidget(
                  iconType: IconTextIconType.settings,
                  text: '预设样式 - 有波纹',
                  onTap: () => _showSnackBar(context, '点击了预设样式 - 有波纹'),
                ),
                PresetIconTextWidget(
                  iconType: IconTextIconType.user,
                  text: '预设样式 - 无波纹',
                  showRippleEffect: false,
                  onTap: () => _showSnackBar(context, '点击了预设样式 - 无波纹'),
                ),
              ],
            ),

            // 文字选择示例
            _buildSection(
              '文字选择',
              [
                IconTextWidget(
                  leftIcon: const Icon(Icons.content_copy, color: Color(0xFF9C27B0)),
                  text: '这段文字可以选择和复制',
                  enableTextSelection: true,
                  onTap: () => _showSnackBar(context, '点击了可选择的文字'),
                ),
                IconTextWidget(
                  leftIcon: const Icon(Icons.text_fields, color: Color(0xFF9C27B0)),
                  text: '这段文字不能选择',
                  enableTextSelection: false,
                  onTap: () => _showSnackBar(context, '点击了不可选择的文字'),
                ),
              ],
            ),

            // 模拟截图效果示例
            _buildSection(
              '模拟截图效果',
              [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF0F0F0),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: IconTextWidget(
                    leftIcon: const Icon(Icons.volume_up, color: Color(0xFF9C27B0)),
                    text: 'CG00587621于14:54订阅了會長David',
                    backgroundColor: const Color(0xFFE1BEE7),
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                    borderRadius: 12.0,
                    textStyle: const TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF424242),
                      fontWeight: FontWeight.normal,
                    ),
                    onTap: () => _showSnackBar(context, '点击了订阅通知'),
                  ),
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
class IconTextWidgetUsage {
  static const String usage = '''
# IconTextWidget 使用说明

## 基础用法

```dart
IconTextWidget(
  leftIcon: Icon(Icons.notifications, color: Color(0xFF9C27B0)),
  text: 'CG00587621于14:54订阅了會長David',
  onTap: () => print('点击了通知'),
)
```

## 主要属性

### 必需属性
- `text`: 显示的文字内容

### 可选属性
- `leftIcon`: 左侧图标 Widget
- `leftIconPath`: 左侧图标图片路径
- `leftIconSize`: 左侧图标大小，默认 24.0
- `onTap`: 点击事件回调
- `textStyle`: 文字样式
- `backgroundColor`: 背景颜色
- `padding`: 内边距，默认 EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0)
- `margin`: 外边距
- `height`: 组件高度
- `iconTextSpacing`: 图标和文字之间的间距，默认 12.0
- `showRippleEffect`: 是否显示点击波纹效果，默认 true
- `borderRadius`: 圆角半径
- `border`: 边框
- `boxShadow`: 阴影
- `textAlign`: 文字对齐方式，默认 TextAlign.start
- `textOverflow`: 文字溢出处理方式，默认 TextOverflow.ellipsis
- `maxLines`: 最大行数，始终为1
- `enableTextSelection`: 是否启用文字选择，默认 false
- `selectionStyle`: 文字选择样式

## 预设样式

使用 PresetIconTextWidget 可以快速创建常用样式的图标文字组件：

```dart
PresetIconTextWidget(
  iconType: IconTextIconType.notification,
  text: 'CG00587621于14:54订阅了會長David',
  onTap: () => print('点击了通知'),
)
```

### 支持的图标类型
- notification: 通知图标（扬声器）
- subscription: 订阅图标
- message: 消息图标
- settings: 设置图标
- user: 用户图标
- phone: 电话图标
- email: 邮件图标
- location: 位置图标
- calendar: 日历图标
- star: 星标图标
- wallet: 钱包图标
- payment: 支付图标
- home: 首页图标
- search: 搜索图标
- favorite: 喜欢图标
- info: 信息图标
- warning: 警告图标
- error: 错误图标
- success: 成功图标

## 自定义样式示例

```dart
IconTextWidget(
  leftIcon: Icon(Icons.star, color: Color(0xFFFFD700)),
  text: '这是一个很长的文字内容，用来测试文字溢出处理',
  textStyle: TextStyle(
    fontSize: 18.0,
    color: Color(0xFF333333),
    fontWeight: FontWeight.bold,
  ),
  backgroundColor: Color(0xFFFFF8E1),
  padding: EdgeInsets.all(16.0),
  borderRadius: 12.0,
  boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      blurRadius: 8,
      offset: Offset(0, 4),
    ),
  ],
  onTap: () => print('点击了收藏'),
)
```

## 文字溢出处理示例

```dart
// 省略号处理（默认）
IconTextWidget(
  leftIcon: Icon(Icons.text_fields, color: Color(0xFF2196F3)),
  text: '这是一段很长的文字内容，用来测试文字溢出处理效果',
  textOverflow: TextOverflow.ellipsis,
  onTap: () => print('点击了长文字'),
)

// 淡出处理
IconTextWidget(
  leftIcon: Icon(Icons.text_fields, color: Color(0xFF2196F3)),
  text: '这是一段很长的文字内容，用来测试文字溢出处理效果',
  textOverflow: TextOverflow.fade,
  onTap: () => print('点击了长文字（淡出）'),
)

// 裁剪处理
IconTextWidget(
  leftIcon: Icon(Icons.text_fields, color: Color(0xFF2196F3)),
  text: '这是一段很长的文字内容，用来测试文字溢出处理效果',
  textOverflow: TextOverflow.clip,
  onTap: () => print('点击了长文字（裁剪）'),
)
```

## 文字选择示例

```dart
// 启用文字选择
IconTextWidget(
  leftIcon: Icon(Icons.content_copy, color: Color(0xFF9C27B0)),
  text: '这段文字可以选择和复制',
  enableTextSelection: true,
  onTap: () => print('点击了可选择的文字'),
)

// 禁用文字选择（默认）
IconTextWidget(
  leftIcon: Icon(Icons.text_fields, color: Color(0xFF9C27B0)),
  text: '这段文字不能选择',
  enableTextSelection: false,
  onTap: () => print('点击了不可选择的文字'),
)
```

## 模拟截图效果示例

```dart
Container(
  margin: EdgeInsets.symmetric(horizontal: 16.0),
  decoration: BoxDecoration(
    color: Color(0xFFF0F0F0),
    borderRadius: BorderRadius.circular(12.0),
  ),
  child: IconTextWidget(
    leftIcon: Icon(Icons.volume_up, color: Color(0xFF9C27B0)),
    text: 'CG00587621于14:54订阅了會長David',
    backgroundColor: Color(0xFFE1BEE7),
    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    borderRadius: 12.0,
    textStyle: TextStyle(
      fontSize: 14.0,
      color: Color(0xFF424242),
      fontWeight: FontWeight.normal,
    ),
    onTap: () => print('点击了订阅通知'),
  ),
)
```

## 特性说明

1. **单行显示**: 文字始终单行显示，不会换行
2. **溢出处理**: 支持多种文字溢出处理方式（省略号、淡出、裁剪）
3. **完全自定义**: 支持自定义图标、文字样式、背景、边框、阴影等
4. **组件化开发**: 高度可复用，易于维护
5. **解耦设计**: 组件独立，不依赖外部状态
6. **易用性**: 提供预设样式，开箱即用
7. **文字选择**: 支持启用/禁用文字选择功能
8. **响应式**: 支持点击事件和波纹效果
''';
}
