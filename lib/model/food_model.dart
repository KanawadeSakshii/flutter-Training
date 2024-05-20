import 'package:flutter/material.dart';

class Food {
  final String title;
  final String description;
  final String image;
  final String review;
  final double price;
  //final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Food(
      {required this.title,
      required this.review,
      required this.description,
      required this.image,
      required this.price,
      //  required this.colors,
      required this.category,
      required this.rate,
      required this.quantity});
}

final List<Food> allfood = [
  Food(
    title: "chocolate cheese cake",
    description:
        "Nice serving of chocolate cheese cake decorated with chocolate chips and raspberries. Chocolate topping flows down from the piece and forms little pool on plate",
    image: "assets/cake/chocolatecheesecake.jpg",
    price: 120,
    // colors: [
    //   Colors.black,
    //   Colors.blue,
    //   Colors.orange,
    // ],
    category: "Cake",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Food(
    title: " Yummy Cheese Pizza",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/pizza/cheesePizza.jpg",
    price: 120,
    category: "Pizza",
    review: "(32 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Food(
    title: "Chocolate Waffle",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/waffle/chocolatewaffle.jpg",
    price: 55,
    category: "Waffle",
    review: "(20 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Food(
    title: "Butter Chicken Burger",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/burger/ButterChickenBurger.jpg",
    price: 155,
    category: "Burger",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Food(
    title: "Vagetable Sandwich",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/sandwich/VegetableSandwich.jpg",
    price: 1000,
    category: "Sandwich",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Food(
    title: "Chilli pasta",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/ben-lei-flFd8L7_B3g-unsplash.jpg",
    price: 255,
    category: "Pasta",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Food(
    title: "Momos dish",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/shiv-singh-Vj-J5xNjnxA-unsplash.jpg",
    price: 155,
    category: "Momos",
    review: "(99 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),
  Food(
    title: "Frech Fries",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/pexels-thngocbich-840216.jpg",
    price: 155,
    category: "Burger",
    review: "(80 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Food(
    title: "  Vaggies",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/jennifer-schmidt-zOlQ7lF-3vs-unsplash.jpg",
    price: 155,
    category: "Burger",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];

final List<Food> shoes = [
  Food(
    title: " Veg Makhani Burger",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/burger/VegMakhaniBurger.jpg",
    price: 255,
    category: "Burger",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Food(
    title: " Egg Burger",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/burger/McEgg.jpg",
    price: 300,
    category: "Burger",
    review: "(200 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Food(
    title: "EVM Chicken Burger",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/burger/EVMChickenMaharaja.jpg",
    price: 500,
    category: "Burger",
    review: "(100 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Food(
    title: " Cheese ChilliLava Burger",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/burger/CheeseChilliLavaBurger.jpg",
    price: 155,
    category: "Burger",
    review: "(60 Reviews)",
    rate: 3.0,
    quantity: 1,
  ),
  Food(
    title: "Butter Chicken Burger",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/burger/ButterChickenBurger.jpg",
    price: 1000,
    category: "Burger",
    review: "(00 Reviews)",
    rate: 0.0,
    quantity: 1,
  ),
];

final List<Food> cake = [
  Food(
    title: " Black Forest Cake",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/cake/blackforestcake.jpg",
    price: 1500,
    category: "Cake",
    review: "(200 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Food(
    title: " Chocolate Cheese Cake",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/cake/chocolatecheesecake.jpg",
    price: 155,
    category: "Cake",
    review: "(99 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),
  Food(
    title: "Strawberry Cake",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/cake/Strawberrycake.jpg",
    price: 999,
    category: "Cake",
    review: "(20 Reviews)",
    rate: 4.2,
    quantity: 1,
  ),
];

final List<Food> pizza = [
  Food(
    title: " Cheese Pizza",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/pizza/cheesePizza.jpg",
    price: 299,
    category: "Pizza",
    review: "(25 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Food(
    title: "Toppings Pizza ",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/pizza/Greektoppingspizza.jpg",
    price: 666,
    category: "Pizza",
    review: "(100 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Food(
    title: "Sicilian Pizza",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/pizza/Sicilianpizza.jpg",
    price: 155,
    category: "Pizza",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Food(
    title: "  Tomato Cheese Pizza",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/pizza/tomatocheesepizza.jpg",
    price: 155,
    category: "Pizza",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];
final List<Food> sandwich = [
  Food(
    title: "  Avocado Toast Sandwich",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/sandwich/AvocadoToast.jpg",
    price: 3000,
    category: "Sandwich",
    review: "(320 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Food(
    title: "  Garlic Sandwich",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/sandwich/garlicsandwich.jpg",
    price: 300,
    category: "Sandwich",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Food(
    title: "  Vagitable Sandwich",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/sandwich/VegetableSandwich.jpg",
    price: 155,
    category: "Sandwich",
    review: "(80 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
];
final List<Food> waffle = [
  Food(
    title: "  Blueberry bread waffle",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/waffle/bluberrybreadwaffle.jpg",
    price: 500,
    category: "waffle",
    review: "(90 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Food(
    title: "  Choco Icescrem Waffle",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/waffle/chocoicescremwaffle.jpg",
    price: 400,
    category: "waffle",
    review: "(500 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Food(
    title: "Der fruit Waffle",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/waffle/dryfruitwaffle.jpg",
    price: 300,
    category: "menFashion",
    review: "(200 Reviews)",
    rate: 3.0,
    quantity: 1,
  ),
  Food(
    title: "Chocolate Waffle",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/waffle/chocolatewaffle.jpg",
    price: 200,
    category: "Waffle",
    review: "(1k Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Food(
    title: "Strawberry Waffle",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/men fashion/watch.png",
    price: 1000,
    category: "Waffle",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];
