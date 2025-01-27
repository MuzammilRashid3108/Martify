import 'package:flutter/material.dart';
import 'package:martify/utils/constants/image_strings.dart';
import 'package:martify/utils/constants/sizes.dart';

class AuthenticationButtons extends StatelessWidget {
  const AuthenticationButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(MAppImages.google),height: 24,width: 24,
            ),
          ),
        ),
      const  SizedBox(width: MAppSizes.marginMedium,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(MAppImages.facebook,),height: 24,width: 24,
            ),
          ),
        ),
      ],
    );
  }
}