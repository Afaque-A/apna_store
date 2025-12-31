import 'package:apna_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CirculorIcon extends StatelessWidget {
  const CirculorIcon({
    super.key,
    this.height,
    this.width,
    this.size = USizes.iconMd,
    required this.icon,
    this.iconColor,
    this.backgroundColor,
    this.onPressed,
  });

  final double? height, width, size;
  final IconData icon;
  final Color? iconColor, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
            backgroundColor ??
            Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, size: size, color: iconColor),
      ),
    );
  }
}
