
import 'package:apna_store/Common/Widgets/brands/showcase_brand.dart';
import 'package:apna_store/Common/Widgets/product_Card/product_card_vertical.dart';
import 'package:apna_store/Common/Widgets/text/section_heading.dart';
import 'package:apna_store/utils/constants/images.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UCategoryTab extends StatelessWidget {
  const UCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
          child: Column(
            children: [
              ShowCaseBrand(
                image: [
                  UImages.productImage47,
                  UImages.productImage48,
                  UImages.productImage49a,
                ],
              ),
              ShowCaseBrand(
                image: [
                  UImages.productImage47,
                  UImages.productImage48,
                  UImages.productImage49a,
                ],
              ),

              SizedBox(height: USizes.spaceBtwSections),
              SectionHeading(title: 'You might like', onPressed: () {}),

              GridView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,

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
    );
  }
}
