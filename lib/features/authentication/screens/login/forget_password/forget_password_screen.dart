import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:martify/common/widgets/custom_widgets/custom_button.dart';
import 'package:martify/utils/constants/colors.dart';
import 'package:martify/utils/constants/sizes.dart';
import 'package:martify/utils/constants/text_strings.dart';
import 'package:martify/utils/helpers/helper_functions.dart';
import '../../../../../utils/controllers/on_boarding_controllers.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: dark ? MAppColors.dark : MAppColors.light
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MAppSizes.marginMinLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MAppTextStrings.forgetPassword,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: MAppSizes.marginMedium),
              Text(
                MAppTextStrings.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: MAppSizes.buttonHeight,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: MAppTextStrings.email),
              ),
              const SizedBox(
                height: MAppSizes.marginMedium,
              ),
              customButton(
                onPressed: () {
                  OnBoardingControllers.instance.passwordResetEmailPage();
                },
                text: MAppTextStrings.submit,
              )
            ],
          ),
        ),
      ),
    );
  }
}
