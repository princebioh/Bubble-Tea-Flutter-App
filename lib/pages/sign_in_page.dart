import 'package:flutter/material.dart';

import '../widgets/login_filed.dart';

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
                padding: const EdgeInsets.only(left: 252, top: 10),
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ), 
              
            ],
          ),
        ),
      ),
    ));
  }
}
