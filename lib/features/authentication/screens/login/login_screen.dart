import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:martify/common/styles/spacing_styles.dart';
import 'package:martify/common/widgets/login/authentication_buttons.dart';
import 'package:martify/common/widgets/login/custom_devider.dart';
import 'package:martify/common/widgets/login/login_header.dart';
import 'package:martify/common/widgets/login/login_form.dart';
import 'package:martify/utils/constants/sizes.dart';
import 'package:martify/utils/constants/text_strings.dart';
import 'package:martify/utils/helpers/helper_functions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: MSpacingStyles.paddingWithAppBarHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // LoginHeader

            LoginHeader(dark: dark),

            //LoginForm

            const LoginForm(),

            //Devider

            CustomDevider(
              dark: dark,
              dividerText: MAppTextStrings.signinOptions.capitalize!,
            ),

            //Aunthentication Buttons

            const SizedBox(
              height: MAppSizes.paddingExLarge,
            ),

            const AuthenticationButtons()
          ],
        ),
      ),
    );
  }
}
