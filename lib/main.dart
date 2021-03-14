import 'package:bookmark/Screens/tabs_screen.dart';

import './Screens/mainpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BookMark',
        home:TabsScreen(),
    );
  }
}
