import 'package:apna_store/Common/Widgets/button/elevated_button.dart';
import 'package:apna_store/features/controller/onbording/onbording_controller.dart';
import 'package:apna_store/features/screens/onbording/onbording_widget/onbording_page.dart';
import 'package:apna_store/utils/constants/images.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:apna_store/utils/constants/texts.dart';
import 'package:apna_store/utils/helper/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordingScreen extends StatelessWidget {
  OnbordingScreen({super.key});

  final controller = Get.put(OnbordingController());
  final controller1 = OnbordingController.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: (index) => controller.updatePageIndicator(index),
              children: [
                OnbordingPage(
                  title: UTexts.onBoardingTitle1,
                  subTitle: UTexts.onBoardingSubTitle1,
                  image: UImages.onboarding1Animation,
                ),
                OnbordingPage(
                  title: UTexts.onBoardingTitle2,
                  subTitle: UTexts.onBoardingSubTitle2,
                  image: UImages.onboarding2Animation,
                ),
                OnbordingPage(
                  title: UTexts.onBoardingTitle3,
                  subTitle: UTexts.onBoardingSubTitle3,
                  image: UImages.onboarding3Animation,
                ),
              ],
            ),
            Positioned(
              bottom: UDeviceHelper.getBottomNavigationBarHeight() * 5,
              left: UDeviceHelper.getScreenWidth(context) / 3,
              right: UDeviceHelper.getScreenWidth(context) / 3,

              child: SmoothPageIndicator(
                controller: controller1.pageController,
                onDotClicked: (index) => controller1.dotNavigationClick(index),

                count: 3,

                effect: ExpandingDotsEffect(
                  dotHeight: 6,
                  dotWidth: 12,
                  activeDotColor: Colors.blue,
                  dotColor: Colors.grey.shade300,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: USizes.spaceBtwItems,
              child: onbordingNextButton(
                onPress: controller1.nextPage,
                child: Obx(
                  () => Text(
                    controller1.currentPageIndex.value == 2
                        ? "Get Started"
                        : 'Next',
                  ),
                ),
              ),
            ),

            Positioned(
              top: UDeviceHelper.getAppBarHeight(),
              right: 0,

              child: TextButton(
                onPressed: controller1.jumpToLastPage,
                child: Obx(
                  () => Text(
                    controller1.currentPageIndex.value == 2 ? "" : "Skip",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
