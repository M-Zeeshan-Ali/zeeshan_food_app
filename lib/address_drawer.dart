import 'package:flutter/material.dart';

import 'Templates/custom_container.dart';
import 'colors.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MyColors.white,elevation: 1.0,
        title: Text("Address",style: TextStyle(color: MyColors.black)),
        leading:IconButton(onPressed: (){},icon: Icon(Icons.arrow_back,color: MyColors.pink,)) ,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assets/images/address.png",),
          ),
          Text("It's Empty here ",style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold,fontSize: 30)),
          SizedBox(height: 10,),
          Text("you don't have any orders yet.Add New Address to"),
          Text("get started\n"),
          customcontainer(padding: EdgeInsets.zero,
            height: 35.0, width: 150,
            onTap: (){},
            color: MyColors.pink,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Add New Address",
                      style: TextStyle(color: MyColors.white,
                          fontWeight: FontWeight.bold,fontSize: 14)),
                ],
              ),
            ), )
        ],

      ),

    );
  }
}
