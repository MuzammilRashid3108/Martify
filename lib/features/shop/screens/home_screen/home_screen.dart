import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:martify/common/widgets/complete_custom_styles/home_screen_header.dart';
import 'package:martify/common/widgets/custom_widgets/cutom_search_bar.dart';
import 'package:martify/common/widgets/home_screen/heme_screen_banner_container.dart';
import 'package:martify/common/widgets/home_screen_appbar/complete_home_app_bar.dart';
import 'package:martify/utils/constants/image_strings.dart';
import 'package:martify/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_widgets/custom_category_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header

            HomePageHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //AppBar

                  const CompleteHomeAppBar(),

                  const SizedBox(
                    height: MAppSizes.paddingExLarge,
                  ),

                  //SearchBox

                  const CustomSearchBar(
                    text: "Search in Store",
                    icon: Iconsax.search_normal,
                  ),
                  const SizedBox(
                    height: MAppSizes.paddingExLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: MAppSizes.marginLarge),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Popular Categories",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(
                          height: MAppSizes.marginMedium,
                        ),
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return CustomCatogeryButton(
                                image: MAppImages.google,
                                title: "Shoe",
                                onTap: () {},
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(MAppSizes.marginMedium),
                child: CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: false
                  ),
                  items: [
                    HomeScreenBannerContainer(imageUrl: MAppImages.promoBanner1),
                    HomeScreenBannerContainer(imageUrl: MAppImages.promoBanner2),
                    HomeScreenBannerContainer(imageUrl: MAppImages.promoBanner3),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
