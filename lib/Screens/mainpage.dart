import '../Widgets/search_container.dart';
import 'package:flutter/material.dart';

import '../Widgets/categories_grid.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            searchContainer(true, "", context),
            Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Categories',
                      style: TextStyle(color: Colors.black, fontSize: 19),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: CategoriesData(),
            ),
          ],
        ),
      ),
    );
  }
}
