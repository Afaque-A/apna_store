import 'package:apna_store/Common/Widgets/appbar/app_bar.dart';
import 'package:apna_store/Common/Widgets/cart/cart_icon.dart';
import 'package:apna_store/features/shop/screen/home_screen/widget/primary_header_container.dart';
import 'package:apna_store/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: primaryHeaderContainer(
        context,
        Column(
          children: [
            UAppBar(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    UTexts.homeAppBarTitle,
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium!.apply(color: Colors.grey),
                  ),
                  Text(
                    'Afaque Ahmed',
                    style: Theme.of(
                      context,
                    ).textTheme.headlineMedium!.apply(color: Colors.white),
                  ),
                ],
              ),

              actions: [CartIcon()],
            ),
          ],
        ),
      ),
    );
  }
}
