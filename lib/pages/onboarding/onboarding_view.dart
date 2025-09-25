import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes/app_pages.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingLogic());
  }
}

class OnboardingPage extends StatelessWidget {
  final logic = Get.find<OnboardingLogic>();

  OnboardingPage({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 12),
                child: TextButton(
                  onPressed: logic.finishOnboarding,
                  child: const Text('Skip', style: TextStyle(color: Colors.grey, fontSize: 16)),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: logic.onPageChanged,
                children: [
                  _OnboardingImage(image: ImageRes.onboarding_checkity_illustration.toImage),
                  _OnboardingImage(image: ImageRes.onboarding_swiftshare_illustration.toImage),
                  _OnboardingImage(image: ImageRes.onboarding_fingertips_illustration.toImage),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Obx(() => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        width: 16,
                        height: 2,
                        decoration: BoxDecoration(
                          color: logic.currentPage.value == index ? const Color(0xFF9C27B0) : Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ));
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: ElevatedButton(
                onPressed: () {
                  if (logic.currentPage.value < 2) {
                    _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                  } else {
                    logic.finishOnboarding();
                  }
                },
                child: Obx(() => Text(logic.currentPage.value < 2 ? 'Next' : 'Start')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OnboardingImage extends StatelessWidget {
  final Widget image;
  const _OnboardingImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 64),
        image,
      ],
    );
  }
}

class OnboardingLogic extends GetxController {
  final RxInt currentPage = 0.obs;

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  Future<void> finishOnboarding() async {
    await OnboardingUtils.markCompleted();
    Get.offAllNamed(AppRoutes.tk_login);
  }
}

class OnboardingUtils {
  static const _k = 'onboarding_completed';

  static Future<bool> isCompleted() async {
    final sp = await SharedPreferences.getInstance();
    return sp.getBool(_k) ?? false;
  }

  static Future<void> markCompleted() async {
    final sp = await SharedPreferences.getInstance();
    await sp.setBool(_k, true);
  }
}


