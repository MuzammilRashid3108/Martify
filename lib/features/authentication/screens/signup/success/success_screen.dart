import 'package:flutter/material.dart';
import 'package:martify/common/styles/spacing_styles.dart';
import 'package:martify/utils/constants/image_strings.dart';
import 'package:martify/utils/constants/text_strings.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MSpacingStyles.successScreenPaddingStyle*2,
          child: Column(
            children: [
              Center(
                child: Image(
                  image: const AssetImage(MAppImages.google),
                  width: MHelperFunctions.ScreenWidth(context) * 0.6,
                ),
              ),
              const SizedBox(
                height: MAppSizes.paddingExLarge,
              ),
              Text(
                MAppTextStrings.accountCongratsTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MAppSizes.marginMedium,
              ),
              Text(
                MAppTextStrings.accountCongratsSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MAppSizes.paddingExLarge,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(MAppTextStrings.mcontinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
