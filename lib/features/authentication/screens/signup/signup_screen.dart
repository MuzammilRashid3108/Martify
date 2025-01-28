import 'package:flutter/material.dart';
import 'package:martify/common/widgets/login/authentication_Buttons.dart';
import 'package:martify/common/widgets/login/custom_devider.dart';
import 'package:martify/common/widgets/signup/signup_form.dart';
import 'package:martify/utils/constants/colors.dart';
import 'package:martify/utils/constants/sizes.dart';
import 'package:martify/utils/constants/text_strings.dart';
import 'package:martify/utils/helpers/helper_functions.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        toolbarHeight: 40,
        iconTheme: IconThemeData(
          color: dark ? MAppColors.dark : MAppColors.light
        ),
      ),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MAppSizes.marginMinLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MAppTextStrings.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: MAppSizes.paddingExLarge,
              ),
              SignupForm(dark: dark),
              const SizedBox(
                height: MAppSizes.marginLarge,
              ),
              CustomDevider(dark: dark, dividerText: "Or Sign Up With"),
              const SizedBox(
                height: MAppSizes.marginLarge,
              ),
              const AuthenticationButtons()
            ],
          ),
        ),
      ),
    );
  }
}
