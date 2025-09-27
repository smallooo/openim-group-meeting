import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';

import '../../../../tk_widgets/tk_strategy/icon_text/icon_text_widget.dart';
import '../../../../tk_widgets/tk_strategy/crypto_card/crypto_card_widget.dart';
import '../../../../tk_widgets/tk_w6/view_more_button_widget.dart';
import '../../../../tk_widgets/tk_w7/unlock_card_widget.dart';
import '../../../../tk_widgets/tk_strategy/crypto_info/crypto_info_widget.dart';
import '../../../../tk_widgets/tk_strategy/crypto_info/crypto_info_data.dart';
import '../../../../tk_widgets/tk_w8/tk_w8.dart';
import '../../../../tk_widgets/tk_w9/tk_w9.dart';
import '../../strategy_member_apply/view.dart';
import '../../strategy_member_follow/view.dart';
import '../../strategy_member_profile/view.dart';
import '../../strategy_my/view.dart';
import '../../strategy_union_member_profile/view.dart';
import 'logic.dart';
import 'safe_profile_card_widget.dart';

class StrategyHomePagePage extends StatefulWidget {
  StrategyHomePagePage({Key? key}) : super(key: key);

  @override
  State<StrategyHomePagePage> createState() => _StrategyHomePagePageState();
}

class _StrategyHomePagePageState extends State<StrategyHomePagePage> {
  final logic = Get.find<StrategyHomePageLogic>();
  final state = Get.find<StrategyHomePageLogic>().state;
  
  // Tab 状态管理
  int selectedTabIndex = 0; // 0: 合约策略, 1: 现货策略

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20.w,
          ),
          onPressed: () => Get.back(),
        ),
        title: Text(
          '策略',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
        actions: [
          // 策略申请图标
          // IconButton(
          //   icon: Icon(
          //     Icons.person_add_outlined,
          //     color: Colors.black,
          //     size: 24.w,
          //   ),
          //   onPressed: () {
          //     Get.to(() => StrategyMemberApplyPage());
          //   },
          // ),

          // 策略申请图标
          // IconButton(
          //   icon: Icon(
          //     Icons.person_add_outlined,
          //     color: Colors.black,
          //     size: 24.w,
          //   ),
          //   onPressed: () {
          //     Get.to(() => StrategyUnionMemberProfilePage());
          //     // Get.to(() => StrategyMemberFollowPage());
          //   },
          // ),


          // 成员资料图标



          IconButton(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
              size: 24.w,
            ),
            onPressed: () {
              logic.goToTraderPage();
            },
          ),
          // 我的策略图标
          IconButton(
            icon: Icon(
              Icons.folder_outlined,
              color: Colors.black,
              size: 24.w,
            ),
            onPressed: () {
              logic.goToMyStrategiesPage();
            },
          ),
          SizedBox(width: 8.w), // 右边距
        ],
      ),
      backgroundColor: Colors.white,
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //     // 通知区域  
      //     // Container(
      //     //   margin: const EdgeInsets.symmetric(horizontal: 16.0),
      //     //   decoration: BoxDecoration(
      //     //     color: const Color(0xFFF0F0F0),
      //     //     borderRadius: BorderRadius.circular(12.0),
      //     //   ),
      //     //   child: IconTextWidget(
      //     //     leftIcon: ImageRes.tkStrategyHomeNotice.toImage,
      //     //     text: 'CG00587621于14:54订阅了會長David',
      //     //     backgroundColor: const Color(0xFFE1BEE7),
      //     //     padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      //     //     borderRadius: 5.0,
      //     //     height: 42,
      //     //     textStyle: const TextStyle(
      //     //       fontSize: 14.0,
      //     //       color: Color(0xFF333333),
      //     //       fontWeight: FontWeight.normal,
      //     //     ),
      //     //     onTap: () => _showSnackBar(context, '点击了订阅通知'),
      //     //   ),
      //     // ),
      //     // SizedBox(height: 20.h),
      //     // 两个加密货币卡片 + 查看更多按钮
      //     // Padding(
      //     //   padding: EdgeInsets.symmetric(horizontal: 16.w),
      //     //   child: Row(
      //     //     children: [
      //     //       // BTC 卡片
      //     //       const Expanded(
      //     //         child: CryptoCardWidget(
      //     //           height: 87.0,
      //     //           backgroundColor: Color(0xFFF8F8FA),
      //     //           borderColor: Color(0xFFE8EAEF),
      //     //           borderWidth: 1.0,
      //     //           borderRadius: 5.0,
      //     //           padding: EdgeInsets.all(8.0),
      //     //           labelIcon: Icon(
      //     //             Icons.currency_bitcoin,
      //     //             color: Colors.white,
      //     //             size: 16.0,
      //     //           ),
      //     //           labelText: 'BTC',
      //     //           labelTextStyle: TextStyle(
      //     //             color: Colors.white,
      //     //             fontSize: 12.0,
      //     //             fontWeight: FontWeight.w600,
      //     //           ),
      //     //           valueText: '1142.2',
      //     //           valueTextStyle: TextStyle(
      //     //             color: Colors.black,
      //     //             fontSize: 16.0,
      //     //             fontWeight: FontWeight.bold,
      //     //           ),
      //     //           valueTopSpacing: 11.0,  // 减少顶部间距给百分比更多空间
      //     //           valueBottomSpacing: 3.0,  // 减少间距避免溢出
      //     //           percentageIcon: Icon(
      //     //             Icons.trending_up,
      //     //             color: Color(0xFF008000),
      //     //             size: 16.0,
      //     //           ),
      //     //           percentageText: '+2.23%',
      //     //           percentageTextStyle: TextStyle(
      //     //             color: Color(0xFF008000),
      //     //             fontSize: 12.0,
      //     //             fontWeight: FontWeight.w600,
      //     //           ),
      //     //           percentageColor: Color(0xFF008000),
      //     //         ),
      //     //       ),
      //     //       SizedBox(width: 12.w),
      //     //       // ETH 卡片
      //     //       const Expanded(
      //     //         child: CryptoCardWidget(
      //     //           height: 87.0,
      //     //           backgroundColor: Color(0xFFF8F8FA),
      //     //           borderColor: Color(0xFFE8EAEF),
      //     //           borderWidth: 1.0,
      //     //           borderRadius: 5.0,
      //     //           padding: EdgeInsets.all(8.0),
      //     //           labelIcon: Icon(
      //     //             Icons.currency_exchange,
      //     //             color: Colors.white,
      //     //             size: 12.0,
      //     //           ),
      //     //           labelText: 'ETH',
      //     //           labelTextStyle: TextStyle(
      //     //             color: Colors.white,
      //     //             fontSize: 12.0,
      //     //             fontWeight: FontWeight.w600,
      //     //           ),
      //     //           valueText: '3842.5',
      //     //           valueTextStyle: TextStyle(
      //     //             color: Colors.black,
      //     //             fontSize: 16.0,
      //     //             fontWeight: FontWeight.bold,
      //     //           ),
      //     //           valueTopSpacing: 11.0,  // 减少顶部间距给百分比更多空间
      //     //           valueBottomSpacing: 3.0,  // 减少间距避免溢出
      //     //           percentageIcon: Icon(
      //     //             Icons.trending_down,
      //     //             color: Color(0xFFFF0000),
      //     //             size: 12.0,
      //     //           ),
      //     //           percentageText: '-1.45%',
      //     //           percentageTextStyle: TextStyle(
      //     //             color: Color(0xFFFF0000),
      //     //             fontSize: 12.0,
      //     //             fontWeight: FontWeight.w600,
      //     //           ),
      //     //           percentageColor: Color(0xFFFF0000),
      //     //         ),
      //     //       ),
      //     //       SizedBox(width: 12.w),
      //     //       // 查看更多按钮
      //     //       const Expanded(
      //     //         child: ViewMoreButtonWidget(
      //     //           text: '查看更多',
      //     //           rightIcon: Icon(Icons.chevron_right),
      //     //           height: 87.0,
      //     //           backgroundColor: Color(0xFFF8F8FA),
      //     //           borderColor: Color(0xFFE8EAEF),
      //     //           borderWidth: 1.0,
      //     //           borderRadius: 5.0,
      //     //           textStyle: TextStyle(
      //     //             fontSize: 13.0,
      //     //             fontWeight: FontWeight.w600,
      //     //             color: Color(0xFF999999),
      //     //           ),
      //     //           rightIconColor: Colors.black54,
      //     //         ),
      //     //       ),
      //     //     ],
      //     //   ),
      //     // ),
      //     // SizedBox(height: 20.h),
      //     // 趋势指标部分
      //     _buildTrendIndicatorSection(),
      //   ],
      //   ),
      // ),
      body: Column(
        children: [
          // 通知区域  
          // Container(
          //   margin: const EdgeInsets.symmetric(horizontal: 16.0),
          //   decoration: BoxDecoration(
          //     color: const Color(0xFFF0F0F0),
          //     borderRadius: BorderRadius.circular(12.0),
          //   ),
          //   child: IconTextWidget(
          //     leftIcon: ImageRes.tkStrategyHomeNotice.toImage,
          //     text: 'CG00587621于14:54订阅了會長David',
          //     backgroundColor: const Color(0xFFE1BEE7),
          //     padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          //     borderRadius: 5.0,
          //     height: 42,
          //     textStyle: const TextStyle(
          //       fontSize: 14.0,
          //       color: Color(0xFF333333),
          //       fontWeight: FontWeight.normal,
          //     ),
          //     onTap: () => _showSnackBar(context, '点击了订阅通知'),
          //   ),
          // ),
          // SizedBox(height: 20.h),
          // 两个加密货币卡片 + 查看更多按钮
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 16.w),
          //   child: Row(
          //     children: [
          //       // BTC 卡片
          //       const Expanded(
          //         child: CryptoCardWidget(
          //           height: 87.0,
          //           backgroundColor: Color(0xFFF8F8FA),
          //           borderColor: Color(0xFFE8EAEF),
          //           borderWidth: 1.0,
          //           borderRadius: 5.0,
          //           padding: EdgeInsets.all(8.0),
          //           labelIcon: Icon(
          //             Icons.currency_bitcoin,
          //             color: Colors.white,
          //             size: 16.0,
          //           ),
          //           labelText: 'BTC',
          //           labelTextStyle: TextStyle(
          //             color: Colors.white,
          //             fontSize: 12.0,
          //             fontWeight: FontWeight.w600,
          //           ),
          //           valueText: '1142.2',
          //           valueTextStyle: TextStyle(
          //             color: Colors.black,
          //             fontSize: 16.0,
          //             fontWeight: FontWeight.bold,
          //           ),
          //           valueTopSpacing: 11.0,  // 减少顶部间距给百分比更多空间
          //           valueBottomSpacing: 3.0,  // 减少间距避免溢出
          //           percentageIcon: Icon(
          //             Icons.trending_up,
          //             color: Color(0xFF008000),
          //             size: 16.0,
          //           ),
          //           percentageText: '+2.23%',
          //           percentageTextStyle: TextStyle(
          //             color: Color(0xFF008000),
          //             fontSize: 12.0,
          //             fontWeight: FontWeight.w600,
          //           ),
          //           percentageColor: Color(0xFF008000),
          //         ),
          //       ),
          //       SizedBox(width: 12.w),
          //       // ETH 卡片
          //       const Expanded(
          //         child: CryptoCardWidget(
          //           height: 87.0,
          //           backgroundColor: Color(0xFFF8F8FA),
          //           borderColor: Color(0xFFE8EAEF),
          //           borderWidth: 1.0,
          //           borderRadius: 5.0,
          //           padding: EdgeInsets.all(8.0),
          //           labelIcon: Icon(
          //             Icons.currency_exchange,
          //             color: Colors.white,
          //             size: 12.0,
          //           ),
          //           labelText: 'ETH',
          //           labelTextStyle: TextStyle(
          //             color: Colors.white,
          //             fontSize: 12.0,
          //             fontWeight: FontWeight.w600,
          //           ),
          //           valueText: '3842.5',
          //           valueTextStyle: TextStyle(
          //             color: Colors.black,
          //             fontSize: 16.0,
          //             fontWeight: FontWeight.bold,
          //           ),
          //           valueTopSpacing: 11.0,  // 减少顶部间距给百分比更多空间
          //           valueBottomSpacing: 3.0,  // 减少间距避免溢出
          //           percentageIcon: Icon(
          //             Icons.trending_down,
          //             color: Color(0xFFFF0000),
          //             size: 12.0,
          //           ),
          //           percentageText: '-1.45%',
          //           percentageTextStyle: TextStyle(
          //             color: Color(0xFFFF0000),
          //             fontSize: 12.0,
          //             fontWeight: FontWeight.w600,
          //           ),
          //           percentageColor: Color(0xFFFF0000),
          //         ),
          //       ),
          //       SizedBox(width: 12.w),
          //       // 查看更多按钮
          //       const Expanded(
          //         child: ViewMoreButtonWidget(
          //           text: '查看更多',
          //           rightIcon: Icon(Icons.chevron_right),
          //           height: 87.0,
          //           backgroundColor: Color(0xFFF8F8FA),
          //           borderColor: Color(0xFFE8EAEF),
          //           borderWidth: 1.0,
          //           borderRadius: 5.0,
          //           textStyle: TextStyle(
          //             fontSize: 13.0,
          //             fontWeight: FontWeight.w600,
          //             color: Color(0xFF999999),
          //           ),
          //           rightIconColor: Colors.black54,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // SizedBox(height: 20.h),
          // 趋势指标部分
          _buildTrendIndicatorSection(),
        ],
      ),
    );
  }

  /// 构建趋势指标部分
  Widget _buildTrendIndicatorSection() {
    return Expanded(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 趋势指标标题和下拉选项
        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 16.w),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       // 趋势指标文本
        //       Text(
        //         '趋势指标',
        //         style: TextStyle(
        //           fontSize: 18.sp,
        //           fontWeight: FontWeight.w600,
        //           color: Colors.black,
        //         ),
        //       ),
        //       // 30M级别下拉选项
        //       Container(
        //         padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        //         child: Row(
        //           mainAxisSize: MainAxisSize.min,
        //           children: [
        //             Text(
        //               '30M级别',
        //               style: TextStyle(
        //                 fontSize: 14.sp,
        //                 color: Colors.black87,
        //               ),
        //             ),
        //             SizedBox(width: 4.w),
        //             Icon(
        //               Icons.keyboard_arrow_down,
        //               size: 16.w,
        //               color: Colors.grey[600],
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // SizedBox(height: 6.h),
        // 横线滑动表
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   padding: EdgeInsets.symmetric(horizontal: 16.w),
        //   child: Row(
        //     children: [
        //       // 解锁卡片
        //       UnlockCardWidget(
        //         width: 160.w,
        //         height: 101.h,
        //         autoHeight: false,
        //         topLeftText: '仅需10U',
        //         topLeftTextOffset: const Offset(8.0, 8.0), // 左上角文本位置：距离左边8px，距离顶部8px
        //         mainTextOffset: const Offset(17.0, 40.0), // 中间文本位置：距离左边8px，距离顶部25px
        //         topLeftTextStyle: TextStyle(
        //           color: Colors.black,
        //           fontSize: 16.sp,
        //           fontWeight: FontWeight.bold,
        //         ),
        //         topRightImage: ImageRes.tkStrategyHomeV.toImage,
        //         topRightImageSize: 40.0, // 设置图片大小为40x40
        //         topRightImageOffset: const Offset(4.0, 0.0), // 设置图片位置：距离右边0px，距离顶部0px
        //         topRightPadding: EdgeInsets.zero, // 移除内边距，让图片贴边
        //         mainText: '解锁全部趋势指标',
        //         mainTextStyle: TextStyle(
        //           color: Colors.black87,
        //           fontSize: 11.sp,
        //           fontWeight: FontWeight.w500,
        //         ),
        //         buttonText: '立即解锁',
        //         buttonTextStyle: TextStyle(
        //           color: Colors.white,
        //           fontSize: 11.sp,
        //           fontWeight: FontWeight.bold,
        //         ),
        //         buttonBackgroundColor: Color(0xFF9E13F7),
        //         backgroundColor: Colors.white,
        //         borderColor: Colors.grey[300],
        //         borderWidth: 1.0,
        //         borderRadius: 8.0,
        //         onButtonTap: () {
        //           // 解锁按钮点击事件
        //           print('立即解锁按钮被点击');
        //         },
        //       ),
        //       SizedBox(width: 12.w),
        //       // 动态生成加密货币信息卡片
        //       ..._buildCryptoInfoCards(),
        //     ],
        //   ),
        // ),
        // SizedBox(height: 16.h),
        // 交易员推荐
        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 16.w),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       // 交易员推荐文本
        //       Text(
        //         '交易员推荐',
        //         style: TextStyle(
        //           fontSize: 18.sp,
        //           fontWeight: FontWeight.w600,
        //           color: Colors.black,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // SizedBox(height: 12.h),
        // 交易员横线滑动表
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   padding: EdgeInsets.symmetric(horizontal: 16.w),
        //   child: Row(
        //     children: _buildTraderProfileCards(),
        //   ),
        // ),
        SizedBox(height: 16.h),
        // 合约策略和现货策略 Tab
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // 合约策略 Tab
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTabIndex = 0;
                  });
                  // 切换到合约策略时，如果数据为空则加载数据
                  if (logic.state.contractTraders.isEmpty) {
                    logic.loadContractTraders(refresh: true);
                  }
                },
                child: Text(
                  '合约策略',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: selectedTabIndex == 0 ? Colors.black : Colors.grey,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              // 现货策略 Tab
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTabIndex = 1;
                  });
                  // 切换到现货策略时，如果数据为空则加载数据
                  if (logic.state.spotTraders.isEmpty) {
                    logic.loadSpotTraders(refresh: true);
                  }
                },
                child: Text(
                  '现货策略',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: selectedTabIndex == 1 ? Colors.black : Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.h),
        // 策略列表（根据选中的 Tab 显示不同数据）
        Expanded(child: Obx(() {
          // 根据选中的Tab获取对应的数据
          final currentTraders = selectedTabIndex == 0 ? logic.state.contractTraders : logic.state.spotTraders;
          final isLoading = selectedTabIndex == 0 ? logic.state.isLoadingContractTraders.value : logic.state.isLoadingSpotTraders.value;
          final isRefreshing = selectedTabIndex == 0 ? logic.state.isRefreshingContractTraders.value : logic.state.isRefreshingSpotTraders.value;
          final error = selectedTabIndex == 0 ? logic.state.contractTradersError.value : logic.state.spotTradersError.value;
          
          if (error.isNotEmpty) {
            return RefreshIndicator(
              onRefresh: () async {
                if (selectedTabIndex == 0) {
                  await logic.loadContractTraders(refresh: true);
                } else {
                  await logic.loadSpotTraders(refresh: true);
                }
                
                // 显示刷新成功提示
                if (mounted) {
                  _showSnackBar(context, '数据已刷新');
                }
              },
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error_outline,
                          size: 48.w,
                          color: Colors.grey[400],
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          '加载失败',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          error,
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey[500],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 16.h),
                        ElevatedButton(
                          onPressed: () {
                            if (selectedTabIndex == 0) {
                              logic.loadContractTraders(refresh: true);
                            } else {
                              logic.loadSpotTraders(refresh: true);
                            }
                          },
                          child: Text('重试'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
          
          if (currentTraders.isEmpty && !isLoading) {
            return RefreshIndicator(
              onRefresh: () async {
                if (selectedTabIndex == 0) {
                  await logic.loadContractTraders(refresh: true);
                } else {
                  await logic.loadSpotTraders(refresh: true);
                }
                
                // 显示刷新成功提示
                if (mounted) {
                  _showSnackBar(context, '数据已刷新');
                }
              },
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.people_outline,
                          size: 48.w,
                          color: Colors.grey[400],
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          '暂无交易员数据',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          '下拉刷新获取最新数据',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
          
          return RefreshIndicator(
            onRefresh: () async {
              // 下拉刷新时重新加载对应Tab的数据
              if (selectedTabIndex == 0) {
                await logic.loadContractTraders(refresh: true);
              } else {
                await logic.loadSpotTraders(refresh: true);
              }
              
              // 显示刷新成功提示
              if (mounted) {
                // _showSnackBar(context, '数据已刷新');
              }
            },
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemCount: currentTraders.length + (isLoading && !isRefreshing ? 1 : 0),
              itemBuilder: (context, index) {
                // 加载更多指示器 - 只在非刷新状态下显示
                if (index == currentTraders.length && !isRefreshing) {
                  return Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                
                final trader = currentTraders[index];
                final data = logic.convertTraderToProfileCard(trader);
                
                return Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: GestureDetector(
                    onTap: () => logic.goToStrategyDetail(data),
                    child: UserProfileCardWidget(
                      data: data,
                      padding: const EdgeInsets.all(16.0),
                      borderRadius: 12.0,
                      backgroundColor: Colors.white,
                      border: Border.all(
                        color: const Color(0xFFE8EAEF),
                        width: 1.0,
                      ),
                      avatarSize: 60.0,
                      avatarBorderRadius: 30.0,
                      nameTextStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      subscriptionLabelTextStyle: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.grey[600],
                      ),
                      subscriptionValueTextStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                      guildNameTextStyle: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.black87,
                      ),
                      followersCountTextStyle: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.grey[600],
                      ),
                      onAvatarTap: () {
                        logic.goToStrategyDetail(data);
                      },
                      onTagTap: (index) {
                        _showSnackBar(context, '点击了 ${data.name} 的标签: ${data.tags[index]}');
                      },
                    ),
                  ),
                );
              },
            ),
          );
        })),
        // SizedBox(
        //   height: 400.h, // 设置固定高度
        //   child:
        // ),
      ],
    ));
  }

  /// 构建加密货币信息卡片列表
  List<Widget> _buildCryptoInfoCards() {
    // 模拟数据 - 实际项目中应该从API或数据库获取
    final List<CryptoInfoData> cryptoDataList = [
      const CryptoInfoData(
        tradingPair: 'BTCUSDT',
        timeText: '09/11 15:00',
        priceText: '\$1143.2',
        levelText: '30M级别',
        statusText: '观望',
      ),
      const CryptoInfoData(
        tradingPair: 'ETHUSDT',
        timeText: '09/11 16:30',
        priceText: '\$3842.5',
        levelText: '30M级别',
        statusText: '买入',
      ),
      const CryptoInfoData(
        tradingPair: 'ADAUSDT',
        timeText: '09/11 17:15',
        priceText: '\$0.4521',
        levelText: '30M级别',
        statusText: '卖出',
      ),
      const CryptoInfoData(
        tradingPair: 'SOLUSDT',
        timeText: '09/11 18:00',
        priceText: '\$98.45',
        levelText: '30M级别',
        statusText: '观望',
      ),
      const CryptoInfoData(
        tradingPair: 'DOTUSDT',
        timeText: '09/11 18:30',
        priceText: '\$6.78',
        levelText: '30M级别',
        statusText: '买入',
      ),
      // 可以继续添加更多数据...
    ];

    return cryptoDataList.map((data) {
      return Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: CryptoInfoWidget(
          data: data,
          style: const CryptoInfoStyle(
            width: 170.0,
            height: 101.0,
            backgroundColor: Colors.white,
            borderColor: Color(0xFFE8EAEF),
            borderWidth: 1.0,
            borderRadius: 8.0,
            padding: EdgeInsets.all(6.0), // 进一步减少内边距
            horizontalSpacing: 4.0, // 进一步减少水平间距
            verticalSpacing: 4.0, // 进一步减少垂直间距
          ),
          onTap: () {
            // 处理卡片点击事件
            print('点击了 ${data.tradingPair}');
          },
        ),
      );
    }).toList();
  }

  /// 构建交易员资料卡片列表
  List<Widget> _buildTraderProfileCards() {
    // 模拟交易员数据 - 实际项目中应该从API或数据库获取
    final List<ProfileCardData> traderDataList = [
      const ProfileCardData(
        avatarUrl: '',
        name: 'David',
        title: '會長',
        followCount: 5514,
        detailButtonText: '详情',
        tags: ['短线', '中线', '高频'],
        selectedTagIndex: 0,
        strategyCount: 1715,
        viewpointCount: 444,
        winRate: 72.59,
      ),
      const ProfileCardData(
        avatarUrl: '',
        name: 'Lisa',
        title: '分析师',
        followCount: 3287,
        detailButtonText: '详情',
        tags: ['波段', '价值', '技术'],
        selectedTagIndex: 1,
        strategyCount: 892,
        viewpointCount: 267,
        winRate: 68.34,
      ),
      const ProfileCardData(
        avatarUrl: '',
        name: 'Mike',
        title: '量化大师',
        followCount: 4156,
        detailButtonText: '详情',
        tags: ['量化', '算法', '套利'],
        selectedTagIndex: 0,
        strategyCount: 1234,
        viewpointCount: 356,
        winRate: 75.82,
      ),
      const ProfileCardData(
        avatarUrl: '',
        name: 'Alice',
        title: '期货专家',
        followCount: 2874,
        detailButtonText: '详情',
        tags: ['期货', '对冲', '风控'],
        selectedTagIndex: 2,
        strategyCount: 967,
        viewpointCount: 189,
        winRate: 71.25,
      ),
      const ProfileCardData(
        avatarUrl: '',
        name: 'John',
        title: '趋势猎手',
        followCount: 3642,
        detailButtonText: '详情',
        tags: ['趋势', '突破', '动量'],
        selectedTagIndex: 1,
        strategyCount: 1156,
        viewpointCount: 298,
        winRate: 69.77,
      ),
    ];

    return traderDataList.map((data) {
      return Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: SizedBox(
          width: 240.w, // 设置固定宽度
          // height: 160.w,
            child: GestureDetector(
            onTap: () => logic.goToStrategyDetail(data),
            child: SafeProfileCardWidget(
            data: data,
            padding: const EdgeInsets.all(12.0),
            borderRadius: 8.0,
            backgroundColor: Colors.white,
            border: Border.all(
              color: const Color(0xFFE8EAEF),
              width: 1.0,
            ),
            avatarSize: 50.0,
            avatarBorderRadius: 25.0,
            nameTextStyle: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
            titleTextStyle: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            followCountTextStyle: TextStyle(
              fontSize: 11.sp,
              color: Colors.black54,
            ),
            tagTextStyle: TextStyle(
              fontSize: 10.sp,
            ),
            selectedTagBackgroundColor: const Color(0xFF9E13F7).withOpacity(0.1),
            unselectedTagBackgroundColor: Colors.grey.withOpacity(0.1),
            selectedTagTextColor: const Color(0xFF9E13F7),
            unselectedTagTextColor: Colors.grey[600],
            statisticTitleTextStyle: TextStyle(
              fontSize: 10.sp,
              color: Colors.grey,
            ),
            statisticValueTextStyle: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            detailButtonStyle: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF9E13F7),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6), // 更小的圆角
              ),
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3), // 稍微增加内边距
              minimumSize: const Size(36, 22), // 稍微增加最小尺寸
              maximumSize: const Size(55, 28), // 稍微增加最大尺寸
              textStyle: TextStyle(
                fontSize: 10.sp, // 调大字体
                fontWeight: FontWeight.w500,
              ),
            ),
            // 添加右边距让按钮更靠右
            margin: const EdgeInsets.only(left: 8),
            onFollowTap: () {
              // _showSnackBar(context, '点击关注 ${data.name}');
            },
            onTagTap: (index) {
              // _showSnackBar(context, '点击了 ${data.name} 的标签: ${data.tags[index]}');
            },
            onDetailTap: () {
              logic.goToStrategyDetail(data);
            },
            onAvatarTap: () {
              logic.goToStrategyDetail(data);
            },
          ),
          ),
        ),
      );
    }).toList();
  }


  /// 构建合约策略数据列表
  List<UserProfileCardData> _buildContractStrategyData() {
    return [
      UserProfileCardData(
        avatarUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        name: '合约大师',
        subscriptionInfo: const SubscriptionInfo(
          label: '订阅',
          current: 1234,
          total: 2000,
        ),
        guildIconUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        guildName: '精英工会',
        followersCount: 8567,
        ratingInfo: const RatingInfo(
          rating: 4.8,
          maxRating: 5,
        ),
        tags: ['高频', '套利', '量化'],
        selectedTagIndex: 0,
        contractPoliciesCount: 89,
        viewpointsCount: 156,
        profitCertificatesCount: 45,
        strategyWinRate: 78.5,
        tipperAvatars: [
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        ],
        totalTipsAmount: '12,345',
        mainAmount: '¥1,234,567',
        latestStrategyTime: '2小时前',
        subscriptionFee: '¥99/月',
      ),
      UserProfileCardData(
        avatarUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        name: '期货专家',
        subscriptionInfo: const SubscriptionInfo(
          label: '订阅',
          current: 2456,
          total: 3000,
        ),
        guildIconUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        guildName: '专业团队',
        followersCount: 12345,
        ratingInfo: const RatingInfo(
          rating: 4.9,
          maxRating: 5,
        ),
        tags: ['趋势', '波段', '风控'],
        selectedTagIndex: 1,
        contractPoliciesCount: 156,
        viewpointsCount: 289,
        profitCertificatesCount: 78,
        strategyWinRate: 82.3,
        tipperAvatars: [
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        ],
        totalTipsAmount: '23,456',
        mainAmount: '¥2,345,678',
        latestStrategyTime: '1小时前',
        subscriptionFee: '¥199/月',
      ),
      UserProfileCardData(
        avatarUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        name: '量化策略师',
        subscriptionInfo: const SubscriptionInfo(
          label: '订阅',
          current: 3789,
          total: 5000,
        ),
        guildIconUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        guildName: '算法联盟',
        followersCount: 9876,
        ratingInfo: const RatingInfo(
          rating: 4.7,
          maxRating: 5,
        ),
        tags: ['算法', 'AI', '机器学习'],
        selectedTagIndex: 2,
        contractPoliciesCount: 234,
        viewpointsCount: 456,
        profitCertificatesCount: 123,
        strategyWinRate: 85.7,
        tipperAvatars: [
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        ],
        totalTipsAmount: '34,567',
        mainAmount: '¥3,456,789',
        latestStrategyTime: '30分钟前',
        subscriptionFee: '¥299/月',
      ),
      UserProfileCardData(
        avatarUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        name: '短线猎手',
        subscriptionInfo: const SubscriptionInfo(
          label: '订阅',
          current: 1567,
          total: 2500,
        ),
        guildIconUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        guildName: '短线联盟',
        followersCount: 6543,
        ratingInfo: const RatingInfo(
          rating: 4.6,
          maxRating: 5,
        ),
        tags: ['短线', '快进快出', '技术分析'],
        selectedTagIndex: 0,
        contractPoliciesCount: 67,
        viewpointsCount: 123,
        profitCertificatesCount: 34,
        strategyWinRate: 76.2,
        tipperAvatars: [
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        ],
        totalTipsAmount: '8,901',
        mainAmount: '¥890,123',
        latestStrategyTime: '3小时前',
        subscriptionFee: '¥79/月',
      ),
      UserProfileCardData(
        avatarUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        name: '套利专家',
        subscriptionInfo: const SubscriptionInfo(
          label: '订阅',
          current: 4321,
          total: 6000,
        ),
        guildIconUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        guildName: '套利集团',
        followersCount: 11111,
        ratingInfo: const RatingInfo(
          rating: 4.9,
          maxRating: 5,
        ),
        tags: ['套利', '对冲', '风险控制'],
        selectedTagIndex: 1,
        contractPoliciesCount: 198,
        viewpointsCount: 345,
        profitCertificatesCount: 89,
        strategyWinRate: 88.9,
        tipperAvatars: [
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        ],
        totalTipsAmount: '45,678',
        mainAmount: '¥4,567,890',
        latestStrategyTime: '15分钟前',
        subscriptionFee: '¥399/月',
      ),
    ];
  }

  /// 构建现货策略数据列表
  List<UserProfileCardData> _buildSpotStrategyData() {
    return [
      UserProfileCardData(
        avatarUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        name: '现货专家',
        subscriptionInfo: const SubscriptionInfo(
          label: '订阅',
          current: 987,
          total: 1500,
        ),
        guildIconUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        guildName: '现货联盟',
        followersCount: 5432,
        ratingInfo: const RatingInfo(
          rating: 4.5,
          maxRating: 5,
        ),
        tags: ['现货', '长期持有', '价值投资'],
        selectedTagIndex: 0,
        contractPoliciesCount: 45,
        viewpointsCount: 89,
        profitCertificatesCount: 23,
        strategyWinRate: 71.2,
        tipperAvatars: [
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        ],
        totalTipsAmount: '6,789',
        mainAmount: '¥678,901',
        latestStrategyTime: '4小时前',
        subscriptionFee: '¥59/月',
      ),
      UserProfileCardData(
        avatarUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        name: '价值投资者',
        subscriptionInfo: const SubscriptionInfo(
          label: '订阅',
          current: 1234,
          total: 2000,
        ),
        guildIconUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        guildName: '价值投资团',
        followersCount: 8765,
        ratingInfo: const RatingInfo(
          rating: 4.7,
          maxRating: 5,
        ),
        tags: ['价值投资', '基本面分析', '长期'],
        selectedTagIndex: 1,
        contractPoliciesCount: 78,
        viewpointsCount: 156,
        profitCertificatesCount: 45,
        strategyWinRate: 79.8,
        tipperAvatars: [
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          '',
        ],
        totalTipsAmount: '9,876',
        mainAmount: '¥987,654',
        latestStrategyTime: '6小时前',
        subscriptionFee: '¥89/月',
      ),
      UserProfileCardData(
        avatarUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        name: '技术分析师',
        subscriptionInfo: const SubscriptionInfo(
          label: '订阅',
          current: 2100,
          total: 3000,
        ),
        guildIconUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        guildName: '技术分析社',
        followersCount: 12345,
        ratingInfo: const RatingInfo(
          rating: 4.6,
          maxRating: 5,
        ),
        tags: ['技术分析', '图表', '指标'],
        selectedTagIndex: 2,
        contractPoliciesCount: 123,
        viewpointsCount: 234,
        profitCertificatesCount: 67,
        strategyWinRate: 75.3,
        tipperAvatars: [
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        ],
        totalTipsAmount: '15,432',
        mainAmount: '¥1,543,210',
        latestStrategyTime: '1小时前',
        subscriptionFee: '¥129/月',
      ),
      UserProfileCardData(
        avatarUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        name: '波段交易者',
        subscriptionInfo: const SubscriptionInfo(
          label: '订阅',
          current: 1567,
          total: 2500,
        ),
        guildIconUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        guildName: '波段交易组',
        followersCount: 6789,
        ratingInfo: const RatingInfo(
          rating: 4.4,
          maxRating: 5,
        ),
        tags: ['波段交易', '趋势跟踪', '中短期'],
        selectedTagIndex: 0,
        contractPoliciesCount: 89,
        viewpointsCount: 167,
        profitCertificatesCount: 34,
        strategyWinRate: 73.6,
        tipperAvatars: [
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        ],
        totalTipsAmount: '7,654',
        mainAmount: '¥765,432',
        latestStrategyTime: '2小时前',
        subscriptionFee: '¥79/月',
      ),
      UserProfileCardData(
        avatarUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        name: '现货套利师',
        subscriptionInfo: const SubscriptionInfo(
          label: '订阅',
          current: 890,
          total: 1200,
        ),
        guildIconUrl: 'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        guildName: '套利工作室',
        followersCount: 4567,
        ratingInfo: const RatingInfo(
          rating: 4.8,
          maxRating: 5,
        ),
        tags: ['套利', '现货', '价差'],
        selectedTagIndex: 1,
        contractPoliciesCount: 56,
        viewpointsCount: 98,
        profitCertificatesCount: 28,
        strategyWinRate: 81.4,
        tipperAvatars: [
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
          'https://img14.360buyimg.com/babel/jfs/t20270715/243181/3/13649/9018/6694ee5fF6aa391d4/1b020aa3f9cf89a0.png',
        ],
        totalTipsAmount: '5,432',
        mainAmount: '¥543,210',
        latestStrategyTime: '3小时前',
        subscriptionFee: '¥69/月',
      ),
    ];
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
