import 'package:flutter/material.dart';
import 'package:zeeshan_food_app/Templates/custom_container.dart';

import 'colors.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MyColors.white,
        elevation: 2.0,
        title: Text('Settings',style: TextStyle(color: MyColors.black),),
        leading:IconButton(onPressed: (){},icon: Icon(Icons.arrow_back,color: MyColors.pink,),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            children: [
            SizedBox(height: 20,),
          customcontainer(height: 100,
              width: MediaQuery.of(context).size.width,
              color: MyColors.white,
              boxShadow: [BoxShadow(color: MyColors.lightblack,spreadRadius: 0.2)],
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Language",style: TextStyle(fontSize: 18,color: MyColors.lightblack),),
                  Spacer(), Text("Edit",style: TextStyle(color: MyColors.pink,fontSize: 18,fontWeight: FontWeight.bold)),

              ],),
              SizedBox(height: 10,),
              Text("English",style: TextStyle(fontSize: 18,color: MyColors.black,fontWeight: FontWeight.bold))
            ],
          )
          ),

              SizedBox(height: 20,),
              customcontainer(
                height: 80,
                  width: MediaQuery.of(context).size.width,
                  color: MyColors.white,
                boxShadow: [BoxShadow(color: MyColors.lightblack,spreadRadius: 0.2)],
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.check_box,color: MyColors.pink),
                          SizedBox(width: 10,),
                          Text("Receive push notification ",style: TextStyle(fontSize: 18,color: MyColors.black),),
                          // Spacer(), Text("Edit",style: TextStyle(color: MyColors.pink,fontSize: 18,fontWeight: FontWeight.bold)),
                        ],
                      ),
              ),
              SizedBox(height: 20,),
              customcontainer(
                height: 80,
                width: MediaQuery.of(context).size.width,
                color: MyColors.white,
                boxShadow: [BoxShadow(color: MyColors.lightblack,spreadRadius: 0.2)],
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.check_box,color: MyColors.pink),
                    SizedBox(width: 10,),
                    Text("Receive offers by email ",style: TextStyle(fontSize: 18,color: MyColors.black),),
                    // Spacer(), Text("Edit",style: TextStyle(color: MyColors.pink,fontSize: 18,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              customcontainer(
                height: 80,
                width: MediaQuery.of(context).size.width,
                color: MyColors.white,
                boxShadow: [BoxShadow(color: MyColors.lightblack,spreadRadius: 0.2)],
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.check_box,color: MyColors.pink),
                    SizedBox(width: 10,),
                    Text("Show floating icon ",style: TextStyle(fontSize: 18,color: MyColors.black),),
                    // Spacer(), Text("Edit",style: TextStyle(color: MyColors.pink,fontSize: 18,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text("Vresion:23.14.0 (231400514)"),

            ],

        ),
      ),
    );
  }
}
