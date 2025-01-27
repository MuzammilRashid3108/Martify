import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:martify/features/authentication/screens/login/login_screen.dart';

class OnBoardingControllers extends GetxController {
  static OnBoardingControllers get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageindicator(index) {
    currentPageIndex.value = index;
  }

  void dotnavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }

  void nextpage() {
    if (currentPageIndex.value == 2) {
       Get.to (LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
}
