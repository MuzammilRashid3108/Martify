import 'package:flutter/material.dart';
import 'package:martify/utils/constants/colors.dart';

class MAppBarTheme {
  static AppBarTheme lightAppBarTheme = const AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: MAppColors.onSecondary),
    actionsIconTheme: IconThemeData(color: MAppColors.onSecondary),
    titleTextStyle: TextStyle(
        fontSize: 18, color: MAppColors.onSecondary, fontWeight: FontWeight.w600),
  );

  static AppBarTheme darkAppBarTheme = const AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: MAppColors.onSecondary),
    actionsIconTheme: IconThemeData(color: MAppColors.onPrimary),
    titleTextStyle: TextStyle(
        fontSize: 18,
        color: MAppColors.background,
        fontWeight: FontWeight.w600),
  );
}
