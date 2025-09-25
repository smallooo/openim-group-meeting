# IconTextWidget 图标文字组件

一个高度可复用的图标文字组件，左边是图标，右边是文字（如果文字长，始终单行显示，不能右边溢出）。

## 特性

- ✅ **单行显示**: 文字始终单行显示，不会换行
- ✅ **溢出处理**: 支持多种文字溢出处理方式（省略号、淡出、裁剪）
- ✅ **完全自定义**: 支持自定义图标、文字样式、背景、边框、阴影等
- ✅ **组件化开发**: 高度可复用，易于维护
- ✅ **解耦设计**: 组件独立，不依赖外部状态
- ✅ **易用性**: 提供预设样式，开箱即用
- ✅ **文字选择**: 支持启用/禁用文字选择功能
- ✅ **响应式**: 支持点击事件和波纹效果

## 快速开始

### 基础用法

```dart
import 'package:tk_widgets/tk_strategy.dart';

IconTextWidget(
  leftIcon: Icon(Icons.notifications, color: Color(0xFF9C27B0)),
  text: 'CG00587621于14:54订阅了會長David',
  onTap: () => print('点击了通知'),
)
```

### 预设样式

```dart
PresetIconTextWidget(
  iconType: IconTextIconType.notification,
  text: 'CG00587621于14:54订阅了會長David',
  onTap: () => print('点击了通知'),
)
```

## 文件结构

```
tk_strategy/
├── icon_text_widget.dart      # 主组件文件
├── icon_text_example.dart     # 示例文件
├── tk_strategy.dart          # 导出文件
├── test_icon_text.dart       # 测试文件
└── README.md                 # 说明文档
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

## 支持的图标类型

- `notification`: 通知图标（扬声器）
- `subscription`: 订阅图标
- `message`: 消息图标
- `settings`: 设置图标
- `user`: 用户图标
- `phone`: 电话图标
- `email`: 邮件图标
- `location`: 位置图标
- `calendar`: 日历图标
- `star`: 星标图标
- `wallet`: 钱包图标
- `payment`: 支付图标
- `home`: 首页图标
- `search`: 搜索图标
- `favorite`: 喜欢图标
- `info`: 信息图标
- `warning`: 警告图标
- `error`: 错误图标
- `success`: 成功图标

## 使用示例

### 1. 基础用法

```dart
IconTextWidget(
  leftIcon: Icon(Icons.notifications, color: Color(0xFF9C27B0)),
  text: 'CG00587621于14:54订阅了會長David',
  onTap: () => print('点击了通知'),
)
```

### 2. 自定义样式

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

### 3. 文字溢出处理

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
```

### 4. 文字选择

```dart
// 启用文字选择
IconTextWidget(
  leftIcon: Icon(Icons.content_copy, color: Color(0xFF9C27B0)),
  text: '这段文字可以选择和复制',
  enableTextSelection: true,
  onTap: () => print('点击了可选择的文字'),
)
```

### 5. 模拟截图效果

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

## 运行示例

要查看完整的示例，可以运行：

```dart
import 'package:tk_widgets/tk_strategy.dart';

// 在你的应用中添加
IconTextExample()
```

## 注意事项

1. 文字始终单行显示，不会换行
2. 当文字过长时，会根据 `textOverflow` 属性处理溢出
3. 组件支持完全自定义，包括图标、文字样式、背景、边框、阴影等
4. 提供预设样式，可以快速创建常用样式的组件
5. 支持点击事件和波纹效果
6. 支持文字选择功能（可选）

## 更新日志

### v1.0.0
- 初始版本
- 支持基础图标文字组件
- 支持预设样式
- 支持完全自定义
- 支持文字溢出处理
- 支持文字选择
- 支持点击事件和波纹效果
