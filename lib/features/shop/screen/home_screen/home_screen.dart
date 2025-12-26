import 'package:apna_store/features/shop/screen/home_screen/widget/primary_header_container.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: primaryHeaderContainer(context, Container()),
    );
  }
}
