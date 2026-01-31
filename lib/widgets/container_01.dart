import 'package:flutter/material.dart';

class ContainerWidget01 extends StatelessWidget {
  const ContainerWidget01({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Widget with column and Row-01'),
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(flex: 1, child: Container(color: Colors.lightGreen)),
            SizedBox(height: 10),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(flex: 1, child: Container(color: Colors.blue)),
                  SizedBox(width: 10),
                  Expanded(flex: 3, child: Container(color: Colors.red)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(flex: 4, child: Container(color: Colors.indigo)),
            SizedBox(height: 10),
            Expanded(flex: 1, child: Container(color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}
