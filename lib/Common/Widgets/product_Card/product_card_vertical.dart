import 'package:apna_store/Common/Widgets/images/rounded_image.dart';
import 'package:apna_store/Common/Widgets/rounded_container.dart';
import 'package:apna_store/Common/Widgets/text/product_price_text.dart';
import 'package:apna_store/Common/Widgets/text/product_title_text.dart';
import 'package:apna_store/utils/constants/colors.dart';
import 'package:apna_store/utils/constants/images.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,

        padding: const EdgeInsets.all(1),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(USizes.productImageRadius),
          color: UColors.light,
          boxShadow: [
            BoxShadow(
              color: UColors.light.withValues(alpha: 0.1),
              spreadRadius: 7,
              blurRadius: 50,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            RoundedContainer(
              padding: const EdgeInsets.all(USizes.sm / 2),
              // backgroundColor: Colors.white,
              child: Stack(
                children: [
                  RoundedImage(
                    imageUrl: UImages.productImage15,
                    backgroundColor: UColors.white,
                  ),

                  Positioned(
                    top: 5,
                    left: 5,
                    child: RoundedContainer(
                      width: 45,
                      radius: USizes.sm,
                      backgroundColor: UColors.yellow.withValues(alpha: 0.8),
                      padding: EdgeInsets.symmetric(
                        horizontal: USizes.sm,
                        vertical: USizes.xs,
                      ),
                      child: Text(
                        '20%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: UColors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 5,
                    child: Icon(
                      Iconsax.heart5,
                      color: Colors.red,
                      size: USizes.iconLg,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: USizes.spaceBtwItems / 2),
            Padding(
              padding: const EdgeInsets.only(left: USizes.sm),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(title: 'Blue bata shoes', smallSize: false),

                  Row(
                    children: [
                      Text(
                        'Bata',
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium!.apply(color: UColors.primary),

                        overflow: TextOverflow.ellipsis,
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Iconsax.verify5,
                          color: UColors.primary,
                          size: USizes.iconXs,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: USizes.sm),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductPriceText(price: '65'),
                  Container(
                    height: USizes.iconLg * 1.2,
                    width: USizes.iconLg * 1.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(USizes.productImageRadius),
                        bottomRight: Radius.circular(USizes.productImageRadius),
                      ),
                      color: UColors.primary,
                    ),
                    child: const Icon(Iconsax.add, color: UColors.white),
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
