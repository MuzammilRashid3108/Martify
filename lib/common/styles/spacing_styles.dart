import 'package:flutter/material.dart';
import 'package:martify/utils/constants/sizes.dart';

class MSpacingStyles {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: MAppSizes.appBarHeight,
    bottom: MAppSizes.marginMinLarge,
    left: MAppSizes.marginMinLarge,
    right: MAppSizes.marginMinLarge,
  );
  static const EdgeInsetsGeometry successScreenPaddingStyle= EdgeInsets.only(
    top: MAppSizes.custom3,
    bottom: MAppSizes.marginMinLarge,
    left: MAppSizes.marginMinLarge,
    right: MAppSizes.marginMinLarge,
  );
}
