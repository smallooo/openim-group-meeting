import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';


import '../../tk_widgets/tk_w1/list_item_widget.dart';
import '../../tk_widgets/tk_w3/text_button_widget.dart';
import '../../tk_widgets/tk_w4/info_card_widget.dart';
import '../tk_strategy/strategy_my/view.dart';
import 'tk_mine_logic.dart';

class TkMinePage extends StatelessWidget {
  final logic = Get.find<TkMineLogic>();

  TkMinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 顶部白色空间
            Container(
              height: 90.0,
              color: Colors.white,
            ),
            
            // 顶部用户信息卡片
            Container(
              margin: const EdgeInsets.fromLTRB(16.0, 16, 16.0, 16.0),
              child: Obx(() => InfoCardWidget(
                imageWidget: _buildAvatarWidget(),
                title: logic.userNickname.value.isNotEmpty ? logic.userNickname.value : 'Wait',
                subtitle: logic.userAddress.value.isNotEmpty ? logic.userAddress.value : '地址: 加载中...',
                onCopy: () => _showSnackBar(context, '复制了地址'),
                onTopRightIconTap: () => _showSnackBar(context, '点击了二维码'),
                onBottomRightIconTap: () => _showSnackBar(context, '点击了箭头'),
                onTap: () => _showSnackBar(context, '点击了用户信息'),
                backgroundColor: Colors.white,
                borderRadius: 12.0,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              )),
            ),
            
            // 支付按钮
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ListItemWidget(
                height: 50,
                leftIcon: const Icon(Icons.payment, color: Color(0xFF4CAF50)),
                text: '支付',
                onTap: logic.toPayPage,
                backgroundColor: Colors.transparent,
                showRippleEffect: false,
              ),
            ),
            
            const SizedBox(height: 16.0),
            
            // 我的信息、账号设置、关于我们（一组，带分割线）
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ListItemWidget(
                    height: 50,
                    leftIcon: const Icon(Icons.person, color: Color(0xFF9C27B0)),
                    text: '我的信息',
                    onTap: logic.viewMyInfo,
                    showDivider: true,
                    backgroundColor: Colors.transparent,
                    showRippleEffect: false,
                    // borderRadius: 0.0,
                  ),
                  ListItemWidget(
                    height: 50,
                    leftIcon: const Icon(Icons.settings, color: Color(0xFF9C27B0)),
                    text: '账号设置',
                    onTap: logic.accountSetup,
                    showDivider: true,
                    backgroundColor: Colors.transparent,
                    showRippleEffect: false,
                    // borderRadius: 0.0,
                  ),
                  ListItemWidget(
                    height: 50,
                    leftIcon: const Icon(Icons.info, color: Color(0xFF4CAF50)),
                    text: '关于我们',
                    onTap: logic.aboutUs,
                    showDivider: false,
                    backgroundColor: Colors.transparent,
                    // borderRadius: 0.0,
                    showRippleEffect: false,
                  )
                ],
              ),
            ),
            
            const SizedBox(height: 16.0),
            
            // 退出登录按钮
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextButtonWidget(
                height: 50,
                text: '退出登录',
                onTap: logic.logout,
                backgroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFFE91E63),
                  fontWeight: FontWeight.w500,
                ),
                borderRadius: 12.0,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),

            // _buildItemView(
            //   label: '组件测试',
            //   onTap: _navigateToListItemExample,
            // ),
            // _buildItemView(
            //   label: '申请成为交易员',
            //   onTap: () {
            //     Get.to(() => StrategyMemberApplyPage());
            //   },
            // ),
            // _buildItemView(
            //   label: '交易员主页',
            //   onTap: () {
            //     Get.to(() => StrategyMemberProfilePage());
            //   },
            // ),
            // _buildItemView(
            //   label: '我的策略',
            //   onTap: () {
            //     Get.to(() => StrategyMyPage());
            //   },
            // ),
          ],
        ),
      ),
    );
  }

  /// 构建头像Widget
  Widget _buildAvatarWidget() {
    final faceURL = logic.imLogic.userInfo.value.faceURL;
    final nickname = logic.imLogic.userInfo.value.nickname;
    
    if (faceURL != null && faceURL.isNotEmpty) {
      // 如果有头像URL，显示网络图片
      return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          faceURL,
          width: 60.0,
          height: 60.0,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            // 网络图片加载失败时显示默认头像
            return _buildDefaultAvatar(nickname);
          },
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            // 显示加载指示器
            return Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2.0,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
                ),
              ),
            );
          },
        ),
      );
    } else {
      // 如果没有头像URL，显示默认头像
      return _buildDefaultAvatar(nickname);
    }
  }

  /// 构建默认头像
  Widget _buildDefaultAvatar(String? nickname) {
    return Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: Colors.blue.shade400,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(
          (nickname?.isNotEmpty == true) ? nickname![0].toUpperCase() : 'U',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
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

  Widget _buildItemView({
    required String label,
    String? value,
    String? url,
    bool isAvatar = false,
    bool showRightArrow = true,
    Function()? onTap,
  }) =>
      GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: showRightArrow ? onTap : null,
        child: SizedBox(
          height: 46.h,
          child: Row(
            children: [
              label.toText..style = Styles.ts_0C1C33_17sp,
              const Spacer(),
              if (isAvatar)
                AvatarView(
                  width: 32.w,
                  height: 32.h,
                  url: url,
                  text: value,
                  textStyle: Styles.ts_FFFFFF_10sp,
                )
              else
                Expanded(
                    flex: 3,
                    child: (IMUtils.emptyStrToNull(value) ?? '').toText
                      ..style = Styles.ts_0C1C33_17sp
                      ..maxLines = 1
                      ..overflow = TextOverflow.ellipsis
                      ..textAlign = TextAlign.right),
              if (showRightArrow)
                ImageRes.rightArrow.toImage
                  ..width = 24.w
                  ..height = 24.h,
            ],
          ),
        ),
      );

  /// 导航到列表项组件示例页面
  void _navigateToListItemExample() {
    // Get.to(() => const ListItemExample());
    // Get.to(() => const AvatarListItemExample());

    // Get.to(() => const TextButtonExample());
    // Get.to(() => const InfoCardExample());
    // Get.to(() => const SwitchExample());
    // Get.to(() => const IconTextExample());
    // Get.to(() => const CryptoCardExample());

    // Get.to(() => const ViewMoreButtonExample());

    // Get.to(() => const SimpleUnlockCardTest());

    // Get.to(() => const CryptoInfoExample());

    // Get.to(() => const ProfileCardExample());
    // Get.to(() => const UserProfileCardExample());
    // Get.to(() => const TraderIntroExample());
    // Get.to(() => const InputDisplayExample());
    // Get.to(() => const StrategyCardExample());

    // Get.to(() => const SegmentControlExample());
    // Get.to(() => const PriceInputExample());


    // Get.to(() => StrategyMemberApplyPage());
    // Get.to(() => StrategyMemberProfilePage());
    // Get.to(() => StrategyPublishPage());
    Get.to(() => StrategyMyPage());

    // Get.to(() => StrategyDetailPage());



  }

}
