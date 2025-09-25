# 用户资料卡片组件 (ProfileCardWidget)

一个高度可定制的用户资料卡片组件，完全按照您提供的截图设计实现。

## 功能特性

- 🎨 **完全可定制** - 支持所有样式属性的自定义
- 📱 **响应式设计** - 适配不同屏幕尺寸
- 🔧 **组件化开发** - 高复用性，易维护
- 🎯 **解耦设计** - 数据与UI分离
- 📦 **易于使用** - 简单的API设计

## 组件结构

根据您的截图标注，组件包含以下7个区域：

1. **头像区域** - 圆形头像图片
2. **职位文本** - 用户职位/头衔
3. **关注按钮** - 小加号图标
4. **姓名文本** - 用户姓名
5. **详情按钮** - 紫色椭圆形按钮
6. **标签区域** - 可选择的标签按钮
7. **统计区域** - 三个统计数据（策略、观点、胜率）

## 文件结构

```
tk_w8/
├── profile_card_data.dart      # 数据模型
├── profile_card_widget.dart    # 主组件
├── profile_card_example.dart   # 示例页面
├── profile_card_test.dart      # 测试页面
├── tk_w8.dart                  # 导出文件
└── README.md                   # 说明文档
```

## 使用方法

### 1. 基本使用

```dart
import 'package:your_app/tk_app/tk_widgets/tk_w8/tk_w8.dart';

ProfileCardWidget(
  data: ProfileCardData.defaultData(),
  onTagTap: (index) {
    print('选择了标签: $index');
  },
  onDetailTap: () {
    print('点击了详情按钮');
  },
)
```

### 2. 自定义数据

```dart
ProfileCardWidget(
  data: ProfileCardData(
    avatarUrl: 'https://example.com/avatar.jpg',
    name: 'Alice',
    title: '分析师',
    followCount: 1234,
    tags: ['长线', '价值投资'],
    selectedTagIndex: 0,
    strategyCount: 256,
    viewpointCount: 89,
    winRate: 85.5,
  ),
)
```

### 3. 自定义样式

```dart
ProfileCardWidget(
  data: data,
  padding: EdgeInsets.all(20),
  borderRadius: 16,
  backgroundColor: Colors.grey[50],
  avatarSize: 70,
  nameTextStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  ),
  selectedTagBackgroundColor: Colors.blue.withOpacity(0.2),
  detailButtonStyle: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
  ),
)
```

## 自定义属性

### 布局属性
- `padding` - 卡片内边距
- `margin` - 卡片外边距
- `borderRadius` - 卡片圆角半径
- `border` - 卡片边框
- `backgroundColor` - 卡片背景色
- `boxShadow` - 卡片阴影

### 头像属性
- `avatarSize` - 头像尺寸
- `avatarBorderRadius` - 头像圆角半径

### 文本样式
- `nameTextStyle` - 姓名文本样式
- `titleTextStyle` - 职位文本样式
- `followCountTextStyle` - 关注数文本样式
- `tagTextStyle` - 标签文本样式
- `statisticTitleTextStyle` - 统计标题文本样式
- `statisticValueTextStyle` - 统计数值文本样式

### 标签样式
- `selectedTagBackgroundColor` - 选中标签背景色
- `unselectedTagBackgroundColor` - 未选中标签背景色
- `selectedTagTextColor` - 选中标签文字颜色
- `unselectedTagTextColor` - 未选中标签文字颜色

### 按钮样式
- `detailButtonStyle` - 详情按钮样式

### 回调函数
- `onFollowTap` - 关注按钮点击回调
- `onTagTap` - 标签点击回调
- `onDetailTap` - 详情按钮点击回调
- `onAvatarTap` - 头像点击回调

## 示例页面

运行 `ProfileCardExample` 查看各种样式示例：

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => ProfileCardExample(),
  ),
);
```

## 测试页面

运行 `ProfileCardTest` 进行基本功能测试：

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => ProfileCardTest(),
  ),
);
```

## 注意事项

1. 头像图片使用 `NetworkImage`，请确保网络连接正常
2. 标签选择状态需要外部管理，通过 `selectedTagIndex` 属性控制
3. 所有回调函数都是可选的，根据需要实现
4. 组件支持完全自定义，所有样式属性都有默认值
