import 'package:flutter/material.dart';

Widget formField(String name, bool isLong)
{
  return Padding(
                    padding: const EdgeInsets.only(left: 35, right: 20, top: 5),
                    child: TextFormField(
                       keyboardType: isLong ? TextInputType.multiline :  TextInputType.name,
                        maxLines:isLong ? 10 : 1,
                      decoration: InputDecoration(
                        hintText: name,
                        filled: true,
                        fillColor: Colors.white,
                        
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  );
}