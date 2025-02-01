import 'package:flutter/material.dart';
import 'package:martify/utils/constants/colors.dart';
import 'package:martify/utils/constants/sizes.dart';
import 'package:martify/utils/device/device_utilities.dart';
import 'package:martify/utils/helpers/helper_functions.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key, this.icon, required this.text,  this.showBackground = true,  this.showborder = true,
  });
  final IconData? icon;
  final String text;
  final bool showBackground,showborder;

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MAppSizes.marginLarge),
      child: Container(
        width: MDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: showBackground ? dark ? MAppColors.dark : MAppColors.dark : Colors.transparent,
          borderRadius: BorderRadius.circular(MAppSizes.marginMedium),
          border: showborder ? Border.all(color: Colors.grey) : null
        ),
        child: Row(
          children: [
            Icon(icon,color: Colors.grey.shade600,),
            const  SizedBox(width: MAppSizes.marginLarge,),
            Text(
              text,style: Theme.of(context).textTheme.bodySmall!.apply(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}