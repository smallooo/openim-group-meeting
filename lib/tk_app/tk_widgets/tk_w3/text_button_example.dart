import 'package:flutter/material.dart';
import 'text_button_widget.dart';

/// 文字按钮组件使用示例
class TextButtonExample extends StatelessWidget {
  const TextButtonExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('文字按钮组件示例'),
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
                TextButtonWidget(
                  text: '切换账号',
                  onTap: () => _showSnackBar(context, '点击了切换账号'),
                ),
                TextButtonWidget(
                  text: '登录',
                  onTap: () => _showSnackBar(context, '点击了登录'),
                ),
                TextButtonWidget(
                  text: '注册',
                  onTap: () => _showSnackBar(context, '点击了注册'),
                ),
              ],
            ),

            // 文字对齐示例
            _buildSection(
              '文字对齐',
              [
                TextButtonWidget(
                  text: '居左对齐',
                  textAlign: TextAlign.left,
                  width: 200.0,
                  onTap: () => _showSnackBar(context, '点击了居左对齐'),
                ),
                TextButtonWidget(
                  text: '居中对齐',
                  textAlign: TextAlign.center,
                  width: 200.0,
                  onTap: () => _showSnackBar(context, '点击了居中对齐'),
                ),
                TextButtonWidget(
                  text: '居右对齐',
                  textAlign: TextAlign.right,
                  width: 200.0,
                  onTap: () => _showSnackBar(context, '点击了居右对齐'),
                ),
              ],
            ),

            // 预设样式示例
            _buildSection(
              '预设样式',
              [
                PresetTextButtonWidget(
                  text: '主要按钮',
                  buttonType: TextButtonType.primary,
                  onTap: () => _showSnackBar(context, '点击了主要按钮'),
                ),
                PresetTextButtonWidget(
                  text: '次要按钮',
                  buttonType: TextButtonType.secondary,
                  onTap: () => _showSnackBar(context, '点击了次要按钮'),
                ),
                PresetTextButtonWidget(
                  text: '轮廓按钮',
                  buttonType: TextButtonType.outline,
                  onTap: () => _showSnackBar(context, '点击了轮廓按钮'),
                ),
                PresetTextButtonWidget(
                  text: '文字按钮',
                  buttonType: TextButtonType.text,
                  onTap: () => _showSnackBar(context, '点击了文字按钮'),
                ),
              ],
            ),

            // 不同大小示例
            _buildSection(
              '不同大小',
              [
                PresetTextButtonWidget(
                  text: '小按钮',
                  buttonSize: TextButtonSize.small,
                  onTap: () => _showSnackBar(context, '点击了小按钮'),
                ),
                PresetTextButtonWidget(
                  text: '中等按钮',
                  buttonSize: TextButtonSize.medium,
                  onTap: () => _showSnackBar(context, '点击了中等按钮'),
                ),
                PresetTextButtonWidget(
                  text: '大按钮',
                  buttonSize: TextButtonSize.large,
                  onTap: () => _showSnackBar(context, '点击了大按钮'),
                ),
              ],
            ),

            // 自定义样式示例
            _buildSection(
              '自定义样式',
              [
                TextButtonWidget(
                  text: '自定义颜色',
                  backgroundColor: Colors.purple,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  borderRadius: 20.0,
                  onTap: () => _showSnackBar(context, '点击了自定义颜色'),
                ),
                TextButtonWidget(
                  text: '渐变背景',
                  gradient: const LinearGradient(
                    colors: [Colors.orange, Colors.red],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  borderRadius: 15.0,
                  onTap: () => _showSnackBar(context, '点击了渐变背景'),
                ),
                TextButtonWidget(
                  text: '带边框',
                  backgroundColor: Colors.transparent,
                  borderColor: Colors.green,
                  borderWidth: 2.0,
                  textStyle: const TextStyle(
                    color: Colors.green,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  borderRadius: 12.0,
                  onTap: () => _showSnackBar(context, '点击了带边框'),
                ),
                TextButtonWidget(
                  text: '带阴影',
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  borderRadius: 10.0,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  onTap: () => _showSnackBar(context, '点击了带阴影'),
                ),
              ],
            ),

            // 禁用状态示例
            _buildSection(
              '禁用状态',
              [
                TextButtonWidget(
                  text: '禁用按钮',
                  enabled: false,
                  onTap: () => _showSnackBar(context, '点击了禁用按钮'),
                ),
                PresetTextButtonWidget(
                  text: '禁用主要按钮',
                  buttonType: TextButtonType.primary,
                  enabled: false,
                  onTap: () => _showSnackBar(context, '点击了禁用主要按钮'),
                ),
                PresetTextButtonWidget(
                  text: '禁用轮廓按钮',
                  buttonType: TextButtonType.outline,
                  enabled: false,
                  onTap: () => _showSnackBar(context, '点击了禁用轮廓按钮'),
                ),
              ],
            ),

            // 加载状态示例
            _buildSection(
              '加载状态',
              [
                TextButtonWidget(
                  text: '加载中',
                  isLoading: true,
                  onTap: () => _showSnackBar(context, '点击了加载中'),
                ),
                PresetTextButtonWidget(
                  text: '主要按钮加载',
                  buttonType: TextButtonType.primary,
                  isLoading: true,
                  onTap: () => _showSnackBar(context, '点击了主要按钮加载'),
                ),
                PresetTextButtonWidget(
                  text: '轮廓按钮加载',
                  buttonType: TextButtonType.outline,
                  isLoading: true,
                  onTap: () => _showSnackBar(context, '点击了轮廓按钮加载'),
                ),
              ],
            ),

            // 禁用波纹效果示例
            _buildSection(
              '禁用波纹效果',
              [
                TextButtonWidget(
                  text: '有波纹效果（默认）',
                  onTap: () => _showSnackBar(context, '点击了有波纹效果'),
                ),
                TextButtonWidget(
                  text: '无波纹效果',
                  showRippleEffect: false,
                  onTap: () => _showSnackBar(context, '点击了无波纹效果'),
                ),
                PresetTextButtonWidget(
                  text: '预设无波纹',
                  buttonType: TextButtonType.primary,
                  showRippleEffect: false,
                  onTap: () => _showSnackBar(context, '点击了预设无波纹'),
                ),
              ],
            ),

            // 特殊形状示例
            _buildSection(
              '特殊形状',
              [
                TextButtonWidget(
                  text: '圆角按钮',
                  borderRadius: 25.0,
                  onTap: () => _showSnackBar(context, '点击了圆角按钮'),
                ),
                TextButtonWidget(
                  text: '方形按钮',
                  borderRadius: 0.0,
                  onTap: () => _showSnackBar(context, '点击了方形按钮'),
                ),
                TextButtonWidget(
                  text: '胶囊按钮',
                  borderRadius: 30.0,
                  height: 40.0,
                  onTap: () => _showSnackBar(context, '点击了胶囊按钮'),
                ),
              ],
            ),

            // 固定尺寸示例
            _buildSection(
              '固定尺寸',
              [
                TextButtonWidget(
                  text: '固定宽度',
                  width: 150.0,
                  onTap: () => _showSnackBar(context, '点击了固定宽度'),
                ),
                TextButtonWidget(
                  text: '固定高度',
                  height: 50.0,
                  onTap: () => _showSnackBar(context, '点击了固定高度'),
                ),
                TextButtonWidget(
                  text: '固定尺寸',
                  width: 120.0,
                  height: 45.0,
                  onTap: () => _showSnackBar(context, '点击了固定尺寸'),
                ),
              ],
            ),

            // 左右边距示例
            _buildSection(
              '左右边距',
              [
                // 使用 margin 属性控制边距
                TextButtonWidget(
                  text: '左右边距 16px',
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  onTap: () => _showSnackBar(context, '点击了左右边距 16px'),
                ),
                TextButtonWidget(
                  text: '左右边距 32px',
                  margin: const EdgeInsets.symmetric(horizontal: 32.0),
                  onTap: () => _showSnackBar(context, '点击了左右边距 32px'),
                ),
                TextButtonWidget(
                  text: '左右边距 48px',
                  margin: const EdgeInsets.symmetric(horizontal: 48.0),
                  onTap: () => _showSnackBar(context, '点击了左右边距 48px'),
                ),
                // 使用 Container 包装控制边距
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: TextButtonWidget(
                    text: 'Container 包装边距',
                    onTap: () => _showSnackBar(context, '点击了Container包装边距'),
                  ),
                ),
                // 使用 Padding 包装控制边距
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextButtonWidget(
                    text: 'Padding 包装边距',
                    onTap: () => _showSnackBar(context, '点击了Padding包装边距'),
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
class TextButtonWidgetUsage {
  static const String usage = '''
# TextButtonWidget 使用说明

## 基础用法

```dart
// 基础按钮
TextButtonWidget(
  text: '切换账号',
  onTap: () => print('点击了切换账号'),
)

// 自定义样式
TextButtonWidget(
  text: '自定义按钮',
  backgroundColor: Colors.blue,
  textStyle: TextStyle(color: Colors.white),
  borderRadius: 20.0,
  onTap: () => print('点击了自定义按钮'),
)
```

## 主要属性

### 必需属性
- `text`: 按钮文字内容

### 可选属性
- `textStyle`: 文字样式
- `textAlign`: 文字对齐方式，默认 TextAlign.center
- `onTap`: 点击事件回调
- `backgroundColor`: 背景颜色
- `borderColor`: 边框颜色
- `borderWidth`: 边框宽度
- `borderRadius`: 圆角半径，默认 8.0
- `padding`: 内边距，默认 EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0)
- `margin`: 外边距
- `width`: 宽度
- `height`: 高度
- `minWidth`: 最小宽度
- `minHeight`: 最小高度
- `enabled`: 是否启用按钮，默认 true
- `disabledBackgroundColor`: 禁用时的背景颜色
- `disabledTextColor`: 禁用时的文字颜色
- `showRippleEffect`: 是否显示点击波纹效果，默认 true
- `rippleColor`: 波纹效果颜色
- `shape`: 按钮形状
- `boxShadow`: 阴影效果
- `gradient`: 渐变背景
- `isLoading`: 是否显示加载状态，默认 false
- `loadingWidget`: 加载指示器
- `loadingSize`: 加载指示器大小，默认 16.0
- `loadingColor`: 加载指示器颜色

## 文字对齐

```dart
// 居左对齐
TextButtonWidget(
  text: '居左对齐',
  textAlign: TextAlign.left,
  onTap: () => print('点击了居左对齐'),
)

// 居中对齐
TextButtonWidget(
  text: '居中对齐',
  textAlign: TextAlign.center,
  onTap: () => print('点击了居中对齐'),
)

// 居右对齐
TextButtonWidget(
  text: '居右对齐',
  textAlign: TextAlign.right,
  onTap: () => print('点击了居右对齐'),
)
```

## 预设样式

使用 PresetTextButtonWidget 可以快速创建常用样式的按钮：

```dart
// 主要按钮
PresetTextButtonWidget(
  text: '主要按钮',
  buttonType: TextButtonType.primary,
  onTap: () => print('点击了主要按钮'),
)

// 次要按钮
PresetTextButtonWidget(
  text: '次要按钮',
  buttonType: TextButtonType.secondary,
  onTap: () => print('点击了次要按钮'),
)

// 轮廓按钮
PresetTextButtonWidget(
  text: '轮廓按钮',
  buttonType: TextButtonType.outline,
  onTap: () => print('点击了轮廓按钮'),
)

// 文字按钮
PresetTextButtonWidget(
  text: '文字按钮',
  buttonType: TextButtonType.text,
  onTap: () => print('点击了文字按钮'),
)
```

### 支持的按钮类型
- `primary`: 主要按钮（蓝色背景，白色文字）
- `secondary`: 次要按钮（浅蓝色背景，蓝色文字）
- `outline`: 轮廓按钮（透明背景，蓝色边框和文字）
- `text`: 文字按钮（透明背景，蓝色文字）

### 支持的按钮大小
- `small`: 小按钮（32px 高度）
- `medium`: 中等按钮（40px 高度）
- `large`: 大按钮（48px 高度）

## 自定义样式示例

```dart
TextButtonWidget(
  text: '自定义按钮',
  backgroundColor: Colors.purple,
  textStyle: TextStyle(
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  ),
  borderRadius: 20.0,
  boxShadow: [
    BoxShadow(
      color: Colors.purple.withOpacity(0.3),
      blurRadius: 8,
      offset: Offset(0, 4),
    ),
  ],
  onTap: () => print('点击了自定义按钮'),
)
```

## 渐变背景示例

```dart
TextButtonWidget(
  text: '渐变按钮',
  gradient: LinearGradient(
    colors: [Colors.orange, Colors.red],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  textStyle: TextStyle(
    color: Colors.white,
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
  ),
  borderRadius: 15.0,
  onTap: () => print('点击了渐变按钮'),
)
```

## 加载状态示例

```dart
TextButtonWidget(
  text: '加载中',
  isLoading: true,
  onTap: () => print('点击了加载中'),
)
```

## 禁用状态示例

```dart
TextButtonWidget(
  text: '禁用按钮',
  enabled: false,
  onTap: () => print('点击了禁用按钮'),
)
```

## 左右边距控制示例

```dart
// 方法1：使用 margin 属性
TextButtonWidget(
  text: '左右边距 16px',
  margin: EdgeInsets.symmetric(horizontal: 16.0),
  onTap: () => print('点击了按钮'),
)

// 方法2：使用 Container 包装
Container(
  margin: EdgeInsets.symmetric(horizontal: 24.0),
  child: TextButtonWidget(
    text: 'Container 包装边距',
    onTap: () => print('点击了按钮'),
  ),
)

// 方法3：使用 Padding 包装
Padding(
  padding: EdgeInsets.symmetric(horizontal: 20.0),
  child: TextButtonWidget(
    text: 'Padding 包装边距',
    onTap: () => print('点击了按钮'),
  ),
)
```
''';
}
