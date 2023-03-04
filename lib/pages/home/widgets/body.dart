import 'package:flutter/material.dart';
import 'package:plant_app_flutter/constants.dart';
import 'package:plant_app_flutter/pages/home/widgets/recommend_plants.dart';
import 'package:plant_app_flutter/pages/home/widgets/tile_with_custom_underline.dart';
import 'package:plant_app_flutter/pages/home/widgets/tile_with_more_button.dart';
import 'featured_plants.dart';
import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                const TileWithCustomUnderLine(text: "Recommended"),
                const Spacer(),
                TileWithMoreButton(
                  title: "More",
                  press: () {},
                ),
              ],
            ),
          ),
          const RecommendPlants(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                const TileWithCustomUnderLine(text: "Featured Plants"),
                const Spacer(),
                TileWithMoreButton(
                  title: "More",
                  press: () {},
                ),
              ],
            ),
          ),
          const FeaturedPlants(),
          const SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
