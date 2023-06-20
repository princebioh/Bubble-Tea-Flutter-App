import 'package:flutter/material.dart';

class DrinkTile extends StatelessWidget {
  const DrinkTile({
    super.key,
    required this.drinkIcon,
    required this.drinkName,
    required this.drinkPrice,
    required this.trailIcon,
    required this.onTap,
  });
  final String drinkIcon;
  final String drinkName;
  final String drinkPrice;
  final IconData trailIcon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
          trailing: IconButton(
            onPressed: onTap,
            icon: Icon(
              trailIcon,
              size: 25,
            ),
          ),
        ),
      ),
    );
  }
}
