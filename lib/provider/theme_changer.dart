import 'package:flutter/material.dart';
import 'package:foodapi/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeChangeMode extends StatelessWidget {
  const ThemeChangeMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Image.asset(
              Theme.of(context).brightness == Brightness.light
                  ? 'assets/brooke-lark-lcZ9NxhOSlo-unsplash.jpg'
                  : 'assets/pexels-valeriya-842571.jpg',
              key: Key(Theme.of(context).brightness.toString()),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            right: 80,
            child: Align(
              alignment: Alignment.topRight,
              child:
                  Consumer<ThemeProvider>(builder: (context, provider, child) {
                return IconButton(
                  icon: Icon(
                    provider.currentTheme == 'light'
                        ? Icons.toggle_off_outlined
                        : Icons.toggle_on_outlined,
                    color: provider.currentTheme == 'light'
                        ? Colors.amber
                        : Colors.grey,
                  ),
                  onPressed: () {
                    provider.changeTheme(
                        provider.currentTheme == 'light' ? 'dark' : 'light');
                  },
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
