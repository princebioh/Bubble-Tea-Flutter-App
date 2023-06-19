import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleNavBar extends StatelessWidget {
  const GoogleNavBar({super.key, required this.onTabChange});
  final void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: GNav(
          onTabChange: onTabChange,
          tabActiveBorder: Border.all(color: Colors.white),
          activeColor: Colors.white,
          gap: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Shop",
            ),
            GButton(
              icon: Icons.shopping_bag,
              text: "Cart",
            ),
          ]),
    );
  }
}
