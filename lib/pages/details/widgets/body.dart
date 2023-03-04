import 'package:flutter/material.dart';
import 'package:plant_app_flutter/constants.dart';
import 'package:plant_app_flutter/pages/details/widgets/title_price.dart';
import 'image_icons.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const ImageAndIcons(),
          const TitleAndPrice(
            title: "Angelica",
            country: "India",
            price: 499,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: MaterialButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  color: kPrimaryColor,
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text("Description"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
