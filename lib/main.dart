// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:socials/auth/login_or_register.dart';
import 'package:socials/theme/dark_mode.dart';
import 'package:socials/theme/light_mode.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
 //3:16