import 'package:apna_store/Common/Widgets/button/elevated_button.dart';
import 'package:apna_store/features/screens/forget_screen/reset_password.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:apna_store/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                UTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: USizes.spaceBtwItems / 2),

              Text(
                UTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: USizes.spaceBtwSections * 1.5),
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: UTexts.email,
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwItems),
                  onbordingNextButton(
                    onPress: () {
                      Get.to(() => ResetPasswordScreen());
                    },
                    child: Text(UTexts.createAccount),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
