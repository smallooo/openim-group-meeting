import 'package:flutter/material.dart';
import 'avatar_list_item_widget.dart';

/// 头像列表项组件使用示例
class AvatarListItemExample extends StatelessWidget {
  const AvatarListItemExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('头像列表项组件示例'),
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
                AvatarListItemWidget(
                  leftText: '头像',
                  avatarPath: 'assets/images/avatar.png', // 假设有这个图片
                  onTap: () => _showSnackBar(context, '点击了头像'),
                ),
                AvatarListItemWidget(
                  leftText: '用户名',
                  middleText: '张三',
                  onTap: () => _showSnackBar(context, '点击了用户名'),
                ),
                AvatarListItemWidget(
                  leftText: '设置',
                  middleText: '已开启',
                  showArrow: false,
                  onTap: () => _showSnackBar(context, '点击了设置'),
                ),
              ],
            ),

            // 头像样式示例
            _buildSection(
              '头像样式',
              [
                AvatarListItemWidget(
                  leftText: '圆形头像',
                  avatarPath: 'assets/images/avatar.png',
                  avatarShape: BoxShape.circle,
                  onTap: () => _showSnackBar(context, '点击了圆形头像'),
                ),
                AvatarListItemWidget(
                  leftText: '方形头像',
                  avatarPath: 'assets/images/avatar.png',
                  avatarShape: BoxShape.rectangle,
                  onTap: () => _showSnackBar(context, '点击了方形头像'),
                ),
                AvatarListItemWidget(
                  leftText: '带边框头像',
                  avatarPath: 'assets/images/avatar.png',
                  avatarBorderWidth: 2.0,
                  avatarBorderColor: Colors.blue,
                  onTap: () => _showSnackBar(context, '点击了带边框头像'),
                ),
              ],
            ),

            // 不同大小示例
            _buildSection(
              '不同大小',
              [
                AvatarListItemWidget(
                  leftText: '小头像',
                  avatarPath: 'assets/images/avatar.png',
                  avatarSize: 30.0,
                  onTap: () => _showSnackBar(context, '点击了小头像'),
                ),
                AvatarListItemWidget(
                  leftText: '标准头像',
                  avatarPath: 'assets/images/avatar.png',
                  avatarSize: 40.0,
                  onTap: () => _showSnackBar(context, '点击了标准头像'),
                ),
                AvatarListItemWidget(
                  leftText: '大头像',
                  avatarPath: 'assets/images/avatar.png',
                  avatarSize: 50.0,
                  onTap: () => _showSnackBar(context, '点击了大头像'),
                ),
              ],
            ),

            // 自定义 Widget 示例
            _buildSection(
              '自定义 Widget',
              [
                AvatarListItemWidget(
                  leftText: '自定义图标',
                  avatarWidget: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                  onTap: () => _showSnackBar(context, '点击了自定义图标'),
                ),
                AvatarListItemWidget(
                  leftText: '渐变背景',
                  avatarWidget: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.purple, Colors.pink],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                  onTap: () => _showSnackBar(context, '点击了渐变背景'),
                ),
              ],
            ),

            // 预设样式示例
            _buildSection(
              '预设样式',
              [
                PresetAvatarListItemWidget(
                  leftText: '头像',
                  contentType: AvatarContentType.image,
                  contentValue: 'assets/images/avatar.png',
                  onTap: () => _showSnackBar(context, '点击了预设头像'),
                ),
                PresetAvatarListItemWidget(
                  leftText: '用户名',
                  contentType: AvatarContentType.text,
                  contentValue: '李四',
                  onTap: () => _showSnackBar(context, '点击了预设用户名'),
                ),
                PresetAvatarListItemWidget(
                  leftText: '自定义内容',
                  contentType: AvatarContentType.widget,
                  contentWidget: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                  onTap: () => _showSnackBar(context, '点击了自定义内容'),
                ),
              ],
            ),

            // 带分割线示例
            _buildSection(
              '带分割线',
              [
                AvatarListItemWidget(
                  leftText: '个人资料',
                  avatarPath: 'assets/images/avatar.png',
                  showDivider: true,
                  onTap: () => _showSnackBar(context, '点击了个人资料'),
                ),
                AvatarListItemWidget(
                  leftText: '账户设置',
                  middleText: '已绑定',
                  showDivider: true,
                  onTap: () => _showSnackBar(context, '点击了账户设置'),
                ),
                AvatarListItemWidget(
                  leftText: '隐私设置',
                  middleText: '公开',
                  showDivider: false,
                  onTap: () => _showSnackBar(context, '点击了隐私设置'),
                ),
              ],
            ),

            // 禁用波纹效果示例
            _buildSection(
              '禁用波纹效果',
              [
                AvatarListItemWidget(
                  leftText: '有波纹效果（默认）',
                  avatarPath: 'assets/images/avatar.png',
                  onTap: () => _showSnackBar(context, '点击了有波纹效果'),
                ),
                AvatarListItemWidget(
                  leftText: '无波纹效果',
                  avatarPath: 'assets/images/avatar.png',
                  showRippleEffect: false,
                  onTap: () => _showSnackBar(context, '点击了无波纹效果'),
                ),
                AvatarListItemWidget(
                  leftText: '无箭头',
                  middleText: '只读内容',
                  showArrow: false,
                  showRippleEffect: false,
                  onTap: () => _showSnackBar(context, '点击了无箭头'),
                ),
              ],
            ),

            // 自定义样式示例
            _buildSection(
              '自定义样式',
              [
                AvatarListItemWidget(
                  leftText: '特殊样式',
                  avatarPath: 'assets/images/avatar.png',
                  leftTextStyle: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                  middleTextStyle: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                  ),
                  backgroundColor: const Color(0xFFF0F8FF),
                  padding: const EdgeInsets.all(16.0),
                  onTap: () => _showSnackBar(context, '点击了特殊样式'),
                ),
                AvatarListItemWidget(
                  leftText: '大尺寸',
                  avatarPath: 'assets/images/avatar.png',
                  height: 80.0,
                  avatarSize: 60.0,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                  onTap: () => _showSnackBar(context, '点击了大尺寸'),
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
class AvatarListItemWidgetUsage {
  static const String usage = '''
# AvatarListItemWidget 使用说明

## 基础用法

```dart
// 使用头像图片
AvatarListItemWidget(
  leftText: '头像',
  avatarPath: 'assets/images/avatar.png',
  onTap: () => print('点击了头像'),
)

// 使用中间文字
AvatarListItemWidget(
  leftText: '用户名',
  middleText: '张三',
  onTap: () => print('点击了用户名'),
)

// 不显示箭头
AvatarListItemWidget(
  leftText: '设置',
  middleText: '已开启',
  showArrow: false,
  onTap: () => print('点击了设置'),
)
```

## 主要属性

### 必需属性
- `leftText`: 左侧显示的文字内容

### 可选属性
- `leftTextStyle`: 左侧文字样式
- `avatarPath`: 中间头像图片路径
- `avatarWidget`: 中间头像 Widget
- `middleText`: 中间文字内容（当不使用头像时）
- `middleTextStyle`: 中间文字样式
- `avatarSize`: 头像大小，默认 40.0
- `avatarShape`: 头像形状，默认 BoxShape.circle
- `avatarBorderWidth`: 头像边框宽度
- `avatarBorderColor`: 头像边框颜色
- `showArrow`: 是否显示右侧箭头，默认 true
- `arrowIcon`: 右侧箭头图标
- `arrowSize`: 右侧箭头大小，默认 16.0
- `arrowColor`: 右侧箭头颜色
- `onTap`: 点击事件回调
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

使用 PresetAvatarListItemWidget 可以快速创建常用样式的头像列表项：

```dart
// 使用图片
PresetAvatarListItemWidget(
  leftText: '头像',
  contentType: AvatarContentType.image,
  contentValue: 'assets/images/avatar.png',
  onTap: () => print('点击了头像'),
)

// 使用文字
PresetAvatarListItemWidget(
  leftText: '用户名',
  contentType: AvatarContentType.text,
  contentValue: '李四',
  onTap: () => print('点击了用户名'),
)

// 使用自定义 Widget
PresetAvatarListItemWidget(
  leftText: '自定义内容',
  contentType: AvatarContentType.widget,
  contentWidget: Icon(Icons.person),
  onTap: () => print('点击了自定义内容'),
)
```

### 支持的内容类型
- `image`: 图片类型
- `text`: 文字类型
- `widget`: 自定义 Widget 类型

## 自定义样式示例

```dart
AvatarListItemWidget(
  leftText: '特殊样式',
  avatarPath: 'assets/images/avatar.png',
  leftTextStyle: TextStyle(
    fontSize: 18.0,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  ),
  middleTextStyle: TextStyle(
    fontSize: 16.0,
    color: Colors.green,
    fontWeight: FontWeight.w500,
  ),
  backgroundColor: Color(0xFFF0F8FF),
  padding: EdgeInsets.all(16.0),
  onTap: () => print('点击了特殊样式'),
)
```

## 带分割线示例

```dart
AvatarListItemWidget(
  leftText: '个人资料',
  avatarPath: 'assets/images/avatar.png',
  showDivider: true,
  onTap: () => print('点击了个人资料'),
)
```

## 禁用波纹效果示例

```dart
AvatarListItemWidget(
  leftText: '无波纹效果',
  avatarPath: 'assets/images/avatar.png',
  showRippleEffect: false,
  onTap: () => print('点击了无波纹效果'),
)
```
''';
}
