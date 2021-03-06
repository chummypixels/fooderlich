import 'package:flutter/material.dart';
import 'package:fooderlich/card3.dart';
import 'card1.dart';
import 'card2.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //TODO: Add state variables and functions
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    //TODO: Replace with Card1
    Card1(),
    //TODO: Replace with Card2
    Card2(),
    //TODO: Replace with Card3
    Card3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: Show selected tab
      body: pages[_selectedIndex],
      //TODO: Add bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // TODO: Set selected tab bar
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
