import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:martify/common/widgets/complete_custom_styles/home_screen_header.dart';
import 'package:martify/common/widgets/custom_widgets/cutom_search_bar.dart';
import 'package:martify/common/widgets/home_screen_appbar/complete_home_app_bar.dart';
import 'package:martify/utils/constants/sizes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header

            HomePageHeader(
              child: Column(
                children: [
                  //AppBar

                  CompleteHomeAppBar(),

                  SizedBox(
                    height: MAppSizes.paddingExLarge,
                  ),

                  //SearchBox

                  CustomSearchBar(
                    text: "Search in Store",
                    icon: Iconsax.search_normal,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
