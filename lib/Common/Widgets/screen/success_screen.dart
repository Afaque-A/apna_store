import 'package:apna_store/Common/Widgets/button/elevated_button.dart';
import 'package:apna_store/utils/constants/images.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:apna_store/utils/constants/texts.dart';
import 'package:apna_store/utils/helper/device_helpers.dart';
import 'package:flutter/material.dart';

class SuccessScreenScreen extends StatelessWidget {
  const SuccessScreenScreen({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.onPress,
  });

  final String title, subTitle, image;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: Column(
            children: [
              Image.asset(
                image,
                height: UDeviceHelper.getScreenWidth(context) * 0.6,
              ),
              SizedBox(height: USizes.spaceBtwSections),
              Text(title, style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(height: USizes.spaceBtwItems),

              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: USizes.spaceBtwSections),

              SizedBox(
                width: double.infinity,
                child: onbordingNextButton(
                  onPress: onPress,
                  child: Text(UTexts.uContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
