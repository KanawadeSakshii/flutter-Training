import 'package:flutter/material.dart';
import 'package:foodapi/provider/theme_changer.dart';

class CustomScreen extends StatelessWidget {
  const CustomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          ThemeChangeMode(),
          BottomAppBar(),
        ],
      ),
    );
  }
}
