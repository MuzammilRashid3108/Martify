import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class CustomCatogeryButton extends StatelessWidget {
  const CustomCatogeryButton({
    super.key, required this.title, required this.image, this.backgroundColor = Colors.white, this.onTap, this.textColor = Colors.white,
  });
  final String title,image;
  final Color? backgroundColor, textColor;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: MAppSizes.marginMedium),
      child: Column(
        children: [
          Container(
            height: 48,
            width: 48,
            padding: const EdgeInsetsDirectional.all(8.0),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 55,
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: Colors.white),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
