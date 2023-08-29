import 'package:flutter/material.dart';

import 'Templates/custom_container.dart';
import 'colors.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MyColors.white,
        elevation: 1.0,
        title: Text('Profile',style: TextStyle(color: MyColors.black),),
        leading:IconButton(onPressed: (){},icon: Icon(Icons.close,color: MyColors.pink,)) ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection:Axis.vertical ,
          child: Column(
              children: [
    SizedBox(height: 20,),
    customcontainer(
      height: 100,
    width: MediaQuery.of(context).size.width,
    color: MyColors.white,
    boxShadow: [BoxShadow(color: MyColors.lightblack,spreadRadius: 0.5,offset: Offset(0.1, 1.0))],

      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text("Name",style: TextStyle(fontSize: 16,color: MyColors.black),),
    Spacer(),
      Icon(Icons.edit_outlined,color: MyColors.pink),

    ],
    ),
    SizedBox(height: 10,),
    Text("zeeshan Ali",style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold,fontSize: 20)),


          ]
    ),
      ),
                SizedBox(height: 20,),
                customcontainer(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: MyColors.white,
                  boxShadow: [BoxShadow(color: MyColors.lightblack,spreadRadius: 0.5,offset: Offset(0.1, 1.0))],

                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Name",style: TextStyle(fontSize: 16,color: MyColors.black),),
                            Spacer(),
                            Icon(Icons.edit_outlined,color: MyColors.pink),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Text("zzeshan.khalil@gmail.com",style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                       // ElevatedButton(onPressed: () {}, child: Text("verified"),),
                        SizedBox(height: 10,),
                        customcontainer(
                          height: 30,width: 60,
                         padding: EdgeInsets.zero,borderRadius:20 ,
                           color: MyColors.white2,
                           child: Row(mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                             Text("Verified",style: TextStyle(fontWeight: FontWeight.bold)),
                           ],
                           ),
                       ),


                      ]
                  ),
                ),
                SizedBox(height: 20,),

                customcontainer(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  color: MyColors.white,
                  boxShadow: [BoxShadow(color: MyColors.lightblack,spreadRadius: 0.5,offset: Offset(0.1, 1.0))],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Mobile number",style: TextStyle(fontSize: 16,color: MyColors.black),),
                      Spacer(),
                      Icon(Icons.edit_outlined,color: MyColors.pink),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Connected accounts",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: MyColors.black)),
                  ],
                ),
    SizedBox(height: 10,),

    customcontainer(
    height: 70,
    width: MediaQuery.of(context).size.width,
    color: MyColors.white,
    boxShadow: [BoxShadow(color: MyColors.lightblack,spreadRadius: 0.5,offset: Offset(0.1, 1.0))],
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Icon(Icons.facebook_sharp,color: MyColors.blue,),
    SizedBox(width: 10,),
    Text("Facebook",style: TextStyle(fontSize: 16,color: MyColors.black),),
    Spacer(),
    Text("Connect",style: TextStyle(color: MyColors.pink,fontWeight: FontWeight.bold),),
    ],),),
          SizedBox(height: 10,),
          customcontainer(
            height: 90,
            width: MediaQuery.of(context).size.width,
            color: MyColors.white,
            boxShadow: [BoxShadow(color: MyColors.lightblack,spreadRadius: 0.5,offset: Offset(0.1, 1.0))],
            child:  Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                Image(image: AssetImage("assets/images/google.png",),height: 20,),
                SizedBox(width: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Google"),
                        SizedBox(height: 5.0,),
                        Text("connected",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:MyColors.blue)),
                      ],
                    ), Spacer(),Icon(Icons.close),

                  ],
            ),





              )
              ],
          ),
        ),
      ),
    );
  }
}
