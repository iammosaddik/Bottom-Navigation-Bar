import 'package:flutter/material.dart';

import 'Curved Nav Bar/curved_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigationBar',
      home: MyHomePage1(),
    );
  }
}
