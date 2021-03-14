import '../Screens/cooking.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../Models/data.dart';

class CategoriesData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return  GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),

          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 15,
            mainAxisExtent: 190,
          ),
          itemCount: data.length,
          itemBuilder: (BuildContext ctx, index) {
            return GestureDetector(
              onTap:() {
                 Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Cooking(type: data[index].name),),
                                  );    
              },
                          child: Container(
               
              //  height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  color: HexColor(data[index].clrName),
                
                  borderRadius: BorderRadius.circular(27),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        child:Image.asset(
                            data[index].imageName,
                            width: 40,
                            height: 40,
                          ),
                        
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          data[index].name,
                          style: TextStyle(
                            color: HexColor(data[index].nameClr),
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                    
                    ],
                  ),
                ),
              ),
            );
          },
        
      
    );
  }
}
