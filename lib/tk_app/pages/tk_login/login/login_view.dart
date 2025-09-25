import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openim_common/openim_common.dart';
import 'login_logic.dart';

class TkLoginPage extends ConsumerStatefulWidget {
  const TkLoginPage({super.key});

  @override
  ConsumerState<TkLoginPage> createState() => _TkLoginPageState();
}

class _TkLoginPageState extends ConsumerState<TkLoginPage> {
  late final LoginLogic logic;

  @override
  void initState() {
    super.initState();
    logic = Get.find<LoginLogic>();
    // 将 ref 传递给 logic
    logic.setRef(ref);
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    final isKeyboard = bottomInset > 0;
    
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: bottomInset),
          child: Column(
            children: [
              // Logo 区域
              _buildLogoSection(isKeyboard),
              
              // 邮箱输入区域
              _buildEmailInputSection(),
              
              // 按钮区域
              _buildButtonSection(isKeyboard),
            ],
          ),
        ),
      ),
    );
  }

  /// Logo 区域
  Widget _buildLogoSection(bool isKeyboard) {
    return Column(
      children: [
        (isKeyboard ? 24.verticalSpace : 108.verticalSpace),
        ImageRes.dkyx_icon.toImage
          ..width = 76
          ..height = 86,
        (isKeyboard ? 16.verticalSpace : 64.verticalSpace),
        Text(
          'TokLink'.tr,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        13.verticalSpace,
        Text(
          'tok_link_des'.tr,
          style: TextStyle(fontSize: 16, color: Styles.c_8E9AB0),
        ),
        (isKeyboard ? 16.verticalSpace : 51.verticalSpace),
      ],
    );
  }

  /// 邮箱输入区域
  Widget _buildEmailInputSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 52,
      decoration: BoxDecoration(
        color: Styles.c_F0F2F6, 
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          ImageRes.yx_icon.toImage
            ..width = 29
            ..height = 22,
          16.horizontalSpace,
          Expanded(
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration.collapsed(
                hintText: 'Please_Enter_Your_Email'.tr,
              ),
              onChanged: logic.updateEmail,
            ),
          )
        ],
      ),
    );
  }

  /// 按钮区域
  Widget _buildButtonSection(bool isKeyboard) {
    return Column(
      children: [
        (isKeyboard ? 16.verticalSpace : 51.verticalSpace),
        SizedBox(
          width: double.infinity,
          height: 52,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Obx(() => ElevatedButton(
              onPressed: logic.isLoading.value 
                ? null 
                : () => LoadingView.singleton.wrap(
                    asyncFunction: logic.sendCode,
                  ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Styles.c_0089FF, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: logic.isLoading.value
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  )
                : Text(
                    'Log_in'.tr, 
                    style: const TextStyle(color: Colors.white),
                  ),
            )),
          ),
        ),
      ],
    );
  }
}
