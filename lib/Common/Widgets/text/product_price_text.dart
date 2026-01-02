import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    super.key,
    this.currentsign = "\$",
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String currentsign;
  final String price;
  final int maxLines;
  final bool isLarge, lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currentsign + price,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            )
          : Theme.of(context).textTheme.headlineLarge!.apply(
              decoration: lineThrough
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
