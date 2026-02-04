
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:SizedBox(

        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Text(" This is Settings Page"),
          ],
        ),

      ),
    );
  }
}
