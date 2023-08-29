import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:zeeshan_food_app/Templates/custom_container.dart';
import 'package:zeeshan_food_app/colors.dart';

class Order_reordering extends StatefulWidget {
  const Order_reordering({Key? key}) : super(key: key);

  @override
  State<Order_reordering> createState() => _Order_reorderingState();
}

class _Order_reorderingState extends State<Order_reordering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MyColors.white,elevation: 1.0,
        title: Text("Order & reordering",style: TextStyle(color: MyColors.black)),
        leading:IconButton(onPressed: (){},icon: Icon(Icons.close,color: MyColors.pink,)) ,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                     Center(
                       child: Image.asset("assets/images/reorder.png",),
                     ),
            Text("Browse Restaurants",style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold,fontSize: 30)),
            SizedBox(height: 10,),
            Text("you don't have any orders yet.Try on of our awesome restaurants"),
            Text("and place your first order!\n"),
            customcontainer(
              height: 55.0,
              onTap: (){},
              color: MyColors.pink,
               child: Text("Browse Restaurants in your area",
                   style: TextStyle(color: MyColors.white,
                       fontWeight: FontWeight.bold,fontSize: 14)), )
          ],

      ),

    );
  }
}
