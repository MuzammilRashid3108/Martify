import 'package:flutter/material.dart';
import 'package:martify/common/widgets/complete_custom_styles/curved_edges.dart';
import 'package:martify/utils/constants/colors.dart';
import 'package:martify/utils/helpers/helper_functions.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    super.key,
    required this.child
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesStyle(
      child: Container(
        height: MHelperFunctions.ScreenHeight(context) * 0.42,
        color: MAppColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -130,
                right: -235,
                child: Container(
                  height: MHelperFunctions.ScreenHeight(context) * 0.43,
                  width: MHelperFunctions.ScreenWidth(context) * 1,
                  padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(400),
                      // ignore: deprecated_member_use
                      color: MAppColors.background.withOpacity(0.1)),
                ),
              ),
              Positioned(
                top: 100,
                right: -250,
                child: Container(
                  height: MHelperFunctions.ScreenHeight(context) * 0.43,
                  width: MHelperFunctions.ScreenWidth(context) * 1,
                  padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(400),
                      // ignore: deprecated_member_use
                      color: MAppColors.background.withOpacity(0.1)),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}