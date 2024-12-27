import 'package:flutter/material.dart';

class MDeviceUtils {
  // Get device screen width
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // Get device screen height
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // Check if the device is in portrait orientation
  static bool isPortrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  // Check if the device is in landscape orientation
  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  // Check if the device is a large screen (tablet or desktop)
  static bool isLargeScreen(BuildContext context) {
    return getScreenWidth(context) >= 600;
  }

  // Get the device pixel ratio
  static double getPixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  // Get the app's status bar height
  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  // Get the app's bottom navigation bar height
  static double getBottomNavBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }
}
