import 'package:apna_store/Common/Widgets/Circulor_container.dart';
import 'package:apna_store/features/shop/screen/home_screen/widget/rounded_edge_container.dart';
import 'package:apna_store/utils/constants/colors.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
    required this.height,
  });
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return RoundedEdgeContainer(
      child: Container(
        height: height,

        color: UColors.primary,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -180,
              child: circulorContainer(
                height: height,
                width: USizes.homePrimaryHeaderHeight,
                backgroundColor: UColors.white.withValues(alpha: 0.1),

                context,
              ),
            ),

            Positioned(
              bottom: -50,
              right: -280,
              child: circulorContainer(
                height: USizes.homePrimaryHeaderHeight,
                width: USizes.homePrimaryHeaderHeight,
                backgroundColor: UColors.white.withValues(alpha: 0.1),
                context,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
