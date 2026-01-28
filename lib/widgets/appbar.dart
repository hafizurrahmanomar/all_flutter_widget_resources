import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,

      appBar: AppBar(
        title: const Text('AppBar Widget Practice'),
        backgroundColor: Colors.pink,
        elevation: 5,
        centerTitle: true,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // back action
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),

        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Search clicked");
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              debugPrint("More clicked");
            },
          ),
        ],

        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Subtitle or additional details',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Appbar Widget Practice',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700,
                color: Colors.amber,
              ),
            ),
            const SizedBox(height: 20),
            const FlutterLogo(size: 100),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text('Press Me')),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star_border, color: Colors.yellow),
                Icon(Icons.star_border, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
              ],
            ),
          ],
        ),
      ),

      //  Floating Action Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Floating Action Button Clicked')),
          );
        },
        child: const Icon(Icons.add),
      ),

      // FAB position
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
      ),
    );
  }
}
