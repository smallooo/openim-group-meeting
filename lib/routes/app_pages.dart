import 'package:get/get.dart';
import 'package:toklink/pages/chat/chat_red_packet/chat_red_package_binding.dart';
import 'package:toklink/pages/chat/chat_red_packet/chat_red_package_page.dart';
import 'package:toklink/pages/contacts/select_contacts/group_member_list/select_group_members_binding.dart';
import 'package:toklink/pages/contacts/select_contacts/group_member_list/select_group_members_view.dart';

import '../pages/chat/chat_binding.dart';
import '../pages/chat/chat_setup/chat_setup_binding.dart';
import '../pages/chat/chat_setup/chat_setup_view.dart';
import '../pages/chat/chat_view.dart';
import '../pages/chat/group_setup/edit_name/edit_name_binding.dart';
import '../pages/chat/group_setup/edit_name/edit_name_view.dart';
import '../pages/chat/group_setup/group_manage/group_manage_binding.dart';
import '../pages/chat/group_setup/group_manage/group_manage_view.dart';
import '../pages/chat/group_setup/group_member_list/group_member_list_binding.dart';
import '../pages/chat/group_setup/group_member_list/group_member_list_view.dart';
import '../pages/chat/group_setup/group_qrcode/group_qrcode_binding.dart';
import '../pages/chat/group_setup/group_qrcode/group_qrcode_view.dart';
import '../pages/chat/group_setup/group_setup_binding.dart';
import '../pages/chat/group_setup/group_setup_view.dart';
import '../pages/contacts/add_by_search/add_by_search_binding.dart';
import '../pages/contacts/add_by_search/add_by_search_view.dart';
import '../pages/contacts/add_method/add_method_binding.dart';
import '../pages/contacts/add_method/add_method_view.dart';
import '../pages/contacts/create_group/create_group_binding.dart';
import '../pages/contacts/create_group/create_group_view.dart';
import '../pages/contacts/friend_list/friend_list_binding.dart';
import '../pages/contacts/friend_list/friend_list_view.dart';
import '../pages/contacts/friend_requests/friend_requests_binding.dart';
import '../pages/contacts/friend_requests/friend_requests_view.dart';
import '../pages/contacts/friend_requests/process_friend_requests/process_friend_requests_binding.dart';
import '../pages/contacts/friend_requests/process_friend_requests/process_friend_requests_view.dart';
import '../pages/contacts/group_list/group_list_binding.dart';
import '../pages/contacts/group_list/group_list_view.dart';
import '../pages/contacts/group_profile_panel/group_profile_panel_binding.dart';
import '../pages/contacts/group_profile_panel/group_profile_panel_view.dart';
import '../pages/contacts/group_requests/group_requests_binding.dart';
import '../pages/contacts/group_requests/group_requests_view.dart';
import '../pages/contacts/group_requests/process_group_requests/process_group_requests_binding.dart';
import '../pages/contacts/group_requests/process_group_requests/process_group_requests_view.dart';
import '../pages/contacts/select_contacts/friend_list/friend_list_binding.dart';
import '../pages/contacts/select_contacts/friend_list/friend_list_view.dart';
import '../pages/contacts/select_contacts/group_list/group_list_binding.dart';
import '../pages/contacts/select_contacts/group_list/group_list_view.dart';
import '../pages/contacts/select_contacts/search_contacts/search_contacts_binding.dart';
import '../pages/contacts/select_contacts/search_contacts/search_contacts_view.dart';
import '../pages/contacts/select_contacts/select_contacts_binding.dart';
import '../pages/contacts/select_contacts/select_contacts_view.dart';
import '../pages/contacts/send_verification_application/send_verification_application_binding.dart';
import '../pages/contacts/send_verification_application/send_verification_application_view.dart';
import '../pages/contacts/user_profile_panel/friend_setup/friend_setup_binding.dart';
import '../pages/contacts/user_profile_panel/friend_setup/friend_setup_view.dart';
import '../pages/contacts/user_profile_panel/personal_info/personal_info_binding.dart';
import '../pages/contacts/user_profile_panel/personal_info/personal_info_view.dart';
import '../pages/contacts/user_profile_panel/set_remark/set_remark_binding.dart';
import '../pages/contacts/user_profile_panel/set_remark/set_remark_view.dart';
import '../pages/contacts/user_profile_panel/user_profile _panel_binding.dart';
import '../pages/contacts/user_profile_panel/user_profile _panel_view.dart';
import '../pages/forget_password/forget_password_binding.dart';
import '../pages/forget_password/forget_password_view.dart';
import '../pages/forget_password/reset_password/reset_password_binding.dart';
import '../pages/forget_password/reset_password/reset_password_view.dart';
import '../pages/global_search/global_search_binding.dart';
import '../pages/global_search/global_search_view.dart';
import '../pages/home/home_binding.dart';
import '../pages/home/home_view.dart';
import '../pages/login/login_binding.dart';
import '../pages/login/login_view.dart';
import '../pages/mine/about_us/about_us_binding.dart';
import '../pages/mine/about_us/about_us_view.dart';
import '../pages/mine/account_setup/account_setup_binding.dart';
import '../pages/mine/account_setup/account_setup_view.dart';
import '../pages/mine/blacklist/blacklist_binding.dart';
import '../pages/mine/blacklist/blacklist_view.dart';
import '../pages/mine/language_setup/language_setup_binding.dart';
import '../pages/mine/language_setup/language_setup_view.dart';
import '../pages/mine/my_info/my_info_binding.dart';
import '../pages/mine/my_info/my_info_view.dart';
import '../pages/register/register_binding.dart';
import '../pages/register/register_view.dart';
import '../pages/register/set_password/set_password_binding.dart';
import '../pages/register/set_password/set_password_view.dart';
import '../pages/register/set_self_info/set_self_info_binding.dart';
import '../pages/register/set_self_info/set_self_info_view.dart';
import '../pages/register/verify_phone/verify_phone_binding.dart';
import '../pages/register/verify_phone/verify_phone_view.dart';
import '../pages/splash/splash_binding.dart';
import '../pages/splash/splash_view.dart';
import '../pages/onboarding/onboarding_view.dart';
import '../tk_app/pages/tk_login/login/login_view.dart';
import '../tk_app/pages/tk_login/login/login_binding.dart' as tk_login;
import '../tk_app/pages/tk_login/login_code/login_code_view.dart';
import '../tk_app/pages/tk_login/login_code/login_code_binding.dart' as tk_login_code;
import '../tk_app/pages/tk_mine/tk_mine_binding.dart';
import '../tk_app/pages/tk_mine/tk_mine_view.dart';
import '../tk_app/pages/tk_mine/tk_my_info/tk_my_info_binding.dart';
import '../tk_app/pages/tk_mine/tk_my_info/tk_my_info_view.dart';
import '../tk_app/pages/tk_subscription/verify_password/binding.dart';
import '../tk_app/pages/tk_subscription/verify_password/view.dart';
import '../tk_app/pages/tk_subscription/payment_progress/binding.dart';
import '../tk_app/pages/tk_subscription/payment_progress/view.dart';
import '../tk_app/pages/tk_subscription/payment_success/binding.dart';
import '../tk_app/pages/tk_subscription/payment_success/view.dart';
import '../tk_app/pages/tk_subscription/payment_fail_page/binding.dart';
import '../tk_app/pages/tk_subscription/payment_fail_page/view.dart';
import '../tk_app/pages/tk_subscription/order_request_refund/binding.dart';
import '../tk_app/pages/tk_subscription/order_request_refund/view.dart';
import '../tk_app/pages/tk_subscription/order_refund_submit/binding.dart';
import '../tk_app/pages/tk_subscription/order_refund_submit/view.dart';
import '../tk_app/pages/tk_subscription/order_after_detail/binding.dart';
import '../tk_app/pages/tk_subscription/order_after_detail/view.dart';
import '../tk_app/pages/tk_subscription/order_detail/binding.dart';
import '../tk_app/pages/tk_subscription/order_detail/view.dart';
import '../tk_app/pages/tk_pay/tk_pay_home/binding.dart';
import '../tk_app/pages/tk_pay/tk_pay_home/view.dart';
import '../tk_app/pages/tk_pay/tk_pay_wallet/binding.dart';
import '../tk_app/pages/tk_pay/tk_pay_wallet/view.dart';
import '../tk_app/pages/tk_pay/tk_pay_bill_page/binding.dart';
import '../tk_app/pages/tk_pay/tk_pay_bill_page/view.dart';
import '../tk_app/pages/tk_pay/tk_pay_set_pass_word/binding.dart';
import '../tk_app/pages/tk_pay/tk_pay_set_pass_word/view.dart';
import '../tk_app/pages/tk_pay/tk_pay_change_pass_word/binding.dart';
import '../tk_app/pages/tk_pay/tk_pay_change_pass_word/view.dart';
import '../tk_app/pages/tk_pay/tk_pay_set/binding.dart';
import '../tk_app/pages/tk_pay/tk_pay_set/view.dart';
import '../tk_app/pages/tk_subscription/strategy_subscription/view.dart';
import '../tk_app/pages/tk_subscription/strategy_subscription/binding.dart';
import '../tk_app/pages/tk_guarantee/tk_guarantee_order/binding.dart';
import '../tk_app/pages/tk_guarantee/tk_guarantee_order/view.dart';
import '../tk_app/pages/tk_guarantee/tk_guarantee_order_detail/binding.dart';
import '../tk_app/pages/tk_guarantee/tk_guarantee_order_detail/view.dart';
import '../tk_app/pages/tk_guarantee/tk_guarantee_create_order/binding.dart';
import '../tk_app/pages/tk_guarantee/tk_guarantee_create_order/view.dart';
import '../tk_app/pages/tk_guarantee/tk_guarantee_refund_order/binding.dart';
import '../tk_app/pages/tk_guarantee/tk_guarantee_refund_order/view.dart';
import '../tk_app/pages/tk_guarantee/tk_guarantee_refund_order_detail/binding.dart';
import '../tk_app/pages/tk_guarantee/tk_guarantee_refund_order_detail/view.dart';
import '../tk_app/pages/tk_guarantee/t_k_order_to_pay/binding.dart';
import '../tk_app/pages/tk_guarantee/t_k_order_to_pay/view.dart';
import '../tk_app/pages/tk_channel/tk_channel_home/binding.dart';
import '../tk_app/pages/tk_channel/tk_channel_home/view.dart';
import '../tk_app/pages/tk_channel/tk_channel_content/binding.dart';
import '../tk_app/pages/tk_channel/tk_channel_content/view.dart';
import '../tk_app/pages/tk_channel/tk_product_detail/binding.dart';
import '../tk_app/pages/tk_channel/tk_product_detail/view.dart';

part 'app_routes.dart';

class AppPages {
  static _pageBuilder({
    required String name,
    required GetPageBuilder page,
    Bindings? binding,
    bool preventDuplicates = true,
    bool popGesture = true,
  }) =>
      GetPage(
        name: name,
        page: page,
        binding: binding,
        preventDuplicates: preventDuplicates,
        transition: Transition.cupertino,
        popGesture: popGesture,
      );

  static final routes = <GetPage>[
    _pageBuilder(
      name: '/onboarding',
      page: () => OnboardingPage(),
      binding: OnboardingBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.splash,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.login,
      page: () => TkLoginPage(),
      binding: tk_login.LoginBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tk_login,
      page: () => TkLoginPage(),
      binding: tk_login.LoginBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tk_login_code,
      page: () => TkLoginCodePage(sendModel: Get.arguments?['sendModel'], deviceId: Get.arguments?['deviceId'] ?? ''),
      binding: tk_login_code.LoginCodeBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.chat,
      page: () => ChatPage(),
      binding: ChatBinding(),
      preventDuplicates: false,
    ),
    _pageBuilder(
      name: AppRoutes.chatSetup,
      page: () => ChatSetupPage(),
      binding: ChatSetupBinding(),
      popGesture: false,
    ),
    _pageBuilder(
      name: AppRoutes.addContactsMethod,
      page: () => AddContactsMethodPage(),
      binding: AddContactsMethodBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.addContactsBySearch,
      page: () => AddContactsBySearchPage(),
      binding: AddContactsBySearchBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.userProfilePanel,
      page: () => UserProfilePanelPage(),
      binding: UserProfilePanelBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.personalInfo,
      page: () => PersonalInfoPage(),
      binding: PersonalInfoBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.friendSetup,
      page: () => FriendSetupPage(),
      binding: FriendSetupBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.setFriendRemark,
      page: () => SetFriendRemarkPage(),
      binding: SetFriendRemarkBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.sendVerificationApplication,
      page: () => SendVerificationApplicationPage(),
      binding: SendVerificationApplicationBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.groupProfilePanel,
      page: () => GroupProfilePanelPage(),
      binding: GroupProfilePanelBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.myInfo,
      page: () => MyInfoPage(),
      binding: MyInfoBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.accountSetup,
      page: () => AccountSetupPage(),
      binding: AccountSetupBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.blacklist,
      page: () => BlacklistPage(),
      binding: BlacklistBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.languageSetup,
      page: () => LanguageSetupPage(),
      binding: LanguageSetupBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.aboutUs,
      page: () => AboutUsPage(),
      binding: AboutUsBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.groupChatSetup,
      page: () => GroupSetupPage(),
      binding: GroupSetupBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.groupManage,
      page: () => GroupManagePage(),
      binding: GroupManageBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.editGroupName,
      page: () => EditGroupNamePage(),
      binding: EditGroupNameBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.groupMemberList,
      page: () => GroupMemberListPage(),
      binding: GroupMemberListBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.groupQrcode,
      page: () => GroupQrcodePage(),
      binding: GroupQrcodeBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.friendRequests,
      page: () => FriendRequestsPage(),
      binding: FriendRequestsBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.processFriendRequests,
      page: () => ProcessFriendRequestsPage(),
      binding: ProcessFriendRequestsBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.groupRequests,
      page: () => GroupRequestsPage(),
      binding: GroupRequestsBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.processGroupRequests,
      page: () => ProcessGroupRequestsPage(),
      binding: ProcessGroupRequestsBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.friendList,
      page: () => FriendListPage(),
      binding: FriendListBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.groupList,
      page: () => GroupListPage(),
      binding: GroupListBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.selectContacts,
      page: () => SelectContactsPage(),
      binding: SelectContactsBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.selectContactsFromFriends,
      page: () => SelectContactsFromFriendsPage(),
      binding: SelectContactsFromFriendsBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.selectContactsFromGroupMember,
      page: () => SelectContactsFromGroupMemberPage(),
      binding: SelectContactsFromGroupMemberBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.selectContactsFromGroup,
      page: () => SelectContactsFromGroupPage(),
      binding: SelectContactsFromGroupBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.selectContactsFromSearch,
      page: () => SelectContactsFromSearchPage(),
      binding: SelectContactsFromSearchBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.createGroup,
      page: () => CreateGroupPage(),
      binding: CreateGroupBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.globalSearch,
      page: () => GlobalSearchPage(),
      binding: GlobalSearchBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.register,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.verifyPhone,
      page: () => VerifyPhonePage(),
      binding: VerifyPhoneBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.setPassword,
      page: () => SetPasswordPage(),
      binding: SetPasswordBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.setSelfInfo,
      page: () => SetSelfInfoPage(),
      binding: SetSelfInfoBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.forgetPassword,
      page: () => ForgetPasswordPage(),
      binding: ForgetPasswordBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.resetPassword,
      page: () => ResetPasswordPage(),
      binding: ResetPasswordBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkMine,
      page: () => TkMinePage(),
      binding: TkMineBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkMyInfo,
      page: () => TkMyInfoPage(),
      binding: TkMyInfoBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.verifyPassword,
      page: () => VerifyPasswordPage(),
      binding: VerifyPasswordBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.paymentProgress,
      page: () => PaymentProgressPage(),
      binding: PaymentProgressBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.paymentSuccess,
      page: () => PaymentSuccessPage(),
      binding: PaymentSuccessBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.paymentFail,
      page: () => PaymentFailPage(),
      binding: PaymentFailPageBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.orderRequestRefund,
      page: () => OrderRequestRefundPage(),
      binding: OrderRequestRefundBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.orderRefundSubmit,
      page: () => OrderRefundSubmitPage(),
      binding: OrderRefundSubmitBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.orderAfterDetail,
      page: () => OrderAfterDetailPage(),
      binding: OrderAfterDetailBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.orderDetail,
      page: () => OrderDetailPage(),
      binding: OrderDetailBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkPayHome,
      page: () => TkPayHomePage(),
      binding: TkPayHomeBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkPayWallet,
      page: () => TkPayWalletPage(),
      binding: TkPayWalletBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkPayBill,
      page: () => TkPayBillPagePage(),
      binding: TkPayBillPageBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkPaySet,
      page: () => TkPaySetPage(),
      binding: TkPaySetBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkPaySetPassWord,
      page: () => TkPaySetPassWordPage(),
      binding: TkPaySetPassWordBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkPayChangePassWord,
      page: () => TkPayChangePassWordPage(),
      binding: TkPayChangePassWordBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.strategySubscription,
      page: () => StrategySubscriptionPage(),
      binding: StrategySubscriptionBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkGuaranteeOrder,
      page: () => TkGuaranteeOrderPage(),
      binding: TkGuaranteeOrderBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkGuaranteeOrderDetail,
      page: () => TkGuaranteeOrderDetailPage(),
      binding: TkGuaranteeOrderDetailBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkGuaranteeCreateOrder,
      page: () => TkGuaranteeCreateOrderPage(),
      binding: TkGuaranteeCreateOrderBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkGuaranteeRefundOrder,
      page: () => TkGuaranteeRefundOrderPage(),
      binding: TkGuaranteeRefundOrderBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkGuaranteeRefundOrderDetail,
      page: () => TkGuaranteeRefundOrderDetailPage(),
      binding: TkGuaranteeRefundOrderDetailBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkOrderToPay,
      page: () => TKOrderToPayPage(),
      binding: TKOrderToPayBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkChannelHome,
      page: () => TkChannelHomePage(),
      binding: TkChannelHomeBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkChannelContent,
      page: () => TkChannelContentPage(),
      binding: TkChannelContentBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.tkProductDetail,
      page: () => TkProductDetailPage(),
      binding: TkProductDetailBinding(),
    ),
    _pageBuilder(
      name: AppRoutes.redPacket,
      page: () => ChatRedPacketPage(),
      binding: ChatRedPacketBinding(),
    ),
  ];
}
