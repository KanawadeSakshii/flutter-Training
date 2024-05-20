import 'package:flutter/material.dart';

class FoodImageDetail extends StatelessWidget {
  final Function(int) onChange;
  final String image;
  const FoodImageDetail(
      {super.key, required this.onChange, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: PageView.builder(
          onPageChanged: onChange,
          itemBuilder: (context, index) =>
              Hero(tag: image, child: Image.asset(image))),
    );
  }
}
