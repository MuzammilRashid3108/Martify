import 'package:flutter/material.dart';
import 'package:martify/utils/constants/sizes.dart';
import 'package:martify/utils/controllers/on_boarding_controllers.dart';
import 'package:martify/utils/device/device_utilities.dart';

class OnBoardingSkipButton extends StatefulWidget {
  const OnBoardingSkipButton({super.key});

  @override
  State<OnBoardingSkipButton> createState() => _OnBoardingSkipButtonState();
}

class _OnBoardingSkipButtonState extends State<OnBoardingSkipButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MDeviceUtils.getStatusBarHeight(context) + 5,
      right: MAppSizes.paddingMedium - 4,
      child: TextButton(
        onPressed: () {
          OnBoardingControllers.instance.skipPage();
        },
        child:  Text(
          "Skip",
          
          style: Theme.of(context).textTheme.labelLarge
        ),
      ),
    );
  }
}
