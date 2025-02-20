import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class HomeScreenBannerContainer extends StatelessWidget {
  const HomeScreenBannerContainer({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: SizedBox(
        height: 10,
        width: 200,
        child: Container(
          height: 10,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MAppSizes.marginMedium),
            color: Colors.orange
          ),
          // child: ClipRRect(
          //   borderRadius: BorderRadius.circular(MAppSizes.marginMedium),
            // child: Image.asset(
            //   imageUrl,
            //   fit: BoxFit.fitHeight,
            //   height: double.infinity,
            //   width: double.infinity,
            //
            // ),
          ),
        ),
      // ),
    );
  }
}
