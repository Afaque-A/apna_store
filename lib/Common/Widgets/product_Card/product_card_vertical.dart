import 'package:apna_store/Common/Widgets/icons/circulor_icon.dart';
import 'package:apna_store/Common/Widgets/images/rounded_image.dart';
import 'package:apna_store/Common/Widgets/rounded_container.dart';
import 'package:apna_store/utils/constants/colors.dart';
import 'package:apna_store/utils/constants/images.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(USizes.productImageRadius),
        color: UColors.white,
        boxShadow: [
          BoxShadow(
            color: UColors.darkGrey.withValues(alpha: 0.1),
            spreadRadius: 7,
            blurRadius: 50,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          RoundedContainer(
            padding: const EdgeInsets.all(USizes.sm),
            backgroundColor: UColors.light,
            child: Stack(
              children: [
                RoundedImage(imageUrl: UImages.mobileIcon,),

                Positioned(
                  top: 12,
                  child: RoundedContainer(
                    width: 50,
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
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: CirculorIcon(
                    icon: Iconsax.heart5,
                    iconColor: Colors.red,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
