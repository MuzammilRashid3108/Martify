import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:martify/utils/constants/colors.dart';
import 'package:martify/utils/constants/text_strings.dart';
import 'package:martify/utils/controllers/on_boarding_controllers.dart';

import '../../../utils/constants/sizes.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: MAppTextStrings.firstName,
                  ),
                ),
              ),
              const SizedBox(
                width: MAppSizes.marginMedium,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: MAppTextStrings.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: MAppSizes.marginMedium,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: MAppTextStrings.username,
            ),
          ),
          const SizedBox(
            height: MAppSizes.marginMedium,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: MAppTextStrings.email,
            ),
          ),
          const SizedBox(
            height: MAppSizes.marginMedium,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: MAppTextStrings.phoneNumber,
            ),
          ),
          const SizedBox(
            height: MAppSizes.marginMedium,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: MAppTextStrings.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          SizedBox(
            height: MAppSizes.marginMedium,
          ),
          Row(
            children: [
              Checkbox(
                value: true,
                visualDensity: VisualDensity.compact,
                onChanged: (value) {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: '${MAppTextStrings.iAgreeTo} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                      text: '${MAppTextStrings.privacyPolicy} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? MAppColors.dark : MAppColors.light,
                          // decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? MAppColors.dark : MAppColors.light),
                    ),
                    TextSpan(
                        text: '${MAppTextStrings.and} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                      text: '${MAppTextStrings.termsOfUse}',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? MAppColors.dark : MAppColors.light,
                          // decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? MAppColors.dark : MAppColors.light),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: MAppSizes.marginMedium,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  OnBoardingControllers.instance.verifyEmailPage();
                },
                child: Text(
                  MAppTextStrings.createAccount,
                )),
          )
        ],
      ),
    );
  }
}
