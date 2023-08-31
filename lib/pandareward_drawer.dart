

import 'package:flutter/material.dart';
import 'package:zeeshan_food_app/Templates/custom_container.dart';
import 'package:zeeshan_food_app/colors.dart';

class PandaRewrd extends StatefulWidget {
  const PandaRewrd({Key? key}) : super(key: key);

  @override
  State<PandaRewrd> createState() => _PandaRewrdState();
}

class _PandaRewrdState extends State<PandaRewrd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: (AppBar(title: Text("0 points"),backgroundColor: MyColors.lightpink,
          bottom: PreferredSize(preferredSize: Size.fromHeight(30),
            child: Container(height: 30,),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_circle_left,color: MyColors.white,size: 50),
    ),
            actions: [
            IconButton(
            onPressed: () {},
            icon: Icon(Icons.question_mark_sharp,color: MyColors.white,size: 30),),

         // actions: [IconButton(onPressed: (){},icon: Icon(Icons.question_mark_sharp,color: MyColors.white,size: 50),),],
    ])
        ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Stack(children: [
            customcontainer( height: 300,color: MyColors.pink,
              width: MediaQuery.of(context).size.width*1,
              decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(100),bottomLeft: Radius.circular(100),
              ),
              ),
              child:Image.asset("assets/images/gift.png") ,
            ),
            Positioned(
              top: 150,right: 5,left: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),

                child: customcontainer( height: 120,width: 440,
                  color: MyColors.white2,
                  child: Column(children: [
                    Text("Points",style: TextStyle(color: MyColors.lightblack),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 5.0,),
                        Icon(Icons.stars),
                        SizedBox(width: 5.0,),
                        Text("0",style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold,fontSize: 28),
                        ),
                        Icon(Icons.arrow_forward_ios,color: MyColors.pink,)

                      ],
                    ),
                     SizedBox(height: 10.0,),
                    Text("How to earn points",style: TextStyle(color: MyColors.pink,fontWeight: FontWeight.bold),)
                  ]),
                ),
              ),
            ),



          ],

          ),
              Stack(
                children: [
                customcontainer(
                  //borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                  //decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(0),topLeft:Radius.circular(0) )),
                  boxShadow: [BoxShadow(color: MyColors.lightblack,offset: Offset(0.5, 0.5),spreadRadius: 0.5)],
                  height: 420,width: 440,
                  color: MyColors.white2,
                  child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Complete stamp cards to win",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,)),
                        SizedBox(height: 10),
                        SingleChildScrollView(scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              //making stylish Container using Transform wicget within entire child of container
                              customcontainer(
                                height: 270,width: 250,color: MyColors.white1,
                                boxShadow: [BoxShadow(color: MyColors.lightblack,spreadRadius: 0.5,offset: Offset(0, 0.5))],
                              child: Column(
                                  crossAxisAlignment:CrossAxisAlignment.start ,
                                  children: [
                                    Text("Any platform order(21x)",style: TextStyle(color: MyColors.lightblack)),
                                    SizedBox(height: 10,),
                                    Text("300 points for every 3x orders\nwith Rs599 min spend",style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(alignment: Alignment.centerRight,
                                          child: Image(image: AssetImage("assets/images/foodstick.png"),height: 80,)),
                                    ),
                                    SizedBox(height: 10,),
                                    Row(children: [
                                  Icon(Icons.border_clear_sharp),
                                  SizedBox(width: 10,),
                                  Column(children: [
                                    Text("To order"),
                                    Text("21 order",style: TextStyle(fontWeight: FontWeight.bold,color: MyColors.lightblack)),
                                  ],),
                                Spacer(),

                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(fixedSize: const Size(80, 40),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                        primary: MyColors.white,side: BorderSide(color: MyColors.pink,width: 2)),
                                      onPressed: (){}, child: Text("Start",style: TextStyle(color: MyColors.pink),)
                                  )],
                                )
                              ]
                              ),
                              ),
                              SizedBox(width: 10,),
                              customcontainer(
                                height: 270,width: 250,color: MyColors.white1,
                                boxShadow: [BoxShadow(color: MyColors.lightblack,spreadRadius: 0.5,offset: Offset(0, 0.5))],
                                child: Column(
                                    crossAxisAlignment:CrossAxisAlignment.start ,
                                    children: [
                                      Text("Any platform order(21x)",style: TextStyle(color: MyColors.lightblack)),
                                      SizedBox(height: 10,),
                                      Text("300 points for every 3x orders\nwith Rs599 min spend",style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                                      SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(alignment: Alignment.centerRight,
                                            child: Image(image: AssetImage("assets/images/foodstick.png"),height: 80,)),
                                      ),
                                      SizedBox(height: 10,),
                                      Row(children: [
                                        Icon(Icons.border_clear_sharp),
                                        SizedBox(width: 10,),
                                        Column(children: [
                                          Text("To order"),
                                          Text("21 order",style: TextStyle(fontWeight: FontWeight.bold,color: MyColors.lightblack)),
                                        ],),
                                        Spacer(),

                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(fixedSize: const Size(80, 40),
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                                primary: MyColors.white,side: BorderSide(color: MyColors.pink,width: 2)),
                                            onPressed: (){}, child: Text("Start",style: TextStyle(color: MyColors.pink),)
                                        )],
                                      )
                                    ]
                                ),
                              ),
                              SizedBox(width: 10,),
                              customcontainer(
                                height: 270,width: 250,color: MyColors.white1,
                                boxShadow: [BoxShadow(color: MyColors.lightblack,spreadRadius: 0.5,offset: Offset(0, 0.5))],
                                child: Column(
                                    crossAxisAlignment:CrossAxisAlignment.start ,
                                    children: [
                                      Text("Any platform order(21x)",style: TextStyle(color: MyColors.lightblack)),
                                      SizedBox(height: 10,),
                                      Text("300 points for every 3x orders\nwith Rs599 min spend",style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                                      SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(alignment: Alignment.centerRight,
                                            child: Image(image: AssetImage("assets/images/foodstick.png"),height: 80,)),
                                      ),
                                      SizedBox(height: 10,),
                                      Row(children: [
                                        Icon(Icons.border_clear_sharp),
                                        SizedBox(width: 10,),
                                        Column(children: [
                                          Text("To order"),
                                          Text("21 order",style: TextStyle(fontWeight: FontWeight.bold,color: MyColors.lightblack)),
                                        ],),
                                        Spacer(),

                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(fixedSize: const Size(80, 40),
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                                primary: MyColors.white,side: BorderSide(color: MyColors.pink,width: 2)),
                                            onPressed: (){}, child: Text("Start",style: TextStyle(color: MyColors.pink),)
                                        )],
                                      )
                                    ]
                                ),
                              ),
                              SizedBox(width: 10,),
                              customcontainer(
                                height: 270,width: 250,color: MyColors.white1,
                                boxShadow: [BoxShadow(color: MyColors.lightblack,spreadRadius: 0.5,offset: Offset(0, 0.5))],
                                child: Column(
                                    crossAxisAlignment:CrossAxisAlignment.start ,
                                    children: [
                                      Text("Any platform order(21x)",style: TextStyle(color: MyColors.lightblack)),
                                      SizedBox(height: 10,),
                                      Text("300 points for every 3x orders\nwith Rs599 min spend",style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                                      SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(alignment: Alignment.centerRight,
                                            child: Image(image: AssetImage("assets/images/foodstick.png"),height: 80,)),
                                      ),
                                      SizedBox(height: 10,),
                                      Row(children: [
                                        Icon(Icons.border_clear_sharp),
                                        SizedBox(width: 10,),
                                        Column(children: [
                                          Text("To order"),
                                          Text("21 order",style: TextStyle(fontWeight: FontWeight.bold,color: MyColors.lightblack)),
                                        ],),
                                        Spacer(),

                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(fixedSize: const Size(80, 40),
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                                primary: MyColors.white,side: BorderSide(color: MyColors.pink,width: 2)),
                                            onPressed: (){}, child: Text("Start",style: TextStyle(color: MyColors.pink),)
                                        )],
                                      )
                                    ]
                                ),
                              ),

                            ],
                          ),
                        ),
                    SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(image: AssetImage("assets/images/foodstick.png"),height: 50,),
                     // Icon(Icons.emoji_food_beverage),
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(top: 5,left: 20,right: 5,bottom: 0),
                            child: Text("Badges",style: TextStyle(fontWeight:FontWeight.bold )),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 5,left: 20,right: 5,bottom: 0),
                            child: Text("Complete stamp cards to earn badges",style: TextStyle(color: MyColors.lightblack)),
                          ),
                      ],),
                      Spacer(),
                      Text("See all",style: TextStyle(color: MyColors.pink,fontSize: 16,fontWeight: FontWeight.bold)),
                    ],),
                  ]),
                ),
              ],

              ),
              SizedBox(height: 10,),
              Text("zeeshan",style: TextStyle(color: MyColors.pink,fontSize: 50,fontWeight: FontWeight.bold),),

        ],
        ),
      ),
    );
  }
}
