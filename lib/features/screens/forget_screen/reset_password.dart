import 'package:apna_store/Common/Widgets/button/elevated_button.dart';
import 'package:apna_store/features/screens/login/login_screen.dart';
import 'package:apna_store/utils/constants/images.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:apna_store/utils/constants/texts.dart';
import 'package:apna_store/utils/helper/device_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.clear),
            onPressed: () {
              Get.offAll(() => LoginScreen());
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: Column(
            children: [
              Image.asset(
                UImages.mailSentImage,
                height: UDeviceHelper.getScreenWidth(context) * 0.6 ,
              ),
              SizedBox(height: USizes.spaceBtwSections),
              Text(
                UTexts.resetPasswordTitle,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: USizes.spaceBtwItems / 2),
              Text(
                'afaqueahmed.dev@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              SizedBox(height: USizes.spaceBtwItems),

              Text(
                UTexts.resetPasswordSubTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: USizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: onbordingNextButton(
                  onPress: () {},
                  child: Text(UTexts.done),
                ),
              ),

              SizedBox(height: USizes.spaceBtwItems),

              Text(
                UTexts.resendEmail,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
