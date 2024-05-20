import 'package:flutter/material.dart';
import 'package:foodapi/constants.dart';
import 'package:foodapi/model/food_model.dart';
import 'package:foodapi/screen/Detail/Widget/add_to_order.dart';
import 'package:foodapi/screen/Detail/Widget/description.dart';
import 'package:foodapi/screen/Detail/Widget/details_appbar.dart';
import 'package:foodapi/screen/Detail/Widget/food_details.dart';
import 'package:foodapi/screen/Detail/Widget/image_slider.dart';

class DetailsScreen extends StatefulWidget {
  final Food food;
  const DetailsScreen({super.key, required this.food});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  int currentImage = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      floatingActionButton: AddToCart(food: widget.food),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
          child: Column(
        children: [
          DetailsAppBar(
            food: widget.food,
          ),
          const SizedBox(
            height: 5,
          ),
          FoodImageDetail(
            image: widget.food.image,
            onChange: (index) {
              setState(() {
                currentImage == index;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                5,
                (index) => AnimatedContainer(
                      duration: const Duration(microseconds: 300),
                      width: currentImage == index ? 15 : 8,
                      height: 8,
                      margin: const EdgeInsets.only(right: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentImage == index
                              ? Colors.black
                              : Colors.transparent,
                          border: Border.all(color: Colors.black)),
                    )),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
              bottom: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FoodDetails(food: widget.food),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FoodDescription(description: widget.food.description),
        ],
      )),
    );
  }
}
