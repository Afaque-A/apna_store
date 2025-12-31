import 'package:apna_store/Common/Widgets/images/rounded_image.dart';
import 'package:apna_store/features/shop/controller/home/home_controller.dart';
import 'package:apna_store/features/shop/screen/home_screen/widget/banners_dot_indicator.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map(
                (banner) => RoundedImage(imageUrl: banner, fit: BoxFit.cover),
              )
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              controller.onBannerPageChanged(index);
            },
          ),
          carouselController: controller.carouselController,
        ),
        SizedBox(height: USizes.spaceBtwItems),
        HomeSliderIndicator(),
      ],
    );
  }
}