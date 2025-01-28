import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:martify/utils/constants/sizes.dart';
import 'package:martify/utils/constants/text_strings.dart';
import 'package:martify/utils/controllers/on_boarding_controllers.dart';
import 'package:martify/utils/helpers/helper_functions.dart';

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
            padding: const EdgeInsets.all(MAppSizes.marginMedium),
            child: IconButton(
                onPressed: () {
                  OnBoardingControllers.instance.loginpage();
                },
                icon: const Icon(CupertinoIcons.clear)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(MAppSizes.marginMedium),
              child: Column(
                children: [
                  Center(
                    child: Image(
                      image: const AssetImage('assets/images/google.png'),
                      width: MHelperFunctions.ScreenWidth(context) * 0.6,
                    ),
                  ),
                  const SizedBox(
                    height: MAppSizes.paddingExLarge,
                  ),
                  Text(
                    MAppTextStrings.verifyEmail,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: MAppSizes.marginMedium,),
                  Text("muzammilrashid3108@gmail.com",style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
                   const SizedBox(height: MAppSizes.marginMedium,),
                   Text(
                    MAppTextStrings.confirmEmailSubtitle,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MAppSizes.paddingExLarge,
                  ),
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: Text(MAppTextStrings.mcontinue),),),
                  const SizedBox(height: MAppSizes.marginMedium,),
                  SizedBox(width: double.infinity,child: TextButton(onPressed: (){}, child: Text(MAppTextStrings.resendEmail),),),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
