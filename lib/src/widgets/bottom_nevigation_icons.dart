import 'package:flutter/material.dart';
import 'package:food_app/src/widgets/costomtext.dart';

class BottomNavIcon extends StatelessWidget {
  final String image;
  final String name;
  const BottomNavIcon({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: <Widget>[
        Image.asset("assets/$image", width: 25, height: 25),
        const SizedBox(
          height: 2,
        ),
        CustomText(
          text: name,
          size: 12,
        )
      ]),
    );
  }
}
