import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:martify/utils/constants/sizes.dart';
import 'package:martify/utils/constants/text_strings.dart';
import 'package:martify/utils/controllers/on_boarding_controllers.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: MAppSizes.paddingExLarge),
        child: Column(
          children: [
            // EmailTextField
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: MAppTextStrings.email),
            ),
            const SizedBox(
              height: MAppSizes.marginMedium,
            ),
            // PasswordTextField
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: MAppTextStrings.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // CheckBox
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    const Text(MAppTextStrings.rememberMe)
                  ],
                ),
                TextButton(
                  onPressed: () {
                    OnBoardingControllers.instance.forgetPasswordPage();
                  },
                  child: const Text(MAppTextStrings.forgotPassword),
                ),
              ],
            ),
            const SizedBox(
              height: MAppSizes.paddingLarge,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  OnBoardingControllers.instance.navigationMenupage();
                },
                child: const Text(MAppTextStrings.signin),
              ),
            ),
            const SizedBox(
              height: MAppSizes.marginMedium,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  OnBoardingControllers.instance.signupPage();
                },
                child: const Text(MAppTextStrings.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
