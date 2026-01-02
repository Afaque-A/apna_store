import 'package:apna_store/Common/Widgets/appbar/app_bar.dart';
import 'package:apna_store/Common/Widgets/cart/cart_icon.dart';
import 'package:apna_store/Common/Widgets/product_Card/product_card_vertical.dart';
import 'package:apna_store/Common/Widgets/searchbar/searchbar.dart';
import 'package:apna_store/Common/Widgets/text/section_heading.dart';
import 'package:apna_store/features/shop/controller/home/home_controller.dart';
import 'package:apna_store/features/shop/screen/home_screen/widget/primary_header_container.dart';
import 'package:apna_store/features/shop/screen/home_screen/widget/promo_slider.dart';
import 'package:apna_store/features/shop/screen/home_screen/widget/uvertical_image_text.dart';
import 'package:apna_store/utils/constants/images.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:apna_store/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // upper part of the home screen
            Stack(
              children: [
                SizedBox(height: USizes.homePrimaryHeaderHeight + 10),
                primaryHeaderContainer(
                  context,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UAppBar(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              UTexts.homeAppBarTitle,
                              style: Theme.of(context).textTheme.labelMedium!
                                  .apply(color: Colors.grey),
                            ),
                            Text(
                              'Afaque Ahmed',
                              style: Theme.of(context).textTheme.headlineMedium!
                                  .apply(color: Colors.white),
                            ),
                          ],
                        ),

                        actions: [CartIcon()],
                      ),
                      SizedBox(height: USizes.spaceBtwSections),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: USizes.defaultSpace,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              UTexts.popularCategories,
                              style: Theme.of(context).textTheme.headlineMedium!
                                  .apply(color: Colors.white),
                            ),
                            SizedBox(height: USizes.spaceBtwItems),
                            SizedBox(
                              height: 80,
                              child: ListView.separated(
                                separatorBuilder: (context, index) =>
                                    SizedBox(width: USizes.spaceBtwItems),
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return UverticalImageText(
                                    title: UTexts.popularCategories,
                                    image: UImages.sportsIcon,
                                    colortext: Colors.white,
                                    backgroundColor: Colors.white,
                                    onTap: () {},
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  bottom: 0,
                  left: USizes.spaceBtwItems,
                  right: USizes.spaceBtwItems,
                  child: const Searchbar(),
                ),
              ],
            ),

            SizedBox(height: USizes.spaceBtwItems / 2),

            // lower part of the home screen
            Padding(
              padding: const EdgeInsets.all(USizes.defaultSpace),
              child: Column(
                children: [
                  PromoSlider(
                    banners: [
                      UImages.homeBanner1,
                      UImages.homeBanner2,
                      UImages.homeBanner3,
                      UImages.homeBanner4,
                      UImages.homeBanner5,
                      UImages.homeBanner6,
                    ],
                  ),

                  SizedBox(height: USizes.spaceBtwItems),
                  SectionHeading(title: 'Popular Products', onPressed: () {}),

                  // SizedBox(height: USizes.spaceBtwItems),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,

                      mainAxisSpacing: USizes.gridViewSpacing,
                      crossAxisSpacing: USizes.gridViewSpacing,
                      mainAxisExtent: 350,
                    ),
                    itemBuilder: (context, index) {
                      return ProductCardVertical();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
