import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.text,
    required this.onPress,
  });
  final String text;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          onPressed: onPress,
          color: Colors.brown.shade500,
          minWidth: 400,
          height: 70,
          child: Text(
            text,
            style: const TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
