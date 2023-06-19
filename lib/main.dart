import 'package:bubble_tea_ui/pages/sign_in_page.dart';
import 'package:bubble_tea_ui/themes/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SignInPage(),
      theme: lightTheme,
    );
  }
}
