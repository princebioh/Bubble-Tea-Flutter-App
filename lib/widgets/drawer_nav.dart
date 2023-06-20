import 'package:bubble_tea_ui/pages/about_page.dart';
import 'package:flutter/material.dart';

class DrawerNav extends StatelessWidget {
  const DrawerNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.brown.shade200,
      child: Column(children: [
        const SizedBox(
          height: 50,
        ),
        const DrawerHeader(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(),
          child: Image(
            image: AssetImage("assets/images/bubble-tea.png"),
            width: 160,
          ),
        ),
        const SizedBox(
          height: 30,
        ),

        // Home Nav
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListTile(
            leading: const Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            title: const Text(
              "Home",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),

        // About Nav
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListTile(
            leading: const Icon(
              Icons.info,
              size: 30,
              color: Colors.white,
            ),
            title: const Text(
              "About",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ));
            },
          ),
        ),
      ]),
    );
  }
}
