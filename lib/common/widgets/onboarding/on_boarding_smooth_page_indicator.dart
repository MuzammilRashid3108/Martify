import 'package:flutter/material.dart';
import 'package:martify/utils/constants/colors.dart';
import 'package:martify/utils/constants/sizes.dart';
import 'package:martify/utils/controllers/on_boarding_controllers.dart';
import 'package:martify/utils/device/device_utilities.dart';
import 'package:martify/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingSmoothPageIndicator extends StatefulWidget {
  const OnBoardingSmoothPageIndicator({super.key});

  @override
  State<OnBoardingSmoothPageIndicator> createState() =>
      _OnBoardingSmoothPageIndicatorState();
}

class _OnBoardingSmoothPageIndicatorState
    extends State<OnBoardingSmoothPageIndicator> {
  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    final controller = OnBoardingControllers.instance;
    return Positioned(
      bottom: MDeviceUtils.getBottomNavBarHeight(context) + 30,
      left: MAppSizes.paddingExLarge,
      child: Padding(
        padding: const EdgeInsets.only(bottom: MAppSizes.paddingLarge),
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotnavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? MAppColors.dark: MAppColors.light,
              dotHeight: 6,
              dotColor: Colors.grey),
        ),
      ),
    );
  }
}
