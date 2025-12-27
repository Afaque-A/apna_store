import 'package:apna_store/Common/Widgets/Circulor_container.dart';
import 'package:apna_store/features/shop/screen/home_screen/widget/rounded_edge_container.dart';
import 'package:apna_store/utils/constants/colors.dart';
import 'package:apna_store/utils/helper/device_helpers.dart';
import 'package:flutter/material.dart';

Widget primaryHeaderContainer(BuildContext context, final Widget child) {
  return RoundedEdgeContainer(
    child: Container(
      height: UDeviceHelper.getScreenHeight(context) * 0.4,

      color: UColors.primary,
      child: Stack(
        children: [
          Positioned(
            top: -170,
            right: -180,
            child: circulorContainer(
              height: UDeviceHelper.getScreenHeight(context) * 0.4,
              width: UDeviceHelper.getScreenHeight(context) * 0.4,
              backgroundColor: UColors.white.withValues(alpha: 0.1),

              context,
            ),
          ),

          Positioned(
            bottom: -50,
            right: -280,
            child: circulorContainer(
              height: UDeviceHelper.getScreenHeight(context) * 0.4,
              width: UDeviceHelper.getScreenHeight(context) * 0.4,
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
