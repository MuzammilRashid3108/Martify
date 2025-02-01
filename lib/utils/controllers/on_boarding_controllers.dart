import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:martify/features/authentication/screens/login/forget_password/forget_password_screen.dart';
import 'package:martify/features/authentication/screens/login/login_screen.dart';
import 'package:martify/features/authentication/screens/login/password_reset_email/password_reset_email_screen.dart';
import 'package:martify/features/authentication/screens/signup/signup_screen.dart';
import 'package:martify/features/authentication/screens/signup/success/success_screen.dart';
import 'package:martify/features/authentication/screens/signup/verify_email/verify_email_screen.dart';
import 'package:martify/features/shop/screens/nav_menu/navigation_menu_screen.dart';

class OnBoardingControllers extends GetxController {
  static OnBoardingControllers get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageindicator(index) {
    currentPageIndex.value = index;
  }

  void animateToPageWithIndex(int index){
    pageController.animateToPage(index, duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
  }

  void dotnavigationClick(index) {
    currentPageIndex.value = index;
    animateToPageWithIndex(index);
  }

  void skipPage() {
    currentPageIndex.value = 2;
        animateToPageWithIndex(2);

  }

  void nextpage() {
    if (currentPageIndex.value == 2) {
      Get.to(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
          animateToPageWithIndex(page);

    }
  }

  void signupPage() {
    Get.to(const SignupScreen());
  }

  void verifyEmailPage() {
    Get.to(const VerifyEmailScreen());
  }
  void loginpage() {
    Get.to(const LoginScreen());
  }
   void successPage() {
    Get.to(const SuccessScreen());
  }
  void forgetPasswordPage() {
    Get.to(const ForgetPasswordScreen());
  }
   void passwordResetEmailPage() {
    Get.to(const PasswordResetEmailScreen());
  }
   void navigationMenupage() {
    Get.to(const NavigationMenuScreen());
  }
  
}

