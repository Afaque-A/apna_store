import 'package:apna_store/utils/constants/colors.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: USizes.md),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
        boxShadow: [
          BoxShadow(
            color: UColors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        color: UColors.white,
      ),
      child: Row(
        children: [
          const Icon(Icons.search),
          SizedBox(width: USizes.spaceBtwItems),
          Text(
            'Search for products',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
