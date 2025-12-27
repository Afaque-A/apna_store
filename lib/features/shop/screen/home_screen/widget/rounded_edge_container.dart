

import 'package:apna_store/features/shop/screen/home_screen/widget/cliper.dart';
import 'package:flutter/material.dart';

class RoundedEdgeContainer extends StatelessWidget {
  const RoundedEdgeContainer({super.key, required this.child});
 final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: UCustomCliper(),
      child: child,
    );
  }
}