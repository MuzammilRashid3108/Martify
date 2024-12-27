import 'package:flutter/material.dart';
import 'package:martify/utils/constants/colors.dart';
import 'package:martify/utils/theme/custom_theme/appbar_theme.dart';
import 'package:martify/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:martify/utils/theme/custom_theme/check_box_theme.dart';
import 'package:martify/utils/theme/custom_theme/chip_theme.dart';
import 'package:martify/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:martify/utils/theme/custom_theme/outlined_button.dart';
import 'package:martify/utils/theme/custom_theme/tex_field_theme.dart';
import 'package:martify/utils/theme/custom_theme/text_theme.dart';

class MAppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: MTextTheme.lightTextTheme,
    chipTheme: MChipTheme.lightChipTheme,
    scaffoldBackgroundColor: MAppColors.background,
    appBarTheme: MAppBarTheme.lightAppBarTheme,
    checkboxTheme: MCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: MBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: MTexFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: MElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.lightOutlinedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: MAppColors.surface,
    textTheme: MTextTheme.darkTextTheme,
    chipTheme: MChipTheme.darkChipTheme,
    appBarTheme: MAppBarTheme.darkAppBarTheme,
    checkboxTheme: MCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: MBottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme: MTexFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: MElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}
