import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:martify/common/widgets/custom_widgets/custom_screen_style_verifiacation.dart';
import 'package:martify/utils/constants/image_strings.dart';
import 'package:martify/utils/constants/sizes.dart';
import 'package:martify/utils/constants/text_strings.dart';
import 'package:martify/utils/controllers/on_boarding_controllers.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(MAppSizes.marginSmall),
            child: IconButton(
                onPressed: () {
                  OnBoardingControllers.instance.loginpage();
                },
                icon: const Icon(CupertinoIcons.clear)),
          )
        ],
      ),

      body: const CustomScreenStyleForVerification(
        imagePath: MAppImages.google,
        titleText:  MAppTextStrings.verifyEmail,
        emailText: "muzammilrashid3108@gmail.com",
        subTitleText:  MAppTextStrings.confirmEmailSubtitle,
        customButtonText: MAppTextStrings.mcontinue,
        transparentButtontext: MAppTextStrings.resendEmail,
      ),
    );
  }
}

