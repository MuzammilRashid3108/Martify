import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:martify/features/authentication/screens/on_boarding/on_boarding.dart';
import 'package:martify/utils/theme/theme.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      home:const OnBoarding()
    );
  }
}