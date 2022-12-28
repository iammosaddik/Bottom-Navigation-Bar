import 'package:bottom_animation/bottom_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomAnimationBar extends StatefulWidget {
  @override
  _BottomAnimationBarState createState() => _BottomAnimationBarState();
}

class _BottomAnimationBarState extends State<BottomAnimationBar> {
  var items = <BottomNavItem>[
    BottomNavItem(
      title: 'Home',
      widget: Icon(Icons.home),
    ),
    BottomNavItem(
      title: 'Profile',
      widget: Icon(Icons.person),
    ),
    BottomNavItem(
      title: 'Search',
      widget: Icon(
        Icons.search,
      ),
    ),
    BottomNavItem(
      title: 'Bluetooth',
      widget: Icon(Icons.bluetooth),
    ),
    BottomNavItem(
      title: 'Heart',
      widget: Icon(Icons.heart_broken),
    ),
  ];

  List<Widget> screenList = [
    const Text('First Page'),
    const Text('Second Page'),
    const Text('Third Page'),
    const Text('Fourth Page'),
    const Text('Five Page'),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomAnimation(
          selectedIndex: _selectedIndex,
          items: items,
          backgroundColor: Colors.blueAccent,
          onItemSelect: _onItemTapped,
          itemHoverColor: Color(0xfff5dd90),
          itemHoverColorOpacity: .5,
          activeIconColor: Colors.white,
          deActiveIconColor: Colors.white,
          barRadius: 30,
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          itemHoverWidth: 135,
          itemHoverBorderRadius: 30,
        ),
        body: Center(
          child: screenList.elementAt(_selectedIndex),
        ),
      ),
    );
  }
}
