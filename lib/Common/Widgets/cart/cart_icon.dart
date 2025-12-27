
import 'package:apna_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
                  children: [
                    IconButton(
                      icon: const Icon(Iconsax.shopping_bag),
                      onPressed: () {},
                      color: UColors.light,
                    ),
                    Positioned(
                      right: 6.0,
                      child: Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          shape: BoxShape.circle,
                          border: Border.all(color: UColors.white, width: 0.5),
                        ),
                        child: Text(
                          '3',
                          textAlign: TextAlign.center,
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall!.apply(color: UColors.white),
                        ),
                      ),
                    ),
                  ],
                );
  }
}