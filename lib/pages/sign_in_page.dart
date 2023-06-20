import 'package:bubble_tea_ui/pages/homepage.dart';
import 'package:flutter/material.dart';

import '../widgets/divider.dart';
import '../widgets/image_signin_button.dart';
import '../widgets/login_filed.dart';
import '../widgets/submit_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Logo Icon
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 50),
                child: Image.asset(
                  "assets/images/bubble-tea.png",
                  width: 220,
                ),
              ),

              // Static Text
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                ),
                child: Text(
                  "Boba is life",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),

              // Username Text Field
              LoginInputField(
                controller: _usernameController,
                hintText: "Username",
                hideText: false,
              ),

              const SizedBox(
                height: 15,
              ),

              // Password Text Field
              LoginInputField(
                controller: _passwordController,
                hintText: "Password",
                hideText: true,
              ),

              // Forgot Password
              Padding(
                padding: const EdgeInsets.only(
                  left: 250,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              // Submit Button
              SubmitButton(
                text: "Sign In",
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
              ),

              const SizedBox(
                height: 10,
              ),

              // Divider
              const DividerText(),

              // SignIn Icons
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ImageSignInButton(
                      imgLocation: "assets/images/google.png",
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    ImageSignInButton(
                      imgLocation: "assets/images/apple.png",
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              // Footer Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a member?"),
                  TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: Text(
                      "Register now",
                      style: TextStyle(color: Colors.brown.shade500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
