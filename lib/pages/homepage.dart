import 'package:bubble_tea_ui/pages/cart_page.dart';
import 'package:bubble_tea_ui/pages/shop_page.dart';
import 'package:bubble_tea_ui/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Bottom nav bar
  int _pageIndex = 0;

  // Pages to display
  final List _pages = const [
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade200,
        elevation: 0,
      ),
      drawer: const Drawer(),
      body: _pages[_pageIndex],
      bottomNavigationBar: GoogleNavBar(
        onTabChange: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
      ),
    );
  }
}
