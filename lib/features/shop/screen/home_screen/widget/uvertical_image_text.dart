import 'package:apna_store/Common/Widgets/Circulor_container.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UverticalImageText extends StatelessWidget {
  const UverticalImageText({
    super.key,
    required this.title,
    required this.image,
    required this.colortext,
    required this.backgroundColor,
    required this.onTap,
  });

  final String title;
  final String image;
  final Color colortext;
  final Color backgroundColor ;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          circulorContainer(
            height: 56,
            width: 56,
            padding: const EdgeInsets.all(USizes.sm),
            backgroundColor: backgroundColor,
            context,
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: USizes.spaceBtwItems / 2),
          SizedBox(
            width: 55,
            child: Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: colortext),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
