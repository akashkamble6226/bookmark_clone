import 'package:bookmark/Widgets/input_details.dart';

import '../Widgets/textformfield.dart';

import '../Widgets/backbutton.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CupCake extends StatefulWidget {
  @override
  _CupCakeState createState() => _CupCakeState();
}

class _CupCakeState extends State<CupCake> {
  List _photos = [
    'assets/images/sm1.png',
    'assets/images/sm4.png',
    'assets/images/sm2.png',
    'assets/images/sm3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: HexColor("#7868E6")),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      backButton(context),
                      Text(
                        'Cupcake',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 19),
                      ),
                      // Image.asset(
                      //   'assets/images/share.png',
                      //   width: 13,
                      //   height: 17,
                      // ),

                      Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 19,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 150),
              ],
            ),
          ),
          Positioned(
            top: 120,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              // width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: HexColor('#EBEFEC'),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    inputDetails('assets/images/title.png', 'Title'),
                    formField('Cupcake', false),
                    SizedBox(height: 10),
                    inputDetails('assets/images/url.png', 'Url'),
                    formField('https://cupcakes.com/images', false),
                    SizedBox(height: 10),
                    inputDetails('assets/images/details.png', 'Details'),
                    formField('Details', true),
                    SizedBox(height: 10),
                    inputDetails('assets/images/photo.png', 'Photo'),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 35, right: 20, top: 5),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 50,
                                height: 49,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: HexColor('#707070'),
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Center(
                                  child: Icon(Icons.add),
                                ),
                              ),
                            ),
                            _buildPrevPhotos(_photos),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height:10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 137,
                              height: 46,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: HexColor('#7868E6'),
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Center(
                                child: Text(
                                  "Cancle",
                                  style: TextStyle(
                                      color: HexColor('#7868E6'),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                            ),
                            Container(
                              width: 137,
                              height: 46,
                              decoration: BoxDecoration(
                                color: HexColor('#7868E6'),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Center(
                                child: Text(
                                  "Save",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 95,
            right: 20,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Icon(
                      Icons.notifications,
                      color: HexColor('#BBBBBB'),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Icon(
                      Icons.star,
                      color: HexColor("#7868E6"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPrevPhotos(List _photos) {
    return Flexible(
      child: Container(
        height: 50,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: _photos.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  Image.asset(
                    _photos[index],
                    width: 50,
                    height: 49,
                  ),
                  SizedBox(width: 10),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
