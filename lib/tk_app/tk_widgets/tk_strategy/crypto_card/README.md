# 加密货币信息卡片组件

基于截图设计的6框布局组件，用于显示加密货币交易信息。

## 组件特点

- **6框布局**：第一排（交易对、时间），第二排（价格、眼睛图标），第三排（级别、状态）
- **完全自定义**：支持所有样式属性的自定义
- **组件化设计**：数据、样式、组件分离，易于维护
- **高度复用**：支持多种预设样式和快速配置
- **响应式布局**：自适应不同尺寸
- **交互支持**：支持点击事件

## 文件结构

```
crypto_card/
├── crypto_info_data.dart      # 数据模型和样式配置
├── crypto_info_widget.dart    # 主组件和配置类
├── crypto_info_example.dart   # 使用示例和说明
├── test_crypto_info.dart      # 测试页面
└── README.md                  # 说明文档
```

## 快速开始

### 1. 基础使用

```dart
import 'package:your_app/tk_app/tk_widgets/tk_strategy/tk_strategy.dart';

// 使用默认样式
CryptoInfoWidget.defaultStyle()

// 或者
CryptoInfoWidget(
  data: CryptoInfoData.defaultData(),
  style: CryptoInfoStyle.defaultStyle(),
)
```

### 2. 自定义数据

```dart
CryptoInfoWidget(
  data: CryptoInfoData(
    tradingPair: 'BTCUSDT',
    timeText: '09/11 15:00',
    priceText: '\$114253.2',
    eyeIcon: Icon(Icons.visibility_outlined),
    levelText: '30M级别',
    statusText: '观望',
  ),
)
```

### 3. 自定义样式

```dart
CryptoInfoWidget(
  data: data,
  style: CryptoInfoStyle.defaultStyle().copyWith(
    width: 200.0,
    height: 120.0,
    tradingPairBackgroundColor: Color(0xFFE91E63),
    priceTextStyle: TextStyle(
      color: Color(0xFF1976D2),
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    ),
  ),
)
```

### 4. 快速配置

```dart
// 深色主题
CryptoInfoConfig.createDarkTheme(data: data)

// 紧凑样式
CryptoInfoConfig.createCompact(data: data)

// 自定义配置
CryptoInfoConfig.create(
  data: data,
  style: customStyle,
  onTap: () => print('点击了卡片'),
)
```

## 数据模型

### CryptoInfoData

```dart
class CryptoInfoData {
  final String tradingPair;    // 交易对文本（如：BTCUSDT）
  final String timeText;       // 时间文本（如：09/11 15:00）
  final String priceText;      // 价格文本（如：$114253.2）
  final Widget? eyeIcon;       // 眼睛图标
  final String levelText;      // 级别文本（如：30M级别）
  final String statusText;     // 状态文本（如：观望）
}
```

### CryptoInfoStyle

```dart
class CryptoInfoStyle {
  // 卡片整体样式
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? borderRadius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final List<BoxShadow>? boxShadow;

  // 各个框的样式配置
  final Color? tradingPairBackgroundColor;
  final double? tradingPairBorderRadius;
  final EdgeInsets? tradingPairPadding;
  final TextStyle? tradingPairTextStyle;
  
  // ... 其他框的样式配置
}
```

## 布局说明

组件采用3行2列的网格布局：

```
┌─────────────────┬─────────────────┐
│   交易对框      │     时间框      │  ← 第一排
├─────────────────┼─────────────────┤
│   价格框        │   眼睛图标框    │  ← 第二排
├─────────────────┼─────────────────┤
│   级别框        │     状态框      │  ← 第三排
└─────────────────┴─────────────────┘
```

## 示例

查看 `crypto_info_example.dart` 文件获取更多使用示例，包括：

- 基础示例
- 自定义样式示例
- 不同加密货币示例
- 主题样式示例
- 交互示例

## 测试

运行 `test_crypto_info.dart` 查看组件效果和功能测试。

## 注意事项

1. 所有文本都会自动处理溢出（ellipsis）
2. 组件支持响应式布局，会根据容器大小自动调整
3. 建议为每个框设置合适的内边距以确保文本显示完整
4. 眼睛图标是可选的，如果不提供会使用默认图标
