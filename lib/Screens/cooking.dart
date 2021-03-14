import 'package:hexcolor/hexcolor.dart';

import '../Widgets/cakes_list.dart';
import '../Widgets/search_container.dart';
import 'package:flutter/material.dart';



class Cooking extends StatefulWidget {
  final type;
  Cooking({this.type});

  @override
  _CookingState createState() => _CookingState();
}

class _CookingState extends State<Cooking> {
  List _labels = [
    'All',
    'Cake',
    'Fast Food',
    'Kabab',
    'Chinease',
  ];

  List<bool> _selected = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:HexColor('#EBEFEC') ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            searchContainer(false, widget.type, context),
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
                      'Labels',
                      style: TextStyle(color: Colors.black, fontSize: 19),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: FilterChip(
                        label: Icon(
                          Icons.add,
                          color: HexColor("#7868E6"),
                        ),
                        backgroundColor: Colors.transparent,
                        shape: StadiumBorder(
                            side: BorderSide(color: HexColor("#7868E6"))),
                        onSelected: (_) {
                          print('add');
                        },
                      ),
                    ),
                    buildLabels(_labels, _selected),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Bookmarks',
                      style: TextStyle(color: Colors.black, fontSize: 19),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Image.asset(
                      'assets/images/bookmark.png',
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('154'),
                  ],
                ),


                CakesList(),



              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLabels(List labels, dynamic _selected) {
    return Flexible(
      child: Container(
        height: 50,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: labels.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: FilterChip(
                label: _selected[index]
                    ? Text(
                        labels[index],
                        style: TextStyle(color: Colors.white),
                      )
                    : Text(labels[index]),
                showCheckmark: false,
                selected: _selected[index],
                selectedColor: HexColor("#7868E6"),
                onSelected: (selected) {
                  setState(() {
                    _selected[index] = selected;
                  });
                },
              ),
            );
          },
        ),
      ),
    );
  }


  
}
