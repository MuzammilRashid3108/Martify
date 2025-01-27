import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:martify/utils/constants/colors.dart';
import 'package:martify/utils/constants/text_strings.dart';

class CustomDevider extends StatelessWidget {
  const CustomDevider({
    super.key,
    required this.dark,
    required this.dividerText,
  });

  final bool dark;
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Divider(
              color: dark ? MAppColors.divider : MAppColors.divider2,
              thickness: 0.5,
              indent: 60,
              endIndent: 5),
        ),
        Text(
         dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? MAppColors.divider : MAppColors.divider2,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}