import 'package:flutter/material.dart';
import 'package:foodapi/constants.dart';
import 'package:foodapi/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            style: IconButton.styleFrom(
              backgroundColor: kcontentColor,
              foregroundColor: appBarIconColor,
              padding: const EdgeInsets.all(10),
              iconSize: 30,
            ),
            onPressed: () {},
            icon: const Icon(Icons.api_outlined)),
        IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: kcontentColor,
              foregroundColor: appBarIconColor,
              padding: const EdgeInsets.all(10),
              iconSize: 30,
            ),
            icon: const Icon(Icons.notifications)),
      ],
    );
  }
}
