import '../Screens/cupcake.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Models/cakeData.dart';

class CakesList extends StatelessWidget {

  List filledStars = [

    "one",
    "two",
    "three",
    "four",
    "five"

  ];


  List unFilledStars = [

    "one",
    "two",
    "three",
    "four",
    "five"

  ];




  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: cakeData.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left:20,right:20, bottom:10),
            child: GestureDetector(
              onTap: () {

                Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CupCake()),
                              );



              },
                          child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 62,
                            height: 57,
                            child: Image.asset(cakeData[index].cakeImage,),
                          ),
                        ],
                      ),
                      Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        children: [
                          
                          Row(
                            children: [
                              Text(cakeData[index].cakeName,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                            ],
                          ),


                          SizedBox(height: 8,),
                         
                              Row(
                                children: [
                                  _buildStarsFilled(),
                                  _buildStarsFilled(),
                                  _buildStarsFilled(),
                                  _buildStarsFilled(),
                                  _buildStarsFilled(),
                                ],
                              ),
                              // _buildStarsUnFilled( 5 - cakeData[index].filledStars),
                            
                          
                        ],
                      ),
                      Column(children: [
                        
                          Icon(Icons.info,color: HexColor("#7868E6"),size: 32,),
                          
                      ])
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildStarsFilled() {
    return Row(
      children: [
        SizedBox(width: 5,),
        Image.asset('assets/images/filled.png'),
      ],
    ) ;
  }
}
