import 'package:apna_store/features/controller/onbording/onbording_controller.dart';
import 'package:apna_store/utils/helper/device_helpers.dart';
import 'package:flutter/material.dart';

class onbordingNextButton extends StatelessWidget {
  onbordingNextButton({super.key, required this.onPress, required this.child});

  final VoidCallback onPress;
  final Widget child;

  final controller = OnbordingController.instance;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: UDeviceHelper.getScreenWidth(context),
      child: ElevatedButton(onPressed: onPress, child: child),
    );
  }
}
