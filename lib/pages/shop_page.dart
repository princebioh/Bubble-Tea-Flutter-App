import 'package:bubble_tea_ui/models/drinks.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/drink_tile.dart';
import '../models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text Widget
        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            "Bubble Tea Shop",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 10,
        ),

        // Shop Item Tiles
        Expanded(child: Consumer<Shop>(
          builder: (context, value, child) {
            return ListView.builder(
              itemCount: value.drinks.length,
              itemBuilder: (context, index) {
                Drink showDrink = value.drinks[index];
                return DrinkTile(
                  drinkIcon: showDrink.imgLocation,
                  drinkName: showDrink.name,
                  drinkPrice: showDrink.price,
                );
              },
            );
          },
        )),
      ],
    ));
  }
}
