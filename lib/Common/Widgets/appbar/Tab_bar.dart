import 'package:apna_store/utils/constants/colors.dart';
import 'package:apna_store/utils/helper/device_helpers.dart';
import 'package:flutter/material.dart';

class UTabBar extends StatelessWidget implements PreferredSizeWidget {
  const UTabBar({super.key, required this.tab});
  final List<Widget> tab;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: UColors.white,
      child: TabBar(
        isScrollable: true,
        labelColor: UColors.primary,
        unselectedLabelColor: UColors.darkGrey,
        indicatorColor: UColors.primary,
        tabs: tab,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(UDeviceHelper.getAppBarHeight());
}