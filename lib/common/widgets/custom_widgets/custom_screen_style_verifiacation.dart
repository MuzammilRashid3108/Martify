import 'package:flutter/material.dart';
import 'package:martify/common/widgets/custom_widgets/custom_button.dart';
import 'package:martify/utils/constants/sizes.dart';
import 'package:martify/utils/controllers/on_boarding_controllers.dart';
import 'package:martify/utils/helpers/helper_functions.dart';

class CustomScreenStyleForVerification extends StatelessWidget {
  const CustomScreenStyleForVerification({
    super.key,
    required this.imagePath,
    required this.customButtonText,
    required this.subTitleText,
    required this.titleText,
    required this.transparentButtontext,
    required this.emailText,
  });
   final String imagePath;
   final String titleText;
   final String subTitleText;
   final String customButtonText;
   final String transparentButtontext;
   final String emailText;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(MAppSizes.marginMedium),
            child: Column(
              children: [
                Center(
                  child: Image(
                    image:  AssetImage(imagePath),
                    width: MHelperFunctions.ScreenWidth(context) * 0.6,
                  ),
                ),
                const SizedBox(
                  height: MAppSizes.paddingExLarge,
                ),
                Text(
                  titleText,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: MAppSizes.marginMedium,
                ),
                Text(
                  emailText,
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: MAppSizes.marginMedium,
                ),
                Text(
                  subTitleText,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: MAppSizes.paddingExLarge,
                ),
                customButton(
                  onPressed: () {
                    OnBoardingControllers.instance.successPage();
                  },
                  text: customButtonText,
                ),
                const SizedBox(
                  height: MAppSizes.marginMedium,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child:  Text(transparentButtontext),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


