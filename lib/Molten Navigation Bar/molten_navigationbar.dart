import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

class MoltenNavigationBar extends StatefulWidget {
  @override
  _MoltenNavigationBarState createState() => _MoltenNavigationBarState();
}

class _MoltenNavigationBarState extends State<MoltenNavigationBar> {
  // a variable to store the current selected tab. can be used to control PageView
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> screenList = [
    const Text('first Page'),
    const Text('Second Page'),
    const Text('Third Page'),
    const Text('Fourth Page'),
    const Text('Five Page'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ),
      ),
      home: Scaffold(
        // you can use the molten bar in the scaffold's bottomNavigationBar
        bottomNavigationBar: MoltenBottomNavigationBar(
          // curve: Curves.bounceIn,
          // curve: Curves.bounceInOut,
          curve: Curves.bounceOut,
          selectedIndex: _selectedIndex,
          domeHeight: 25,
          barColor: Colors.blueAccent,
          borderColor: Colors.white,
          duration: Duration(milliseconds: 400),

          // specify what will happen when a tab is clicked
          onTabChange: _onItemTapped,
          tabs: [
            MoltenTab(
              unselectedColor: Colors.white,
              icon: Icon(Icons.search),
              selectedColor: Colors.yellow,
            ),
            MoltenTab(
              unselectedColor: Colors.white,
              icon: Icon(Icons.home),
              title: Text(
                'home',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
                selectionColor: Colors.white,
              ),
              selectedColor: Colors.yellow,
            ),
            MoltenTab(
              unselectedColor: Colors.white,
              icon: Icon(Icons.person),
              selectedColor: Colors.yellow,
            ),
            MoltenTab(
              unselectedColor: Colors.white,
              icon: Icon(Icons.person),
              selectedColor: Colors.yellow,
            ),
            MoltenTab(
              unselectedColor: Colors.white,
              icon: Icon(Icons.person),
              selectedColor: Colors.yellow,
            ),
          ],
        ),
        body: Center(
          child: screenList.elementAt(_selectedIndex),
        ),
      ),
    );
  }
}
