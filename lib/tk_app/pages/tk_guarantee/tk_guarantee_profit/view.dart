import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';

import 'logic.dart';
import 'state.dart';

class TkGuaranteeProfitPage extends StatelessWidget {
  TkGuaranteeProfitPage({Key? key}) : super(key: key);

  final logic = Get.find<TkGuaranteeProfitLogic>();
  final state = Get.find<TkGuaranteeProfitLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return SafeArea(
            child: Obx(() {
              if (state.isLoading.value && state.yesterdayIncome.value.totalIncome == 0) {
                return const Center(child: CircularProgressIndicator());
              }

              return RefreshIndicator(
                onRefresh: () => logic.refreshData(),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeader(context),
                      _buildYesterdayIncome(context),
                      SizedBox(height: 16.h),
                      _buildTop10Income(context),
                      SizedBox(height: 16.h),
                      _buildHistoricalIncomeChart(context),
                      SizedBox(height: 16.h),
                      _buildTradingActivities(context),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }

  /// 构建顶部导航栏
  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        top: 8.h,
        bottom: 16.h,
      ),
      child: Row(
        children: [
          // 返回按钮
          IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Get.back(),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
          SizedBox(width: 8.w),
          // 标题
          Expanded(
            child: Text(
              '量化交易',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(width: 8.w),
          // 设置按钮
          IconButton(
            icon: Container(
              width: 24.w,
              height: 24.w,
              decoration: const BoxDecoration(
                color: Color(0xFF666666),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.settings,
                size: 16.sp,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              // TODO: 打开设置页面
            },
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
        ],
      ),
    );
  }

  /// 构建昨日收益部分
  Widget _buildYesterdayIncome(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 标题 - 在框外
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            '我的昨日收益',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 12.h),
        // 内容框
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: const Color(0xFFE0E0E0),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Obx(() {
            final income = state.yesterdayIncome.value;
            final sharePercentage = income.totalIncome > 0
                ? (income.shareIncome / income.totalIncome * 100)
                : 0.0;
            final contractPercentage = income.totalIncome > 0
                ? (income.contractIncome / income.totalIncome * 100)
                : 0.0;

            return Column(
              children: [
                // 图例 - 放在环形图上方
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildLegendItem(
                      const Color(0xFF90EE90),
                      '分润收入',
                    ),
                    SizedBox(width: 24.w),
                    _buildLegendItem(
                      const Color(0xFFFFB6C1),
                      '合约收入',
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                // 环形图
                Center(
                  child: SizedBox(
                    width: 120.w,
                    height: 120.w,
                    child: PieChart(
                      PieChartData(
                        sectionsSpace: 2,
                        centerSpaceRadius: 40,
                        sections: [
                          PieChartSectionData(
                            value: sharePercentage,
                            color: const Color(0xFF90EE90), // 浅绿色
                            title: '${sharePercentage.toStringAsFixed(2)}%',
                            radius: 25,
                            titleStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          PieChartSectionData(
                            value: contractPercentage,
                            color: const Color(0xFFFFB6C1), // 粉色
                            title: '${contractPercentage.toStringAsFixed(2)}%',
                            radius: 25,
                            titleStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
          SizedBox(height: 16.h),
          Obx(() {
            final totalIncome = state.yesterdayIncome.value.totalIncome;
            return Center(
              child: RichText(
                text: TextSpan(
                  text: '昨日总收益: ',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: '${totalIncome.toStringAsFixed(2)}USDT',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF90EE90),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
            ],
          ),
        ),
      ],
    );
  }

  /// 构建图例项
  Widget _buildLegendItem(Color color, String label) {
    return Row(
      children: [
        Container(
          width: 12.w,
          height: 12.w,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(2.r),
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  /// 构建TOP10收益列表
  Widget _buildTop10Income(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 标题 - 在框外
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            '昨日收益TOP10',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 12.h),
        // 内容框
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: const Color(0xFFE0E0E0),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Obx(() {
            final list = state.isTopListExpanded.value
                ? state.topIncomeList
                : state.topIncomeList.take(3).toList();

            return Column(
              children: list.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: Row(
                    children: [
                      Text(
                        '${index + 1}.',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: Text(
                          item.userId,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        '${item.income.toStringAsFixed(2)} USDT',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF90EE90),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            );
          }),
          if (state.topIncomeList.length > 3)
            Obx(() {
              return InkWell(
                onTap: () => logic.toggleTopListExpanded(),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        state.isTopListExpanded.value ? '收起' : '展开',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Icon(
                        state.isTopListExpanded.value
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        size: 20.sp,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),
              );
            }),
            ],
          ),
        ),
      ],
    );
  }

  /// 构建历史收益折线图
  Widget _buildHistoricalIncomeChart(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 标题 - 在框外
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            '我的历史收益情况',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 12.h),
        // 内容框
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: const Color(0xFFE0E0E0),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          // 时间周期选择器
          Obx(() {
            return Row(
              children: ['日', '周', '月'].map((period) {
                final isSelected = state.selectedTimePeriod.value == period;
                return Expanded(
                  child: GestureDetector(
                    onTap: () => logic.changeTimePeriod(period),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? const Color(0xFFE0E0E0)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Text(
                        period,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            );
          }),
          SizedBox(height: 16.h),
          // 折线图
          Obx(() {
            final data = state.historicalIncomeList;
            if (data.isEmpty) {
              return SizedBox(
                height: 200.h,
                child: const Center(child: Text('暂无数据')),
              );
            }

            return SizedBox(
              height: 200.h,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    horizontalInterval: 50,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: const Color(0xFFE0E0E0),
                        strokeWidth: 1,
                      );
                    },
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          if (value.toInt() >= 0 &&
                              value.toInt() < data.length) {
                            final date = data[value.toInt()].date;
                            return Padding(
                              padding: EdgeInsets.only(top: 8.h),
                              child: Text(
                                DateFormat('MM/dd').format(date),
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.black54,
                                ),
                              ),
                            );
                          }
                          return const Text('');
                        },
                        reservedSize: 30,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            value.toInt().toString(),
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: Colors.black54,
                            ),
                          );
                        },
                        reservedSize: 40,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(
                      color: const Color(0xFFE0E0E0),
                      width: 1,
                    ),
                  ),
                  minX: 0,
                  maxX: (data.length - 1).toDouble(),
                  minY: 0,
                  maxY: 250,
                  lineBarsData: [
                    // 当天收入 - 浅绿色
                    LineChartBarData(
                      spots: data.asMap().entries.map((entry) {
                        return FlSpot(
                          entry.key.toDouble(),
                          entry.value.dailyIncome,
                        );
                      }).toList(),
                      isCurved: true,
                      color: const Color(0xFF90EE90),
                      barWidth: 2,
                      isStrokeCapRound: true,
                      dotData: const FlDotData(show: false),
                      belowBarData: BarAreaData(show: false),
                    ),
                    // 合约收入 - 粉色
                    LineChartBarData(
                      spots: data.asMap().entries.map((entry) {
                        return FlSpot(
                          entry.key.toDouble(),
                          entry.value.contractIncome,
                        );
                      }).toList(),
                      isCurved: true,
                      color: const Color(0xFFFFB6C1),
                      barWidth: 2,
                      isStrokeCapRound: true,
                      dotData: const FlDotData(show: false),
                      belowBarData: BarAreaData(show: false),
                    ),
                    // 分润收入 - 深灰色
                    LineChartBarData(
                      spots: data.asMap().entries.map((entry) {
                        return FlSpot(
                          entry.key.toDouble(),
                          entry.value.shareIncome,
                        );
                      }).toList(),
                      isCurved: true,
                      color: const Color(0xFF666666),
                      barWidth: 2,
                      isStrokeCapRound: true,
                      dotData: const FlDotData(show: false),
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                ),
              ),
            );
          }),
          SizedBox(height: 16.h),
          // 图例
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLegendItem(
                const Color(0xFF90EE90),
                '当天收入',
              ),
              SizedBox(width: 16.w),
              _buildLegendItem(
                const Color(0xFFFFB6C1),
                '合约收入',
              ),
              SizedBox(width: 16.w),
              _buildLegendItem(
                const Color(0xFF666666),
                '分润收入',
              ),
            ],
          ),
            ],
          ),
        ),
      ],
    );
  }

  /// 构建交易活动表格
  Widget _buildTradingActivities(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 标题 - 在框外
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            '我的历史收益情况',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 12.h),
        // 内容框
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: const Color(0xFFE0E0E0),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 跟单开关 - 在框内
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '跟单开关',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                  Obx(() {
                    return Switch(
                      value: state.isFollowOrderEnabled.value,
                      onChanged: (value) => logic.toggleFollowOrder(),
                      activeColor: const Color(0xFF4CAF50),
                    );
                  }),
                ],
              ),
              SizedBox(height: 8.h),
          // 表格头部
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    '交易对',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    '跟单时间',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '状态',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    '执行结果',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          // 表格内容
          Obx(() {
            return Column(
              children: state.tradingActivityList.map((activity) {
                Color statusColor;
                switch (activity.status) {
                  case '结束':
                    statusColor = Colors.black;
                    break;
                  case '失败':
                    statusColor = Colors.red;
                    break;
                  case '进行中':
                    statusColor = const Color(0xFF90EE90);
                    break;
                  default:
                    statusColor = Colors.black;
                }

                return Container(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: const Color(0xFFE0E0E0),
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          activity.tradingPair,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          DateFormat('yyyy/MM/dd').format(activity.followTime),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          activity.status,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: statusColor,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          activity.executionResult,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            );
          }),
          SizedBox(height: 16.h),
          // 分页控件
          Obx(() {
            if (state.totalPages.value <= 1) {
              return const SizedBox.shrink();
            }

            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: state.currentPage.value > 1
                      ? () => logic.previousPage()
                      : null,
                  child: Text(
                    '上一页',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: state.currentPage.value > 1
                          ? Colors.black
                          : Colors.grey,
                    ),
                  ),
                ),
                SizedBox(width: 16.w),
                Text(
                  '${state.currentPage.value}/${state.totalPages.value}',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 16.w),
                TextButton(
                  onPressed: state.currentPage.value < state.totalPages.value
                      ? () => logic.nextPage()
                      : null,
                  child: Text(
                    '下一页',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: state.currentPage.value < state.totalPages.value
                          ? Colors.black
                          : Colors.grey,
                    ),
                  ),
                ),
              ],
            );
          }),
            ],
          ),
        ),
      ],
    );
  }
}
