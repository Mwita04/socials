// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:socials/components/my_button.dart';
import 'package:socials/components/my_textfield.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  //Text controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Login Method

  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context)
          .colorScheme
          .background, //Currently sets app to bright mode or dark mode--Currently in bright mode
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Logo
                  Icon(
                    Icons.person,
                    size: 80,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
          
                  const SizedBox(height: 25),
          
                  //app name
                  Text(
                    "S O C I A L S",
                    style: TextStyle(fontSize: 30),
                  ),
          
                  const SizedBox(height: 50),
          
                  //email textfield
                  MyTextField(
                    hintText: "Email",
                    obscureText: false,
                    controller: emailController,
                  ),
          
                  const SizedBox(height: 10),
          
                  //password textfield
          
                  MyTextField(
                    hintText: "Password",
                    obscureText: true,
                    controller: passwordController,
                  ),
          
                  const SizedBox(height: 10),
          
                  //forgot password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
          
                  //sign in button
                  MyButton(
                    text: "Login",
                    onTap: login,
                  ),
          
                  const SizedBox(height: 25),
          
                  //dont have an account? Register here
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      GestureDetector(
                        onTap: onTap,
                        child: const Text(
                          "  Register Here",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
