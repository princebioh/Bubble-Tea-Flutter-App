import 'package:flutter/material.dart';

class DrinkTile extends StatelessWidget {
  const DrinkTile({
    super.key,
    required this.drinkIcon,
    required this.drinkName,
    required this.drinkPrice,
  });
  final String drinkIcon;
  final String drinkName;
  final String drinkPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: Colors.brown.shade100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            leading: Image(image: AssetImage(drinkIcon)),
            title: Text(
              drinkName,
            ),
            subtitle: Text(drinkPrice),
            trailing: const Icon(
              Icons.arrow_forward,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
