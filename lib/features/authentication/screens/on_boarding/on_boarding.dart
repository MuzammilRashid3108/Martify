import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:martify/common/widgets/onboarding/on_boarding_circular_button.dart';
import 'package:martify/common/widgets/onboarding/on_boarding_custom_widget.dart';
import 'package:martify/common/widgets/onboarding/on_boarding_skip_button.dart';
import 'package:martify/common/widgets/onboarding/on_boarding_smooth_page_indicator.dart';
import 'package:martify/utils/constants/image_strings.dart';
import 'package:martify/utils/constants/text_strings.dart';
import 'package:martify/utils/controllers/on_boarding_controllers.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingControllers());
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          PageView(
            controller: OnBoardingControllers.instance.pageController,
            onPageChanged: controller.updatePageindicator,
            children: const [
              OnBoardingCustomWidget(
                Image: MAppImages.onboarding1,
                Title: MAppTextStrings.onBoardingTitle,
                SubTitle: MAppTextStrings.onBoardingSubTitle,
              ),
              OnBoardingCustomWidget(
                Image: MAppImages.onboarding2,
                Title: MAppTextStrings.onBoardingTitle2,
                SubTitle: MAppTextStrings.onBoardingSubTitle2,
              ),
              OnBoardingCustomWidget(
                Image: MAppImages.onboarding3,
                Title: MAppTextStrings.onBoardingTitle3,
                SubTitle: MAppTextStrings.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkipButton(),
          const OnBoardingSmoothPageIndicator(),
          const OnBoardingCircularButton(),
        ],
      ),
    );
  }
}
