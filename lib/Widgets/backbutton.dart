

import 'package:flutter/material.dart';

Widget backButton(dynamic context)
{
  return  GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Image.asset(
                            'assets/images/back.png',
                            width: 18,
                            height: 18,
                          ),
                        );
}