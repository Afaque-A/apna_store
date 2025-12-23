import 'package:apna_store/Common/Widgets/button/divider_text.dart';
import 'package:apna_store/Common/Widgets/button/elevated_button.dart';
import 'package:apna_store/Common/Widgets/button/social_button.dart';
import 'package:apna_store/features/screens/signup/verify_email.dart';
import 'package:apna_store/utils/constants/colors.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:apna_store/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                UTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              SizedBox(height: USizes.spaceBtwSections),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelText: UTexts.firstName,
                      ),
                    ),
                  ),
                  SizedBox(width: USizes.spaceBtwInputFields),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelText: UTexts.lastName,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: USizes.spaceBtwItems),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: UTexts.email,
                ),
              ),

              SizedBox(height: USizes.spaceBtwItems),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.call),
                  labelText: UTexts.phoneNumber,
                ),
              ),
              SizedBox(height: USizes.spaceBtwItems),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: UTexts.password,
                ),
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          text: UTexts.iAgreeTo,
                        ),
                        TextSpan(
                          text: UTexts.privacyPolicy,
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(
                                color: UColors.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: UColors.primary,
                              ),
                        ),
                        TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          text: " ${UTexts.and} ",
                        ),
                        TextSpan(
                          text: UTexts.termsOfUse,
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(
                                color: UColors.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: UColors.primary,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: USizes.spaceBtwSections),
              onbordingNextButton(
                onPress: () {
                  Get.to(() => VerifyEmailScreen());
                },
                child: Text(UTexts.createAccount),
              ),
              SizedBox(height: USizes.spaceBtwItems),
              dividerText(title: UTexts.orSignupWith),

              SizedBox(height: USizes.spaceBtwSections),
              socialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
