import 'package:flutter/material.dart';

import '../commons.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  const CustomText(
      {super.key,
      required this.text,
      this.size = 16,
      this.color = black,
      this.weight = FontWeight.normal});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color, fontWeight: weight),
    );
  }
}
