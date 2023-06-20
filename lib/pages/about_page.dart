import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.brown.shade200,
        title: const Text("About"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "This app was developed by Prince Bioh",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "princebioh15@gmail.com",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
