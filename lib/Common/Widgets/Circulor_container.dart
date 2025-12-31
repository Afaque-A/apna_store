import 'package:apna_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

Widget circulorContainer(
  BuildContext context, {
  final double height = 400,
  final double width = 400,
  final Color backgroundColor = UColors.white,
  final EdgeInsetsGeometry? padding,
  final EdgeInsetsGeometry? margin,
  final Widget? child,
}) {
  return Container(
    height: height,
    width: width,
    padding: padding,
    margin: margin,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(1000),
      color: backgroundColor,
    ),
    child: child,
  );
}
