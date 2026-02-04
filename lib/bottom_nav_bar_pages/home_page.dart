
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:SizedBox(

        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Text(" This is Home Page"),
          ],
        ),

      ),
    );
  }
}
