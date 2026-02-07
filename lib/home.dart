import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Widget with column and Row-02"),
      ),

      body: ListView(
        children: [
          ListTile(
            title: const Text("Maim Source Code "),
            onTap: () => Navigator.pushNamed(context, '/main'),
          ),

          ListTile(
            title: const Text("AppBar Widget"),
            onTap: () => Navigator.pushNamed(context, '/appbar'),
          ),

          ListTile(
            title: const Text("Text Widget"),
            onTap: () => Navigator.pushNamed(context, '/text'),
          ),
          ListTile(
            title: const Text("Button Widget"),
            onTap: () => Navigator.pushNamed(context, '/button'),
          ),

          ListTile(
            title: const Text("Container Widget with column and Row-01"),
            onTap: () => Navigator.pushNamed(context, '/container-01'),
          ),
          ListTile(
            title: const Text("Container Widget with column and Row-02"),
            onTap: () => Navigator.pushNamed(context, '/container-02'),
          ),
          ListTile(
            title: const Text("Container Widget with column and Row-03"),
            onTap: () => Navigator.pushNamed(context, '/container-03'),
          ),


          ListTile(
            title: const Text("Card design with ListView Widget"),
            onTap: () => Navigator.pushNamed(context, '/listview'),
          ),

          ListTile(
            title: const Text("App Bar,Bottom Navigation Bar And Drawer Widget"),
            onTap: () => Navigator.pushNamed(context, '/BottomNavBar'),
          ),

          ListTile(
            title: const Text("Product Show With ListView Widget"),
            onTap: () => Navigator.pushNamed(context, '/listview_with_product'),
          ),

        ],
      ),
    );
  }
}
