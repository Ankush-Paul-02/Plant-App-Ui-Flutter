import 'package:flutter/material.dart';
import 'package:plant_app_flutter/pages/details/details_screen.dart';
import 'package:plant_app_flutter/pages/home/widgets/recommend_plant_card.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            image: 'assets/images/image_1.png',
            title: "Samantha",
            country: "India",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsPage(),
                ),
              );
            },
            price: 449,
          ),
          RecommendPlantCard(
            image: 'assets/images/image_2.png',
            title: "Angelica",
            country: "India",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsPage(),
                ),
              );
            },
            price: 449,
          ),
          RecommendPlantCard(
            image: 'assets/images/image_3.png',
            title: "Samantha",
            country: "India",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsPage(),
                ),
              );
            },
            price: 449,
          ),
        ],
      ),
    );
  }
}
