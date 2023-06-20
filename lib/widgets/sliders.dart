import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  MySlider({
    super.key,
    required this.initialValue,
    required this.name,
  });
  double initialValue;
  final String name;

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(
              widget.name,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: Slider(
              value: widget.initialValue,
              onChanged: (value) {
                setState(() {
                  widget.initialValue = value;
                });
              },
              label: "${widget.initialValue}",
              divisions: 4,
              activeColor: Colors.brown.shade500,
              inactiveColor: Colors.brown.shade300,
            ),
          )
        ],
      ),
    );
  }
}
