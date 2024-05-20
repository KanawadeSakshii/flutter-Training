import 'package:flutter/material.dart';
import 'package:foodapi/constants.dart';
import 'package:foodapi/model/food_model.dart';
import 'package:foodapi/screen/Detail/Widget/description.dart';

class FoodDetails extends StatelessWidget {
  final Food food;
  const FoodDetails({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          food.title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 15,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\Rs.${food.price}',
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 15,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: 50,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kprimaryColor,
                  ),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star_rate,
                        size: 14,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        food.rate.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              food.review,
              style: const TextStyle(
                fontWeight: FontWeight.w100,
                color: Colors.black,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
