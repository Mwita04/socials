import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:socials/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

// Log Out User
  void logout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        actions: [
          //Log Out button
          IconButton(onPressed: logout, icon: Icon(Icons.logout_outlined))
        ],
      ),
      drawer: MyDrawer( ),
    );
  }
}
