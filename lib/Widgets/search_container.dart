import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Widgets/backbutton.dart';

Widget searchContainer(
    bool allowNameAndLogo, String bookMarkName, dynamic context) {
  return Container(
    // width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      color: HexColor('#7868E6'),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 20),
        allowNameAndLogo
            ? Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/bubbel.png',
                          width: 25,
                          height: 25,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        if (allowNameAndLogo)
                          GestureDetector(
                            child: Icon(Icons.notifications_outlined,
                                color: Colors.white, size: 25),
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => CategoriesData()),
                              // );
                              // print('hello');
                            },
                          ),
                      ],
                    )
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                       backButton(context),
                      ],
                    ),
                    Text(
                      bookMarkName,
                      style: TextStyle(
                          color: HexColor("#ffffff"),
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Icon(Icons.notifications_outlined,
                              color: Colors.white, size: 25),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => CategoriesData()),
                            // );
                            // print('hello');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),

        // SizedBox(height: 15,),

        if (allowNameAndLogo)
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Akash',
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 19),
                    ),
                  ],
                ),
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              allowNameAndLogo ? SizedBox(height: 0) : SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: HexColor('#AAA1E5'),
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 32,
                          ),
                          onPressed: () {
                            //search implementation is remaining
                          },
                        ),
                        Text(
                          'What bookmark are you searching for ?',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              allowNameAndLogo ? SizedBox(height: 10) : SizedBox(height: 30),
            ],
          ),
        ),
      ],
    ),
  );
}
