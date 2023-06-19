import 'package:flutter/material.dart';

class LoginInputField extends StatelessWidget {
  const LoginInputField({
    super.key,
    required TextEditingController controller,
    required String hintText,
    required bool hideText,
  })  : _hideText = hideText,
        _controller = controller,
        _hintText = hintText;

  final String _hintText;
  final TextEditingController _controller;
  final bool _hideText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _controller,
        obscureText: _hideText,
        decoration: InputDecoration(
          hintText: _hintText,
          hintStyle: const TextStyle(color: Colors.white),
          border: const OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.brown.shade300,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
