import 'package:flutter/material.dart';
import 'package:martify/common/widgets/custom_widgets/cart_counter_icon.dart';
import 'package:martify/common/widgets/home_screen_appbar/home_appbar.dart';
import 'package:martify/utils/constants/text_strings.dart';

class CompleteHomeAppBar extends StatelessWidget {
  const CompleteHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HomeAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MAppTextStrings.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.white),
          ),
          Text(
            MAppTextStrings.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Colors.grey.shade400),
          ),
        ],
      ),
      actions: [
        CartCounterIcon(
          iconColor: Colors.white,
          onPressed: () {},
        )
      ],
    );
  }
}