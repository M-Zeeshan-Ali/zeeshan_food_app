import 'package:flutter/material.dart';
import 'package:zeeshan_food_app/Templates/custom_container.dart';
import 'package:zeeshan_food_app/Templates/custom_elevatedbutton.dart';
import 'package:zeeshan_food_app/colors.dart';


class Resturants extends StatefulWidget {
  const Resturants({Key? key}) : super(key: key);

  @override
  State<Resturants> createState() => _ResturantsState();
}

class _ResturantsState extends State<Resturants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white1,
    body: SingleChildScrollView(scrollDirection: Axis.vertical,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              customcontainer(
                height: 55, width:90,
                borderRadius: 30,
                color: MyColors.pink,
                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        'Delivery', style: TextStyle(color: MyColors.white1,)
                       // ,textAlign:TextAlign.center
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    customcontainer(
                      boxShadow: [BoxShadow(color: MyColors.black,spreadRadius: 0.5)],
                      height: 55, width:90,
                      borderRadius: 30,
                      color: MyColors.white,
                      child: Row( mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                              'Pick-up', style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold)
                            // ,textAlign:TextAlign.center
                          ),
                        ],
                      ),
                    ),
                    SizedBox()
                  ],
                ),
              ),

            ],
          ),
        ),
            SizedBox(height: 200,),
            Align(alignment:Alignment.center ,
              child: customcontainer(
                  padding: EdgeInsets.all(0.0),
                   borderRadius: 0.0,
                  height: 150,
                  width: 110,
                  color: MyColors.white1,
                  onTap:(){},
                  image: DecorationImage(
                    image: AssetImage('assets/images/favourite-image.png',),
                    ),
              ),
            ),
            Text('No Favouriites Saved',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: MyColors.black),),
            SizedBox(height: 10,),
            Text('To make ordering even faster,you will find all your faves ',style: TextStyle(color: MyColors.lightblack,fontSize: 16)),
            Text('here.Just look for the heart icon',style: TextStyle(color: MyColors.lightblack,fontSize: 16)),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
              primary: MyColors.pink,
              onPrimary: Colors.white,
              shadowColor: Colors.red,
              elevation: 3,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10),),),),
              onPressed: (){}, child: Text("Let's Find Some Favourites"),)
          ]
      ),
    ),

    );
  }
}
