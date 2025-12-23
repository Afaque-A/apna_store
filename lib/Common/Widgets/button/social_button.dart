import 'package:apna_store/utils/constants/colors.dart';
import 'package:apna_store/utils/constants/images.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

Widget socialButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: UColors.grey),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Image.asset(
            UImages.googleIcon,
            height: USizes.iconMd,
            width: USizes.iconMd,
          ),
        ),
      ),
      SizedBox(width: USizes.spaceBtwItems),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: UColors.grey),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Image.asset(
            UImages.facebookIcon,
            height: USizes.iconMd,
            width: USizes.iconMd,
          ),
        ),
      ),
    ],
  );
}
