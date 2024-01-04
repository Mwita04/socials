// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:socials/components/my_button.dart';
import 'package:socials/components/my_textfield.dart';
import 'package:socials/helper/helper_functions.dart';

// ignore: must_be_immutable
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.onTap});

  final void Function()? onTap;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  //Text controllers
  final TextEditingController usernameController = TextEditingController();

  // register Method
  void registerUser() async {
    // Show Loading Circle
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    //Make sure passwords match
    if (passwordController.text != confirmPasswordController.text) {
      //popup loading circle
      Navigator.pop(context);

      // show error message to user
      displayMessageToUser("Passwords don't match!", context);
    } else {
      //Try creating the user
      try {
        //Create the user
        // ignore: unused_local_variable
        UserCredential? userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);

        // pop loading circle
        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        //pop loading circle
        Navigator.pop(context);

        //display message to user
        displayMessageToUser(e.code, context);
      }
    }
  }

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

                  //username textfield
                  MyTextField(
                    hintText: "Username",
                    obscureText: false,
                    controller: usernameController,
                  ),

                  const SizedBox(height: 10),

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

                  //confirm password textfield
                  MyTextField(
                    hintText: "Confirm Password",
                    obscureText: true,
                    controller: confirmPasswordController,
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

                  //register button
                  MyButton(
                    text: "Register",
                    onTap: registerUser,
                  ),

                  const SizedBox(height: 25),

                  //Already an account? Login here
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          "  Login Here",
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
