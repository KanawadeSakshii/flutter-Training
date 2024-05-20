import 'package:flutter/material.dart';
import 'package:foodapi/model/food_model.dart';
import 'package:foodapi/provider/theme_provider.dart';
import 'package:foodapi/screen/Home/Widget/category.dart';
import 'package:foodapi/screen/Home/Widget/food_card.dart';
import 'package:foodapi/screen/Home/Widget/home_app_bar.dart';
import 'package:foodapi/screen/Home/Widget/image_slider.dart';
import 'package:foodapi/screen/Home/Widget/search_bar.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 5,
              ),
              const MySearchBar(),
              const SizedBox(
                height: 10,
              ),
              ImageSlider(
                onChange: (value) {
                  setState(
                    () {
                      currentSlider = value;
                    },
                  );
                },
                currentSlide: currentSlider,
              ),
              const SizedBox(
                height: 10,
              ),
              const Categories(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special For You',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.78,
                    crossAxisSpacing: 20,
                  ),
                  itemCount: allfood.length,
                  itemBuilder: (context, index) {
                    return FoodCard(food: allfood[index]);
                  }),
            ],
          ),
        ),
      ),
      floatingActionButton: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return FloatingActionButton(
            onPressed: () {
              themeProvider.changeTheme(
                themeProvider.currentTheme == 'light' ? 'dark' : 'light',
              );
            },
            child: Icon(
              themeProvider.currentTheme == 'light'
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
          );
        },
      ),
    );
  }
}
