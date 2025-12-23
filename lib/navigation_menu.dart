import 'package:apna_store/features/shop/screen/cart_screen/wishlist_screen.dart';
import 'package:apna_store/features/shop/screen/home_screen/home_screen.dart';
import 'package:apna_store/features/shop/screen/profile_screen/profile_screen.dart';
import 'package:apna_store/features/shop/screen/store_screen/store_screen.dart';
import 'package:apna_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenuScreen extends StatelessWidget {
  NavigationMenuScreen({super.key});

  final controller = Get.put(NavigationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          child: NavigationBar(
            elevation: 0,
            backgroundColor: UColors.white,
            indicatorColor: UColors.black.withValues(alpha: 0.1),
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (int index) {
              controller.selectedIndex.value = index;
            },
            destinations: [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
              NavigationDestination(
                icon: Icon(Iconsax.heart),
                label: 'Wishlist',
              ),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  List<Widget> screen = [
    HomeScreen(),
    StoreScreen(),
    WishlistScreen(),
    ProfileScreen(),
  ];
}
