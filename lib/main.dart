// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:socials/auth/auth.dart';
import 'package:socials/auth/login_or_register.dart';
import 'package:socials/firebase_options.dart';
import 'package:socials/pages/home_page.dart';
import 'package:socials/pages/profile_page.dart';
import 'package:socials/pages/users_page.dart';
import 'package:socials/theme/dark_mode.dart';
import 'package:socials/theme/light_mode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: const AuthPage(),
      theme: lightMode,
      darkTheme: darkMode,
      routes: {
        '/login_register_page':(context) => LoginOrRegister(),
        '/home_page':(context) => HomePage(),
        '/profile_page':(context) => ProfilePage(),
        '/users_page':(context) =>UsersPage(),
      },
    );
  }
}
 //25:00