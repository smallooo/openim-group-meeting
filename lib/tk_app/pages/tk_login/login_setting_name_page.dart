import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';
import '../../../core/controller/im_controller.dart';
import '../../../pages/conversation/conversation_logic.dart';
import '../../../routes/app_navigator.dart';


class TkLoginSettingNamePage extends StatefulWidget {
  final String email;
  const TkLoginSettingNamePage({super.key, required this.email});

  @override
  State<TkLoginSettingNamePage> createState() => _TkLoginSettingNamePageState();
}

class _TkLoginSettingNamePageState extends State<TkLoginSettingNamePage> {
  String nickname = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Set nickname')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email: ${widget.email}', style: Styles.ts_0C1C33_17sp),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(labelText: 'Nickname'),
              onChanged: (v) => nickname = v,
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () async {
                  if (nickname.isEmpty) {
                    IMViews.showToast('请输入昵称');
                    return;
                  }
                  // 参考 register_logic.dart：先调用 Apis.register，再登录 IM
                  try {
                    // 1) 先向 IM 发送邮箱验证码（注册用途 usedFor=1）
                    await Apis.requestVerificationCode(
                      areaCode: '',
                      phoneNumber: null,
                      email: widget.email,
                      usedFor: 1,
                      invitationCode: null,
                    );
                    // 2) 校验验证码（目前固定 666666）
                    await Apis.checkVerificationCode(
                      areaCode: '',
                      phoneNumber: null,
                      email: widget.email,
                      verificationCode: '666666',
                      usedFor: 1,
                      invitationCode: null,
                    );
                    // 3) 调 IM 注册
                    await Apis.register(
                      nickname: nickname,
                      password: '123456abc',
                      email: widget.email,
                      verificationCode: '666666',
                    );
                    final imLogic = Get.find<IMController>();
                    await imLogic.login(widget.email, '123456abc');
                    final result = await ConversationLogic.getConversationFirstPage();
                    AppNavigator.startMain(conversations: result);
                  } catch (e) {
                    IMViews.showToast('IM 注册/登录失败: $e');
                  }
                },
                child: const Text('保存'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


