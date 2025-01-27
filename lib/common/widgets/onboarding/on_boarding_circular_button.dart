import 'package:flutter/material.dart';
import 'package:martify/utils/constants/colors.dart';
import 'package:martify/utils/controllers/on_boarding_controllers.dart';
import 'package:martify/utils/device/device_utilities.dart';
import 'package:martify/utils/helpers/helper_functions.dart';
import '../../../utils/constants/sizes.dart';

class OnBoardingCircularButton extends StatefulWidget {
  const OnBoardingCircularButton({super.key});

  @override
  State<OnBoardingCircularButton> createState() =>
      _OnBoardingCircularButtonState();
}

class _OnBoardingCircularButtonState extends State<OnBoardingCircularButton> {
  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: MDeviceUtils.getBottomNavBarHeight(context) + 5
      
      ,
      right: MAppSizes.paddingLarge,
      child: Padding(
        padding: const EdgeInsets.only(bottom: MAppSizes.paddingLarge),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark? MAppColors.primary: MAppColors.light,
            side: BorderSide.none,
          ),
          onPressed: () {
            OnBoardingControllers.instance.nextpage();
          },
          child: const Icon(Icons.arrow_forward,
          color: MAppColors.dark,),
        ),
      ),
    );
  }
}
