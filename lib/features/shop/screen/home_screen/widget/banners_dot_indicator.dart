import 'package:apna_store/features/shop/controller/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSliderIndicator extends StatelessWidget {
  const HomeSliderIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Obx(
      () => SmoothPageIndicator(
        controller: PageController(
          initialPage: controller.currentBannerIndex.value,
        ),

        count: 6,

        effect: ExpandingDotsEffect(
          dotHeight: 6,
          dotWidth: 12,
          activeDotColor: Colors.blue,
          dotColor: Colors.grey.shade300,
        ),
      ),
    );
  }
}
