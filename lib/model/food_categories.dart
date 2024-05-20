class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> CategoryList = [
  Category(
    title: "All",
    image: "assets/fernando-santos-DppzIK9TAxY-unsplash.jpg",
  ),
  Category(
    title: "Pizza",
    image: "assets\shourav-sheikh-a66sGfOnnqQ-unsplash.jpg",
  ),
  Category(
    title: "Burger",
    image: "assets/amirali-mirhashemian-sc5sTPMrVfk-unsplash.jpg",
  ),
  Category(
    title: "Sandwich",
    image: "assets/garlicsandwich.jpg",
  ),
  Category(
    title: "Cake",
    image: "assets/deva-williamson-tW0Ix_Ajg6Y-unsplash.jpg",
  ),
  Category(
    title: "Waffle",
    image: "assets/waffle/waffle.jpg",
  ),
];
