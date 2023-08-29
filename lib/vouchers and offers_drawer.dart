import 'package:flutter/material.dart';
import 'package:zeeshan_food_app/Templates/custom_container.dart';
import 'package:zeeshan_food_app/colors.dart';

class VouchersandOffers extends StatefulWidget {
  const VouchersandOffers({Key? key}) : super(key: key);

  @override
  State<VouchersandOffers> createState() => _VouchersandOffersState();
}

class _VouchersandOffersState extends State<VouchersandOffers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MyColors.white,
        elevation: 3.0, 
        title: Text('Vouchers & Offers',style: TextStyle(color: MyColors.black),),
        leading:IconButton(onPressed: (){},icon: Icon(Icons.arrow_back,color: MyColors.pink,)) ,
      ),
        body: Padding(
        padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(scrollDirection:Axis.vertical ,
          child: Column(children: [
          SizedBox(height: 10,),
            customcontainer(height: 80,
            width: MediaQuery.of(context).size.width,
            color: MyColors.white,
          boxShadow: [BoxShadow(color: MyColors.lightblack,spreadRadius: 0.5)],

          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Rs 0.00",style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                Text('Saved this month',style: TextStyle(color: MyColors.lightblack),),
                ],),

              Row(
                children: [
                   VerticalDivider(color: MyColors.lightblack,thickness: 2),
                  SizedBox(width: 10,),
                  Icon(Icons.airplane_ticket_outlined,color: MyColors.pink),
                  SizedBox(width: 10,),
                  Text("Add a Voucher",style: TextStyle(color: MyColors.pink,fontWeight: FontWeight.bold,fontSize: 15),),
                ],),
            ],
          ),
          ),
              SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  customcontainer(
                    boxShadow: [BoxShadow(color: MyColors.black,spreadRadius: 0.5)],
                    height: 55, width:98,
                    borderRadius: 30,
                    color: MyColors.white,
                    child: Row( mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Sort', style: TextStyle(fontSize: 18,color: MyColors.black,fontWeight: FontWeight.bold),),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  customcontainer(
                    boxShadow: [BoxShadow(color: MyColors.black,spreadRadius: 0.5)],
                    height: 55, width:140,
                    borderRadius: 30,
                    color: MyColors.white,
                    child: Row( mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Restaurants', style: TextStyle(fontSize: 18,color: MyColors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  customcontainer(
                    boxShadow: [BoxShadow(color: MyColors.black,spreadRadius: 0.5)],
                    height: 58, width:100,
                    borderRadius: 30,
                    color: MyColors.white,
                    child: Row( mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shops', style: TextStyle(fontSize: 18,color: MyColors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Stack(
              alignment: Alignment.center,
              children: [
                customcontainer(padding: EdgeInsets.only(top:10 ,left:8.0 ,right:5.0 ),
                  height: 155,width: MediaQuery.of(context).size.width,
                  //width: 200,
                  color: MyColors.white,
                  boxShadow: [BoxShadow(color: MyColors.black,spreadRadius: 0.5)],
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                        CircleAvatar(
                          child: Icon(Icons.troubleshoot_sharp,),
                          radius: 25,backgroundColor: MyColors.pink,),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Save on your first order(10D)',style: TextStyle(fontSize: 16)),
                                Row(
                                  children: [
                                    Text('Rs. 250.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                   SizedBox(width: 4.0,),
                                    Icon(Icons.info_outline,color: MyColors.pink,),Text('VXBBRAPW'),
                                    SizedBox(width: 4.0,),
                                    IconButton(onPressed: (){},icon: Text('New',style: TextStyle(color: MyColors.pink,fontWeight:FontWeight.bold ),),),
                                    //ElevatedButton(onPressed: (){}, child: Text('New',style: TextStyle(color: MyColors.pink),))
                                  ],
                                ),
                              ],
                            ),

                          ]
                      ),
                      SizedBox(height: 20,),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          customcontainer(height: 55,width: 300,color: MyColors.white2,
                              borderRadius:25,
                            child:Row(children: [
                              Text("Min.spend Rs. 350 ' Use by 18 Aug 2023"),

                            ]) , ),
                          SizedBox(width: 20.0,),
                          Text("Details",
                              style: TextStyle(color: MyColors.pink,
                                  fontWeight: FontWeight.bold,fontSize:16 ),),
                        ],
                      )
                    ],
                  ),

                ),
                Positioned(
                    left: -5,
                    child: customcontainer(
                      height: 20,
                      width: 20,
                      decoration:BoxDecoration(
                          color: MyColors.white,
                          shape: BoxShape.circle
                      ),
                    )),
                Positioned(
                    right: -5,
                    child: customcontainer(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: MyColors.white,
                          shape: BoxShape.circle
                      ),
                    )),
              ],
            ),
            SizedBox(height: 15.0,),
            Divider(
              color: MyColors.white2,
              thickness: 6,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Discover more restaurant deals",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              ],
            ),
            SizedBox(height: 10.0,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          customcontainer(
                              padding: EdgeInsets.all(0.0),
                              borderRadius: 10.0,
                              height: 180,
                              width: 150,
                              color: MyColors.lightblack,
                              onTap:(){},
                              image: DecorationImage(image: AssetImage('assets/images/pizz2.jpg',),
                                fit: BoxFit.cover,)

                            // child:Image.asset('assets/images/pizza.jpg',
                            //   fit: BoxFit.cover,
                            // )
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          customcontainer(
                              padding: EdgeInsets.all(0.0),
                              borderRadius: 10.0,
                              height: 180,
                              width: 150,
                              color: MyColors.lightblack,
                              onTap:(){},
                              image: DecorationImage(image: AssetImage('assets/images/f50.jpg',),
                                fit: BoxFit.cover,)

                            // child:Image.asset('assets/images/pizza.jpg',
                            //   fit: BoxFit.cover,
                            // )
                          ),

                        ],
                      ),

                    ],

                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          customcontainer(
                              padding: EdgeInsets.all(0.0),
                              borderRadius: 10.0,
                              height: 180,
                              width: 150,
                              color: MyColors.lightblack,
                              onTap:(){},
                              image: DecorationImage(image: AssetImage('assets/images/burger.jpg',),
                                fit: BoxFit.cover,)

                            // child:Image.asset('assets/images/pizza.jpg',
                            //   fit: BoxFit.cover,
                            // )
                          ),

                        ],
                      ),

                    ],

                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          customcontainer(
                              padding: EdgeInsets.all(0.0),
                              borderRadius: 10.0,
                              height: 180,
                              width: 150,
                              color: MyColors.lightblack,
                              onTap:(){},
                              image: DecorationImage(image: AssetImage('assets/images/f15.jpg',),
                                fit: BoxFit.cover,)

                            // child:Image.asset('assets/images/pizza.jpg',
                            //   fit: BoxFit.cover,
                            // )
                          ),

                        ],
                      ),

                    ],

                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          customcontainer(
                              padding: EdgeInsets.all(0.0),
                              borderRadius: 10.0,
                              height: 180,
                              width: 150,
                              color: MyColors.lightblack,
                              onTap:(){},
                              image: DecorationImage(image: AssetImage('assets/images/fpepsi.jpg',),
                                fit: BoxFit.cover,)

                            // child:Image.asset('assets/images/pizza.jpg',
                            //   fit: BoxFit.cover,
                            // )
                          ),

                        ],
                      ),

                    ],

                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          customcontainer(
                              padding: EdgeInsets.all(0.0),
                              borderRadius: 10.0,
                              height: 180,
                              width: 150,
                              color: MyColors.lightblack,
                              onTap:(){},
                              image: DecorationImage(image: AssetImage('assets/images/zf.png',),
                                fit: BoxFit.cover,)

                            // child:Image.asset('assets/images/pizza.jpg',
                            //   fit: BoxFit.cover,
                            // )
                          ),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5.0,),
                              Container(
                                padding: EdgeInsets.all(0.0),
                                height: 40,width: 110,
                                decoration: BoxDecoration(color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),),

                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(children: [Text('Summer Deals',style: TextStyle(color: MyColors.white),)]),
                                ),
                              ),


                            ],
                          ),
                        ],
                      ),

                    ],

                  ),
                ],
              ),
            ),

            SizedBox(height: 20.0,),

            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Discover more shooping deals",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              ],
            ),
            SizedBox(height: 10.0,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          customcontainer(
                              padding: EdgeInsets.all(0.0),
                              borderRadius: 10.0,
                              height: 180,
                              width: 150,
                              color: MyColors.lightblack,
                              onTap:(){},
                              image: DecorationImage(image: AssetImage('assets/images/shooping.jpg',),
                                fit: BoxFit.cover,)

                            // child:Image.asset('assets/images/pizza.jpg',
                            //   fit: BoxFit.cover,
                            // )
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          customcontainer(
                              padding: EdgeInsets.all(0.0),
                              borderRadius: 10.0,
                              height: 180,
                              width: 150,
                              color: MyColors.lightblack,
                              onTap:(){},
                              image: DecorationImage(image: AssetImage('assets/images/bakery.jpg',),
                                fit: BoxFit.cover,)

                            // child:Image.asset('assets/images/pizza.jpg',
                            //   fit: BoxFit.cover,
                            // )
                          ),

                        ],
                      ),

                    ],

                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          customcontainer(
                              padding: EdgeInsets.all(0.0),
                              borderRadius: 10.0,
                              height: 180,
                              width: 150,
                              color: MyColors.lightblack,
                              onTap:(){},
                              image: DecorationImage(image: AssetImage('assets/images/dineoffer.jpg',),
                                fit: BoxFit.cover,)

                            // child:Image.asset('assets/images/pizza.jpg',
                            //   fit: BoxFit.cover,
                            // )
                          ),

                        ],
                      ),

                    ],

                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          customcontainer(
                              padding: EdgeInsets.all(0.0),
                              borderRadius: 10.0,
                              height: 180,
                              width: 150,
                              color: MyColors.lightblack,
                              onTap:(){},
                              image: DecorationImage(image: AssetImage('assets/images/f15.jpg',),
                                fit: BoxFit.cover,)

                            // child:Image.asset('assets/images/pizza.jpg',
                            //   fit: BoxFit.cover,
                            // )
                          ),

                        ],
                      ),

                    ],

                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          customcontainer(
                              padding: EdgeInsets.all(0.0),
                              borderRadius: 10.0,
                              height: 180,
                              width: 150,
                              color: MyColors.lightblack,
                              onTap:(){},
                              image: DecorationImage(image: AssetImage('assets/images/zf.png',),
                                fit: BoxFit.cover,)

                            // child:Image.asset('assets/images/pizza.jpg',
                            //   fit: BoxFit.cover,
                            // )
                          ),

                        ],
                      ),

                    ],

                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          customcontainer(
                              padding: EdgeInsets.all(0.0),
                              borderRadius: 10.0,
                              height: 180,
                              width: 150,
                              color: MyColors.lightblack,
                              onTap:(){},
                              image: DecorationImage(image: AssetImage('assets/images/zf.png',),
                                fit: BoxFit.cover,)

                            // child:Image.asset('assets/images/pizza.jpg',
                            //   fit: BoxFit.cover,
                            // )
                          ),
                       
                        ],
                      ),

                    ],

                  ),
                ],
              ),
            ),
                    SizedBox(height: 10,),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Refer a Friend",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      ],
                    ),
            SizedBox(height: 10,),

            customcontainer(boxShadow: [BoxShadow(color: MyColors.black,spreadRadius: 0.1)],
              padding: EdgeInsets.only(left:10,right:10,top:5 ),
              height: 130,color: MyColors.white,
            child: Row(children: [
              Image.asset("assets/images/Referfood.png",width: 150,height: 100),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Refer friends and get\nRs.250.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                SizedBox(height: 8,),
                  customcontainer(
                    height: 50,width: 120,color: MyColors.pink,
                    child: Text("Find out how",
                    style: TextStyle(color: MyColors.white,fontWeight: FontWeight.bold,),),),
              ],)
            ],
            ),
            
            
            ),
          ],
          ),
        ),
      )
    );
  }
}
