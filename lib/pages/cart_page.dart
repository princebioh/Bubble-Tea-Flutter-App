import 'package:bubble_tea_ui/widgets/drink_tile.dart';
import 'package:bubble_tea_ui/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/drinks.dart';
import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text Widget
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Your Cart",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Consumer<Shop>(
              builder: (context, value, child) {
                return ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    Drink cartItem = value.userCart[index];
                    return DrinkTile(
                      drinkIcon: cartItem.imgLocation,
                      drinkName: cartItem.name,
                      drinkPrice: cartItem.price,
                      trailIcon: Icons.delete,
                      onTap: () {
                        context.read<Shop>().removeDrinkFromCart(cartItem);
                      },
                    );
                  },
                );
              },
            ),
          ),
          SubmitButton(text: "Pay Now", onPress: () {}),
        ],
      ),
    );
  }
}
