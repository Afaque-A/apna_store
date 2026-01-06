import 'package:apna_store/Common/Widgets/images/rounded_image.dart';
import 'package:apna_store/Common/Widgets/rounded_container.dart';
import 'package:apna_store/utils/constants/colors.dart';
import 'package:apna_store/utils/constants/images.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandsCard extends StatelessWidget {
  const BrandsCard({super.key, this.showBorder = true});

  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      width: USizes.brandCardWidth,
      height: USizes.brandCardHeight,
      showBorder: showBorder,
      padding: EdgeInsets.all(USizes.sm),
      backgroundColor: Colors.transparent,
      child: Row(
        children: [
          RoundedImage(imageUrl: UImages.bataLogo),
          SizedBox(width: USizes.spaceBtwItems / 2),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      'Bata',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    SizedBox(width: USizes.sm),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Icon(
                          Iconsax.verify5,
                          color: UColors.primary,
                          size: USizes.iconXs,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  '172 Products kjshd;slkdl',
                  style: Theme.of(context).textTheme.labelMedium,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
