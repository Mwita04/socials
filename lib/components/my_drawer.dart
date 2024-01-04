import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column (
          children: [
          // Drawer Header
          DrawerHeader(
            child: Icon(
              Icons.favorite_outline,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          const SizedBox(height: 25),

          //Home tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text("H O M E"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),

          //Profile tile
           Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: const Icon(Icons.person_2),
              title: const Text("P R O F I L E"),
              onTap: () {
                Navigator.pop(context);

                // Navigate to profile page
                Navigator.pushNamed(context, '/profile_page');
              },
            ),
          ),

          //Users tile
           Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: const Icon(Icons.group),
              title: const Text("U S E R S"),
              onTap: () {
                Navigator.pop(context);

                // Navigate to profile page
                Navigator.pushNamed(context, '/users_page');
              },
            ),
          ),],),

          //Log out tile
           Padding(
            padding: const EdgeInsets.only(left: 25.0 , bottom: 25),
            child: ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("L O G O U T"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
