import '../Screens/fevourite.dart';
import 'package:bookmark/Screens/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget> _screens = [
    MainPage(),
    Fevourite(),
  ];

  int _selectedPageIndex = 0;

  void _changeScreen(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        currentIndex: _selectedPageIndex,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: HexColor('#7868E6'),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: _changeScreen,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Important',
            icon: Icon(
              Icons.star,
              size: 35,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: HexColor('#7868E6'),
        onPressed: () {},
        child: Center(child: Icon(Icons.add)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
