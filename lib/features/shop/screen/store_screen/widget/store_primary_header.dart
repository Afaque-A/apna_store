import 'package:apna_store/Common/Widgets/appbar/app_bar.dart';
import 'package:apna_store/Common/Widgets/cart/cart_icon.dart';
import 'package:apna_store/Common/Widgets/searchbar/searchbar.dart';
import 'package:apna_store/features/shop/screen/home_screen/widget/primary_header_container.dart';
import 'package:apna_store/utils/constants/colors.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class StorePrimaryHeader extends StatelessWidget {
  const StorePrimaryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
                children: [
                  SizedBox(height: USizes.storePrimaryHeaderHeight + 10),
                  PrimaryHeaderContainer(
                    height: USizes.storePrimaryHeaderHeight,
                    child: UAppBar(
                      title: Text(
                        'Store',
                        style: Theme.of(
                          context,
                        ).textTheme.headlineMedium!.apply(color: UColors.white),
                      ),
                      actions: [const CartIcon()],
                    ),
                  ),

                  Positioned(
                    bottom: 0,
                    left: USizes.spaceBtwItems,
                    right: USizes.spaceBtwItems,
                    child: const Searchbar(),
                  ),
                ],
              );
  }
}