import 'package:flutter/material.dart';
import '../../../constants.dart';

class TileWithMoreButton extends StatelessWidget {
  const TileWithMoreButton({
    super.key,
    required this.title,
    required this.press,
  });

  final String title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: kPrimaryColor,
      onPressed: press,
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
