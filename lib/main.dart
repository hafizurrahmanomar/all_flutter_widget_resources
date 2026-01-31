// widgets import
import 'package:flutter/material.dart';
import 'package:flutter_all_widgets_resource/widgets/container_01.dart';
import 'package:flutter_all_widgets_resource/widgets/container_03.dart';

import 'home.dart';
import 'widgets/appbar.dart';
import 'widgets/button.dart';
import 'widgets/container_02.dart';
import 'widgets/listview.dart';
import 'widgets/main_code.dart';
import 'widgets/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // এখানে default widget set করবে
      home: HomePage(),

      //  সব widget এক জায়গায়
      routes: {
        '/main': (context) => const HomeActivity(),
        '/appbar': (context) => const MyAppBar(),
        '/text': (context) => const TextWidget(),
        '/button': (context) => const ButtonWidget(),
        '/container-01': (context) => const ContainerWidget01(),
        '/container-02': (context) => const ContainerWidget02(),
        '/container-03': (context) => const ContainerWidget03(),
        '/listview': (context) => const ListViewWidget(),
      },
    );
  }
}
