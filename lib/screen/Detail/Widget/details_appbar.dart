import 'package:flutter/material.dart';
import 'package:foodapi/constants.dart';
import 'package:foodapi/model/food_model.dart';
import 'package:foodapi/provider/favorite_provider.dart';

class DetailsAppBar extends StatelessWidget {
  final Food food;
  const DetailsAppBar({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
            style: IconButton.styleFrom(
              foregroundColor: appBarIconColor,
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
            style: IconButton.styleFrom(
              foregroundColor: appBarIconColor,
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {
              provider.toggleFavorite(food);
            },
            icon: Icon(
              provider.isExist(food) ? Icons.favorite : Icons.favorite_border,
            ),
            style: IconButton.styleFrom(
              foregroundColor: appBarIconColor,
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
            ),
          )
        ],
      ),
    );
  }
}
