import 'package:apna_store/utils/constants/sizes.dart';
import 'package:apna_store/utils/helper/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.onLeadingIconPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? onLeadingIconPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: USizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        title: title,
        leading: showBackArrow
            ? IconButton(
                icon: Icon(Iconsax.arrow_left_2),
                onPressed: () => Get.back(),
              )
            : leadingIcon != null
            ? IconButton(
                icon: Icon(leadingIcon),
                onPressed: onLeadingIconPressed,
              )
            : null,
        actions: actions,
      ),
    );

    // leading
  }

  @override
  Size get preferredSize => Size.fromHeight(UDeviceHelper.getAppBarHeight());
}
