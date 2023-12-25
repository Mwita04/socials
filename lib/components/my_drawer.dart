import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // Drawer Header
          DrawerHeader(child: Icon(Icons.favorite_outline),),

          //Home tile

          //Profile tile

          //Users tile
        ],
      ),
    );
  }
}