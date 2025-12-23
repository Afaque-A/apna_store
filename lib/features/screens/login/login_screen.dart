import 'package:apna_store/Common/Widgets/button/divider_text.dart';
import 'package:apna_store/Common/Widgets/button/elevated_button.dart';
import 'package:apna_store/Common/Widgets/button/social_button.dart';
import 'package:apna_store/features/screens/forget_screen/forget_screen.dart';
import 'package:apna_store/features/screens/signup/sign_up_screen.dart';
import 'package:apna_store/navigation_menu.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:apna_store/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    UTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: USizes.sm),
                  Text(
                    UTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              SizedBox(height: USizes.spaceBtwSections),

              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefix: Icon(Iconsax.direct_right),
                      labelText: UTexts.email,
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwInputFields),
                  TextFormField(
                    decoration: InputDecoration(
                      prefix: Icon(Iconsax.password_check),
                      suffixIcon: Icon(Iconsax.eye),

                      labelText: UTexts.password,
                    ),
                  ),
                ],
              ),
              SizedBox(height: USizes.spaceBtwInputFields),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: ((value) {})),
                      Text(UTexts.rememberMe),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(() => const ForgetScreen());
                    },
                    child: Text(UTexts.forgetPassword),
                  ),
                ],
              ),

              SizedBox(height: USizes.spaceBtwSections),
              onbordingNextButton(
                onPress: () {
                  Get.to(() => NavigationMenuScreen());
                },
                child: Text(UTexts.signIn),
              ),
              SizedBox(height: USizes.spaceBtwItems / 2),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Get.to(() => const SignUpScreen());
                  },
                  child: Text(UTexts.createAccount),
                ),
              ),
              SizedBox(height: USizes.spaceBtwItems),
              dividerText(title: UTexts.orSignInWith),

              SizedBox(height: USizes.spaceBtwSections),
              socialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
