import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:martify/utils/constants/sizes.dart';
import 'package:martify/utils/helpers/helper_functions.dart';

class OnBoardingCustomWidget extends StatefulWidget {
  const OnBoardingCustomWidget({super.key,required this.Image,required this.Title,required this.SubTitle});

  final String Image, Title, SubTitle;

  @override
  State<OnBoardingCustomWidget> createState() => _OnBoardingCustomWidgetState();
}

class _OnBoardingCustomWidgetState extends State<OnBoardingCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.all(MAppSizes.paddingExLarge),
              child: Column(
                children: [
                  Lottie.asset(
                    widget.Image,
                    width: MHelperFunctions.ScreenWidth(context) * 0.8,
                    height: MHelperFunctions.ScreenHeight(context) * 0.6,
                  ),
                  Text(
                    widget.Title,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                 const SizedBox(
                    height: MAppSizes.marginMedium,
                  ),
                  Text(
                    widget.SubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
  }
}