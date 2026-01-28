import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter ALL Widget Practice")),

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
            title: const Text("Container Widget"),
            onTap: () => Navigator.pushNamed(context, '/container'),
          ),
          ListTile(
            title: const Text("ListView Widget"),
            onTap: () => Navigator.pushNamed(context, '/listview'),
          ),
        ],
      ),
    );
  }
}
