import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:martify/common/widgets/custom_widgets/custom_screen_style_verifiacation.dart';
import 'package:martify/utils/constants/image_strings.dart';
import 'package:martify/utils/constants/sizes.dart';
import 'package:martify/utils/constants/text_strings.dart';
import 'package:martify/utils/controllers/on_boarding_controllers.dart';

class PasswordResetEmailScreen extends StatefulWidget {
  const PasswordResetEmailScreen({super.key});

  @override
  State<PasswordResetEmailScreen> createState() =>
      _PasswordResetEmailScreenState();
}

class _PasswordResetEmailScreenState extends State<PasswordResetEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(MAppSizes.marginSmall),
            child: IconButton(
              onPressed: () {
                OnBoardingControllers.instance.loginpage();
              },
              icon: const Icon(CupertinoIcons.clear),
            ),
          )
        ],
      ),
      body: const CustomScreenStyleForVerification(
          imagePath: MAppImages.google,
          customButtonText: MAppTextStrings.done,
          subTitleText: MAppTextStrings.passwordResetEmailSubTitle,
          titleText: MAppTextStrings.passwordResetEmailTitle,
          transparentButtontext: MAppTextStrings.resendEmail,
          emailText: MAppTextStrings.myEmail),
    );
  }
}
