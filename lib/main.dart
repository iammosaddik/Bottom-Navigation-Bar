import 'package:flutter/material.dart';

import 'Bottom Animation/bottom_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigationBar',
      home: BottomAnimationBar(),
    );
  }
}
