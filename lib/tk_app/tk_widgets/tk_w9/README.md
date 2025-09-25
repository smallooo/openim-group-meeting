# 用户信息卡片组件 (tk_w9)

一个高度可定制的用户信息卡片组件，完全按照截图设计实现，支持完全自定义样式和交互。

## 功能特性

- 🖼️ **头像显示** - 支持网络图片和本地图片
- 👤 **用户信息** - 姓名、订阅信息、工会信息、关注者数量
- ⭐ **评分系统** - 支持半星评分的星级显示
- 🏷️ **标签选择** - 可点击的标签，支持选中状态
- 📊 **统计数据** - 合约政策、观点、盈利凭证、策略胜率
- 💰 **打赏信息** - 打赏者头像列表和金额显示
- ⏰ **时间信息** - 最新策略时间和订阅费用
- 🎨 **完全自定义** - 所有样式和颜色都可自定义

## 文件结构

```
tk_w9/
├── user_profile_card_data.dart      # 数据模型
├── user_profile_card_widget.dart    # 主组件
├── user_profile_card_example.dart   # 示例页面
├── tk_w9.dart                      # 导出文件
└── README.md                       # 说明文档
```

## 使用方法

### 1. 导入组件

```dart
import 'package:your_app/tk_app/tk_widgets/tk_w9/tk_w9.dart';
```

### 2. 基本使用

```dart
UserProfileCardWidget(
  data: UserProfileCardData.defaultData(),
  onTagTap: (index) {
    print('选择了标签: $index');
  },
  onAvatarTap: () {
    print('点击了头像');
  },
)
```

### 3. 自定义数据

```dart
UserProfileCardWidget(
  data: UserProfileCardData(
    avatarUrl: 'https://example.com/avatar.jpg',
    name: '會長 David',
    subscriptionInfo: SubscriptionInfo(
      label: '订阅',
      current: 511,
      total: 520,
    ),
    guildName: 'LTT工会',
    followersCount: 6282,
    ratingInfo: RatingInfo(
      rating: 4.5,
      maxRating: 5,
    ),
    tags: ['长线', '中线'],
    selectedTagIndex: 0,
    contractPoliciesCount: 1715,
    viewpointsCount: 444,
    profitCertificatesCount: 3,
    strategyWinRate: 72.59,
    tipperAvatars: [
      'https://example.com/avatar1.jpg',
      'https://example.com/avatar2.jpg',
      'https://example.com/avatar3.jpg',
    ],
    totalTipsAmount: '274U',
    mainAmount: '218U',
    latestStrategyTime: '4分钟前',
    subscriptionFee: '订阅费/月',
  ),
)
```

### 4. 自定义样式

```dart
UserProfileCardWidget(
  data: data,
  // 卡片样式
  padding: EdgeInsets.all(20),
  borderRadius: 16,
  backgroundColor: Colors.grey[50],
  border: Border.all(color: Colors.blue),
  
  // 头像样式
  avatarSize: 70,
  avatarBorderRadius: 35,
  
  // 文本样式
  nameTextStyle: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  ),
  subscriptionLabelTextStyle: TextStyle(
    fontSize: 12,
    color: Colors.blue,
  ),
  subscriptionValueTextStyle: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  ),
  
  // 标签样式
  selectedTagBackgroundColor: Colors.blue.withOpacity(0.2),
  selectedTagTextColor: Colors.blue,
  unselectedTagBackgroundColor: Colors.grey.withOpacity(0.1),
  unselectedTagTextColor: Colors.grey[600],
  
  // 评分样式
  starColor: Colors.amber,
  emptyStarColor: Colors.grey,
  starSize: 16,
  
  // 交互回调
  onTagTap: (index) => print('标签: $index'),
  onAvatarTap: () => print('头像点击'),
  onTipsTap: () => print('打赏点击'),
  onGuildTap: () => print('工会点击'),
)
```

## 组件结构

根据截图标注的14个区域：

1. **头像** - 圆形头像图片
2. **姓名** - 用户名称文本
3. **订阅信息** - 标签和数值，颜色不同
4. **工会图标** - 可选的工会图标
5. **工会名称** - 工会名称文本
6. **关注者数量** - 关注者数量文本
7. **评分** - 5个星形图标，支持半星
8. **标签** - 可点击的标签按钮
9. **统计数据** - 合约政策、观点等，用竖线分割
10. **分割线** - 水平分割线
11. **打赏信息** - 打赏者头像和金额，带箭头
12. **主要金额** - 大号金额显示
13. **最新策略时间** - 带绿色圆点的时间信息
14. **订阅费用** - 带WiFi图标的费用信息

## 自定义选项

### 样式自定义
- 卡片：内边距、外边距、圆角、边框、背景色、阴影
- 头像：尺寸、圆角半径
- 文本：所有文本的字体、大小、颜色、粗细
- 标签：选中/未选中的背景色和文字颜色
- 评分：星形颜色、大小
- 分割线：颜色

### 交互自定义
- 标签点击回调
- 头像点击回调
- 打赏区域点击回调
- 工会信息点击回调

## 示例

查看 `user_profile_card_example.dart` 文件获取更多使用示例，包括：
- 默认样式
- 自定义样式
- 深色主题
- 紧凑样式

## 注意事项

1. 所有网络图片需要确保网络连接正常
2. 评分支持半星显示，会自动计算显示效果
3. 标签支持多选，通过 `selectedTagIndex` 控制当前选中
4. 统计数据会自动用竖线分割
5. 打赏者头像最多显示3个
6. 所有回调都是可选的，不提供时不会有点击效果
