import 'package:flutter/material.dart';

import '../bottom_nav_bar_pages/home_page.dart';
import '../bottom_nav_bar_pages/profile_page.dart';
import '../bottom_nav_bar_pages/search_page.dart';
import '../bottom_nav_bar_pages/setting_page.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedPage = 1;

  List<Widget> pages = [
    HomePage(),
    ProfilePage(),
    SettingPage(),
    SearchPage(),

    // const Text('Home'),
    // const Text('Profile'),
    // const Text('Search'),
    // const Text('Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,

      //==========================
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.white),
                accountName: const Text(
                  "Hafiz Rahman Omar",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  "info@hafiz.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                  "https://avatars.githubusercontent.com/u/80614973?v=4",
                ),

                onDetailsPressed: () {
                  mySnackBar("This is profile", context);
                },
              ),
            ),

            ListTile(
              iconColor: Colors.orange,
              textColor: Colors.indigo,
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              selected: true,
              selectedTileColor: Colors.yellow,
              selectedColor: Colors.red,
              leading: const Icon(Icons.email),
              title: const Text("Email"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                mySnackBar("I am email", context);
              },
            ),
            ListTile(
              titleTextStyle: TextStyle(color: Colors.red, fontSize: 20),
              leading: const Icon(Icons.phone),
              title: const Text("Phone"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                mySnackBar("I am phone", context);
              },
            ),

            ListTile(
              titleTextStyle: TextStyle(color: Colors.red, fontSize: 20),
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              trailing: const Icon(Icons.arrow_forward),
              subtitle: Text('Are you sure?'),
              onTap: () {
                mySnackBar("Please ensure before logout ", context);
              },
            ),
          ],
        ),
      ),

      //===============================
      appBar: AppBar(
        title: const Text("App Bar,Bottom Navigation Bar And Drawer Widget"),
        titleSpacing: 10,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("I am comments", context);
            },
            icon: Icon(Icons.comment),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("I am search", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("I am settings", context);
            },
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("I am email", context);
            },
            icon: Icon(Icons.email),
          ),
        ],
      ),
      //===================================================
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.green,
        onPressed: () {
          mySnackBar("I am floating action button", context);
        },
        child: const Icon(Icons.add),
      ),
      //==========================================================
      body: Center(child: pages.elementAt(_selectedPage)),
      //===========================================

      //  body: Center(child: screens[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        currentIndex: _selectedPage,
        backgroundColor: Colors.white70,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black38,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 18,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        //fixedColor: Colors.grey,
        onTap: (index) {
          _selectedPage = index;
          setState(() {});
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),

      //==============================================
    );
  }

  void mySnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  //======================================================
}
