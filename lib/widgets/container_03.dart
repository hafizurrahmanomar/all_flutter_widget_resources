import 'package:flutter/material.dart';

class ContainerWidget03 extends StatelessWidget {
  const ContainerWidget03({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Widget with column and Row-03'),
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(flex: 1, child: Container(color: Colors.lightGreen)),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(color: Colors.indigo),
                        ),
                        SizedBox(height: 10),
                        Expanded(flex: 3, child: Container(color: Colors.red)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(flex: 1, child: Container(color: Colors.deepPurple)),
          ],
        ),
      ),
    );
  }
}
