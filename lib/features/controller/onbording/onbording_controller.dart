import 'package:apna_store/features/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnbordingController extends GetxController {
  static OnbordingController get instance => Get.find();

  //  Variables
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;
  // update page indicator when page chnages
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  // jump to next  specific  page
  void dotNavigationClick(index) {
    pageController.jumpToPage(index);
  }

  // update to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  // jump to last page
  void jumpToLastPage() {
    pageController.jumpToPage(2);
  }
}
