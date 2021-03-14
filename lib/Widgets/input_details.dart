import 'package:flutter/material.dart';

Widget inputDetails(String img, String filedName) {
  return Row(
    children: [
      SizedBox(
        width: 25,
      ),
      Image.asset(
        img,
        width: 20,
        height: 20,
      ),
      SizedBox(
        width: 5,
      ),
      Text(
        filedName,
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
      )
    ],
  );
}
