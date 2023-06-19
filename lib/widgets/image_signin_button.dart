import 'package:flutter/material.dart';

class ImageSignInButton extends StatelessWidget {
  const ImageSignInButton({
    super.key,
    required this.imgLocation,
  });
  final String imgLocation;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: MaterialButton(
          onPressed: () {},
          minWidth: 100,
          height: 100,
          color: Colors.brown.shade100,
          child: Image(
            image: AssetImage(imgLocation),
            width: 60,
          )),
    );
  }
}
