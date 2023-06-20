import 'package:bubble_tea_ui/models/shop.dart';
import 'package:bubble_tea_ui/widgets/sliders.dart';
import 'package:bubble_tea_ui/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/drinks.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({
    super.key,
    required this.drink,
  });
  final Drink drink;

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  // Initialize values for Sliders
  double initalPearlValue = 0;
  double initalIceValue = 0;
  double initalSweetValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300,
        elevation: 0,
        title: Text("Order Page : ${widget.drink.name}"),
      ),
      body: Column(children: [
        const SizedBox(
          height: 10,
        ),

        Image(
          image: AssetImage(widget.drink.imgLocation),
          width: 300,
        ),

        const SizedBox(
          height: 100,
        ),
        // Sweet Slider
        MySlider(
          name: "Sweet",
          initialValue: initalSweetValue,
        ),

        // Ice Slider
        MySlider(
          name: "Ice",
          initialValue: initalIceValue,
        ),

        // Pears Slider
        MySlider(
          name: "Pears",
          initialValue: initalPearlValue,
        ),

        const SizedBox(
          height: 10,
        ),

        // Add To Cart
        SubmitButton(
          text: "Add to cart",
          onPress: () {
            // Update Cart List
            context.read<Shop>().addDrinkToCart(widget.drink);

            // Pop out of page
            Navigator.pop(context);

            // Show Alert Dialog
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.brown.shade300,
                  title: const Text("Successfully Added to Cart!"),
                );
              },
            );
          },
        ),
      ]),
    );
  }
}
