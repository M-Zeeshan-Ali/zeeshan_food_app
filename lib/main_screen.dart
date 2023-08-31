import 'package:flutter/material.dart';
import 'package:zeeshan_food_app/Orders%20and%20rordering_drawer.dart';
import 'package:zeeshan_food_app/Templates/custom_container.dart';
import 'package:zeeshan_food_app/Templates/custom_gestureDetector.dart';
import 'package:zeeshan_food_app/address_drawer.dart';
import 'package:zeeshan_food_app/colors.dart';
import 'package:zeeshan_food_app/favourites_heart.dart';
import 'package:zeeshan_food_app/foodForBusiness_drawer.dart';
import 'package:zeeshan_food_app/helpcenter_drawer.dart';
import 'package:zeeshan_food_app/invitefriends_drawer.dart';
import 'package:zeeshan_food_app/pandapro.dart';
import 'package:zeeshan_food_app/pandareward_drawer.dart';
import 'package:zeeshan_food_app/payment_method.dart';
import 'package:zeeshan_food_app/profile_drawer.dart';
import 'package:zeeshan_food_app/setting_drawer.dart';
import 'package:zeeshan_food_app/vouchers%20and%20offers_drawer.dart';

import 'gift_cart.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GlobalKey<ScaffoldState> scaffoldKey=GlobalKey<ScaffoldState>();
  GlobalKey<FormState> formKey=GlobalKey<FormState>();

  final TextEditingController _searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: MyColors.background,
      key: scaffoldKey,
      appBar: AppBar(backgroundColor: MyColors.pink,
          bottom: PreferredSize(preferredSize: Size.fromHeight(80),child: Container(height: 100,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(height: 48, decoration: BoxDecoration(color:Colors.white, borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                    child: TextField(
                        decoration: InputDecoration(
                        prefixIcon:Icon(Icons.search,),
                        border: InputBorder.none,
                        hintText: 'Search for Shops and Restaurants',
                            hintStyle: TextStyle(color: MyColors.lightblack) )
                    ),
                  ),

                  ]
              ),
            ),
          )
          ),


      actions: [
        Image.asset('assets/images/heart.png',height: 30,width:30),
        SizedBox(width:10,),
        Padding(
          padding:EdgeInsets.only(right: 8.0),
          child: Image.asset('assets/images/gift1.png',height: 30,width:30),
        ),
      ],
          leading: IconButton(icon: Icon(Icons.menu),
      onPressed: (){
      scaffoldKey.currentState!.openDrawer();
          },
          ),

          title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        Text('zeeshan'),
        Text('Multan',style: TextStyle(fontSize: 12)),
      ]



      ),

      ),
        drawer: Drawer(child: ListView(
          children: [
            DrawerHeader(
              child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Text('Z',style: TextStyle(color: MyColors.pink,fontWeight: FontWeight.bold,fontSize: 30.0),),
                      backgroundColor: MyColors.white),
                      SizedBox(height: 40,),
                  Text('Zeeshan Ali',
                    style: TextStyle(color: MyColors.white,fontSize: 20.0),),
                ],
              ),decoration: BoxDecoration(color: MyColors.pink),
            ),
            SizedBox(height: 0.0,),
            Padding(
              padding:EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                      children: [
                        CustomGestureDetector(onTap: (){
                          setState(() {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => PaymentMethod(),),);
                          });
                        },
                          child: RichText(
                            text: TextSpan(text: 'Panda', style: TextStyle(color: MyColors.pink,fontSize: 15,),),
                      ),
                        ),
                        CustomGestureDetector(onTap: (){
                          setState(() {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => PaymentMethod(),),);
                          });
                        },
                          child: Text('pay',
                            style: TextStyle(color: MyColors.white,
                            background: Paint()..color = MyColors.pink,fontSize: 20,fontStyle: FontStyle.italic,
                          ),),
                        ),
                        Spacer(),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethod(),
                                )
                                );
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),),
                                backgroundColor: MyColors.white,
                                textStyle:TextStyle(fontSize: 15.0)),
                            child:Padding(
                              padding:EdgeInsets.only(left: 0.0,right:0.0),
                              child: Text('Rs. 0.00',style: TextStyle(color: MyColors.pink),),
                            )),

                        // GestureDetector(
                        //   onTap:() {
                        //     },
                        //   child: Container(height: 20,
                        //       decoration: BoxDecoration(
                        //       color: MyColors.pink,
                        //       borderRadius: BorderRadius.all(Radius.circular(20),),),
                        //       child: Padding(
                        //         padding: EdgeInsets.only(left: 10.0,right:10.0),
                        //         child: Text('Rs. 0.00',style: TextStyle(color: MyColors.white),),
                        //       )),
                        // ),
                  ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Credit and payment methods'),
                      Divider(
                        height: 20,
                        thickness: 5,
                        indent: 20,
                        endIndent: 0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),


            ),
          SizedBox(height: 10,),

          ListTile(leading: Text('Pro',
            style: TextStyle(color: MyColors.white,
            background: Paint()..color = MyColors.pink,fontSize: 20,fontStyle: FontStyle.italic,
          ),
          ),
          // Icon(Icons.propane),
          title:Text('Become a pandapro',style: TextStyle(fontSize: 20.0)),onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PandaPro(),
              )
              );
            //Navigator.canPop(context);
          },
          ),

            ListTile(leading:
               Icon(Icons.local_offer,color: MyColors.pink,size: 28.0),
              title:Text('Vochers and offers',style: TextStyle(fontSize: 20.0)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => VouchersandOffers(),
                )
                );
                //Navigator.canPop(context);
              },
            ),

            ListTile(leading:
            Icon(Icons.heart_broken_sharp,color: MyColors.pink,size: 28.0),
              title:Text('Favourites',style: TextStyle(fontSize: 20.0)),onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Favourites(),));
              //  Navigator.canPop(context);
              },
            ),

            ListTile(leading:
            Icon(Icons.insert_comment_rounded,color: MyColors.pink,size: 28.0),
              title:Text('Orders & reordering',style: TextStyle(fontSize: 20.0)),onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Order_reordering(),));
                // Navigator.canPop(context);
              },
            ),
            ListTile(leading:
            Icon(Icons.perm_identity,color: MyColors.pink,size: 28.0),
              title:Text('Profile',style: TextStyle(fontSize: 20.0)),onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                //Navigator.canPop(context);
              },
            ),
            ListTile(leading:
            Icon(Icons.location_on_outlined,color: MyColors.pink,size: 28.0),
              title:Text('Addresses',style: TextStyle(fontSize: 20.0)),onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Address()));
              //  Navigator.canPop(context);
              },
            ),
            ListTile(leading:
            Icon(Icons.wine_bar_outlined,color: MyColors.pink,size: 28.0),
              title:Text('Panda Rewards',style: TextStyle(fontSize: 20.0)),onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PandaRewrd()));
              // Navigator.canPop(context);
              },
            ),
            ListTile(leading:
            Icon(Icons.question_mark_sharp,color: MyColors.pink,size: 28.0),
              title:Text('help Centers',style: TextStyle(fontSize: 20.0)),onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HelpCenter()));
              //  Navigator.canPop(context);
              },
            ),
            ListTile(leading:
            Icon(Icons.business,color: MyColors.pink,size: 28.0),
              title:Text('FoodPanda For Business',style: TextStyle(fontSize: 18.0)),onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FoodForBusiness()));
              //  Navigator.canPop(context);
              },
            ),
            ListTile(leading:
            Icon(Icons.card_giftcard_outlined,color: MyColors.pink,size: 28.0),
              title:Text('Invite Friends',style: TextStyle(fontSize: 18.0)),onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => InviteFriends()));
              //  Navigator.canPop(context);
              },
            ),

            ListTile(leading:
            Text('Settings',style: TextStyle(fontSize: 18.0)),onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
              //  Navigator.canPop(context);
              },
            ),
            ListTile(leading:
            Text('Terms & Conditions /Privacy',style: TextStyle(fontSize: 18.0)),onTap: () {
             // Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
              //Navigator.canPop(context);
            },
            ),
            ListTile(leading:
            Text('logout',style: TextStyle(fontSize: 18.0)),onTap: () {
            //  Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
            //  Navigator.canPop(context);
            },
            ),
          ],
        )
        ),
      body: Padding(
        padding:EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection:Axis.vertical ,
          child: Column(
            children: [
              Row(
                children: [
                Expanded(
                  child: customcontainer(padding: EdgeInsets.only(top: 18,left: 18,bottom: 10,right: 10),
                    height: 280,
                    width: MediaQuery.of(context).size.width,
                    //width: 200,
                    color: MyColors.white1,
                    boxShadow: [
                      BoxShadow(
                          color:Colors.black12,
                          offset: Offset(0,2),
                          blurRadius: 1,
                          spreadRadius: 1
                      )
                    ],
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Food Delivery',style: TextStyle(color: MyColors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                        Text('Order from your favourite restaurants and home chefs',style: TextStyle(color: MyColors.black,fontSize: 15,)),
                        Spacer(),
                        Align(alignment: Alignment.bottomRight,
                          child: Image.asset('assets/images/main1.png',
                              //alignment: Alignment.bottomRight,
                              height: 70),
                        ),
                      ],

                    ),
                  ),
                ),
                  SizedBox(width: 5.0,),
                  Expanded(
                    child: Column(
                      children: [
                        customcontainer(
                          padding: EdgeInsets.only(top: 18,left: 18),
                          height: 150,
                          //width: MediaQuery.of(context).size.width,
                          color: MyColors.white1,
                          boxShadow: [
                            BoxShadow(
                                color:Colors.black12,
                                offset: Offset(0,2),
                                blurRadius: 1,
                                spreadRadius: 1
                            )
                          ],
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Shops ',style: TextStyle(color: MyColors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                              Text('Everyday essentials ',style: TextStyle(color: MyColors.black,fontSize: 15,)),
                              Spacer(),
                              Align(alignment: Alignment.bottomRight,
                                child: Image.asset('assets/images/main2.png',
                                  height:60,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5.0,),

                        customcontainer(
                          height: 120,// width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(top: 18,left: 18),
                          color: MyColors.white1,
                          boxShadow: [
                            BoxShadow(
                            color:Colors.black12,
                            offset: Offset(0,2),
                         blurRadius: 1,
                          spreadRadius: 1
                        )
                          ],

                          child:Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Pickup ',style: TextStyle(color: MyColors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                                  Text('Get up to 50% \nOFF & more ',style: TextStyle(color: MyColors.black,fontSize: 15,)),
                                ],
                              ),
                              Spacer(),
                              Image.asset('assets/images/mm4.png',
                                //   alignment: Alignment.bottomRight,
                                height: 60,),
                            ],

                          ),
                        ),

                ],

          ),

           )

          ],
          ),
              SizedBox(height: 5.0,),
              Row(
                children: [
                Expanded(
                  child: customcontainer(
                    height: 110,
                     //width: MediaQuery.of(context).size.width*0.5,
                    color: MyColors.white1,
                    padding: EdgeInsets.only(top: 18,left: 18),
                    boxShadow: [
                      BoxShadow(
                          color:Colors.black12,
                          offset: Offset(0,2),
                          blurRadius: 1,
                          spreadRadius: 1
                      )
                    ],
                    child:Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Pandago ',style: TextStyle(color: MyColors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                            Text('Parcel Delivery',style: TextStyle(color: MyColors.black,fontSize: 15,)),
                            // Image.asset('assets/images/main2.png',
                            //   //   alignment: Alignment.bottomRight,
                            //   height: 40,),
                          ],
                        ),
                        Spacer(),
                        Image.asset('assets/images/main3.png',height: 70,
                          //   alignment: Alignment.bottomRight,
                          // height: 50,width:50,
                          // fit: BoxFit.fitHeight,
                          ),
                      ],
                    ),
                  ),
                ),
                  SizedBox(width: 5.0,),
                  Expanded(
                    child: customcontainer(
                      padding: EdgeInsets.only(top: 18,left: 18),
                      height: 110,
                      //width:MediaQuery.of(context).size.width*0.5,
                      color: MyColors.white1,
                      boxShadow: [
                        BoxShadow(
                            color:Colors.black12,
                            offset: Offset(0,2),
                            blurRadius: 1,
                            spreadRadius: 1
                        )
                      ],
                      child:Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Dine-in',style: TextStyle(color: MyColors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                              Text('Eat out and\nSave 25%',style: TextStyle(color: MyColors.black,fontSize: 15,)),
                            ],
                          ),
                          Spacer(),
                          Image.asset('assets/images/main5.png',
                            //   alignment: Alignment.bottomRight,
                            height: 70,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                ),

              customcontainer(
                height: 950,width: MediaQuery.of(context).size.width,
                color: MyColors.white2,
                boxShadow: [
                BoxShadow(color: MyColors.lightblack,
                    offset: Offset(2, 2),blurRadius: 5
                ),
              ],


                child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                    Text('Popular restaurants',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: MyColors.black),)
              ]
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
                                    //////
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    height: 150,
                                    width: 250,
                                    color: MyColors.lightblack,
                                    onTap:(){},
                                  image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
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
                               SizedBox(height: 10.0,),
                               Container(
                              padding: EdgeInsets.all(0.0),
                              height: 40,width: 180,
                              decoration: BoxDecoration(color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),),

                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                              ),
                        ),
                               SizedBox(height: 10.0,),
                               Padding(padding:EdgeInsets.only(left: 10),
                              child: Container(
                                padding: EdgeInsets.all(0.0),
                                height: 30,
                                // width: 88,
                                decoration: BoxDecoration(color: MyColors.white,borderRadius: BorderRadius.all(Radius.circular(20))),

                                child: Padding(
                                  padding:EdgeInsets.all(8.0),
                                  child: Row(
                                      children: [
                                    Text('40 min',style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold),)]),
                                ),
                              ),
                        ),

                      ],
                    ),
                                ],
                              ),
                              Text('Broadway Pizza Multan Mall',style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("\$\$\$Pizza,Pasta,Desserts,Fast Food",style: TextStyle(color: MyColors.lightblack)),
                              Text('PKR 0 delivery fee',style: TextStyle(fontWeight: FontWeight.bold)),
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
                                      ///////////////////////////////
                                      //borderRadius: 10.0,
                                      height: 150,
                                      width: 250,
                                      color: MyColors.lightblack,
                                      onTap:(){},
                                      image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
                                        fit: BoxFit.cover,)

                                    // child:Image.asset('assets/images/pizza.jpg',
                                    //   fit: BoxFit.cover,
                                    // )
                                  ),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // SizedBox(height: 5.0,),
                                      // Container(
                                      //   padding: EdgeInsets.all(0.0),
                                      //   height: 40,width: 110,
                                      //   decoration: BoxDecoration(color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),),
                                      //
                                      //   child: Padding(
                                      //     padding: const EdgeInsets.all(5.0),
                                      //     child: Row(children: [Text('Summer Deals',style: TextStyle(color: MyColors.white),)]),
                                      //   ),
                                      // ),
                                      // SizedBox(height: 10.0,),
                                      // Container(
                                      //   padding: EdgeInsets.all(0.0),
                                      //   height: 40,width: 180,
                                      //   decoration: BoxDecoration(color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),),
                                      //
                                      //   child: Padding(
                                      //     padding: const EdgeInsets.all(5.0),
                                      //     child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                      //   ),
                                      // ),
                                      SizedBox(height: 105.0,),
                                      Padding(padding:EdgeInsets.only(left: 10),
                                        child: Container(
                                          padding: EdgeInsets.all(0.0),
                                          height: 30,
                                          // width: 88,
                                          decoration: BoxDecoration(color: MyColors.white,borderRadius: BorderRadius.all(Radius.circular(20))),

                                          child: Padding(
                                            padding:EdgeInsets.all(8.0),
                                            child: Row(children: [
                                              Text('40 min',style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold),)]),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                              Text('Broadway Pizza Multan Mall',style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("\$\$\$Pizza,Pasta,Desserts,Fast Food",style: TextStyle(color: MyColors.lightblack)),
                              Text('PKR 0 delivery fee',style: TextStyle(fontWeight: FontWeight.bold)),
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
                                  //    borderRadius: 10.0,
                                      height: 150,
                                      width: 250,
                                      color: MyColors.lightblack,
                                      onTap:(){},
                                      image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
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
                                      SizedBox(height: 10.0,),
                                      Container(
                                        padding: EdgeInsets.all(0.0),
                                        height: 40,width: 180,
                                        decoration: BoxDecoration(color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),),

                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                        ),
                                      ),
                                      SizedBox(height: 10.0,),
                                      Padding(padding:EdgeInsets.only(left: 10),
                                        child: Container(
                                          padding: EdgeInsets.all(0.0),
                                          height: 30,
                                          // width: 88,
                                          decoration: BoxDecoration(color: MyColors.white,borderRadius: BorderRadius.all(Radius.circular(20))),

                                          child: Padding(
                                            padding:EdgeInsets.all(8.0),
                                            child: Row(children: [
                                              Text('40 min',style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold),)]),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                              Text('Broadway Pizza Multan Mall',style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("\$\$\$Pizza,Pasta,Desserts,Fast Food",style: TextStyle(color: MyColors.lightblack)),
                              Text('PKR 0 delivery fee',style: TextStyle(fontWeight: FontWeight.bold)),
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
                                    //  borderRadius: 10.0,
                                      height: 150,
                                      width: 250,
                                      color: MyColors.lightblack,
                                      onTap:(){},
                                      image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
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
                                      SizedBox(height: 10.0,),
                                      Container(
                                        padding: EdgeInsets.all(0.0),
                                        height: 40,width: 180,
                                        decoration: BoxDecoration(color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),),

                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                        ),
                                      ),
                                      SizedBox(height: 10.0,),
                                      Padding(padding:EdgeInsets.only(left: 10),
                                        child: Container(
                                          padding: EdgeInsets.all(0.0),
                                          height: 30,
                                          // width: 88,
                                          decoration: BoxDecoration(color: MyColors.white,borderRadius: BorderRadius.all(Radius.circular(20))),

                                          child: Padding(
                                            padding:EdgeInsets.all(8.0),
                                            child: Row(children: [
                                              Text('40 min',style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold),)]),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                              Text('Broadway Pizza Multan Mall',style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("\$\$\$Pizza,Pasta,Desserts,Fast Food",style: TextStyle(color: MyColors.lightblack)),
                              Text('PKR 0 delivery fee',style: TextStyle(fontWeight: FontWeight.bold)),
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
                                //      borderRadius: 10.0,
                                      height: 150,
                                      width: 250,
                                      color: MyColors.lightblack,
                                      onTap:(){},
                                      image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
                                        fit: BoxFit.cover,)

                                    // child:Image.asset('assets/images/pizza.jpg',
                                    //   fit: BoxFit.cover,
                                    // )
                                  ),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // SizedBox(height: 5.0,),
                                      // Container(
                                      //   padding: EdgeInsets.all(0.0),
                                      //   height: 40,width: 110,
                                      //   decoration: BoxDecoration(color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),),
                                      //
                                      //   child: Padding(
                                      //     padding: const EdgeInsets.all(5.0),
                                      //     child: Row(children: [Text('Summer Deals',style: TextStyle(color: MyColors.white),)]),
                                      //   ),
                                      // ),
                                      // SizedBox(height: 10.0,),
                                      // Container(
                                      //   padding: EdgeInsets.all(0.0),
                                      //   height: 40,width: 180,
                                      //   decoration: BoxDecoration(color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),),
                                      //
                                      //   child: Padding(
                                      //     padding: const EdgeInsets.all(5.0),
                                      //     child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                      //   ),
                                      // ),
                                      SizedBox(height: 105.0,),
                                      Padding(padding:EdgeInsets.only(left: 10),
                                        child: Container(
                                          padding: EdgeInsets.all(0.0),
                                          height: 30,
                                          // width: 88,
                                          decoration: BoxDecoration(color: MyColors.white,borderRadius: BorderRadius.all(Radius.circular(20))),

                                          child: Padding(
                                            padding:EdgeInsets.all(8.0),
                                            child: Row(children: [
                                              Text('40 min',style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold),)]),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                              Text('Broadway Pizza Multan Mall',style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("\$\$\$Pizza,Pasta,Desserts,Fast Food",style: TextStyle(color: MyColors.lightblack)),
                              Text('PKR 0 delivery fee',style: TextStyle(fontWeight: FontWeight.bold)),
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
                                      // borderRadius: 10.0,
                                      height: 150,
                                      width: 250,
                                      color: MyColors.lightblack,
                                      onTap:(){},
                                      image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
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
                                      SizedBox(height: 10.0,),
                                      Container(
                                        padding: EdgeInsets.all(0.0),
                                        height: 40,width: 180,
                                        decoration: BoxDecoration(color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),),

                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                        ),
                                      ),
                                      SizedBox(height: 10.0,),
                                      Padding(padding:EdgeInsets.only(left: 10),
                                        child: Container(
                                          padding: EdgeInsets.all(0.0),
                                          height: 30,
                                          // width: 88,
                                          decoration: BoxDecoration(color: MyColors.white,borderRadius: BorderRadius.all(Radius.circular(20))),

                                          child: Padding(
                                            padding:EdgeInsets.all(8.0),
                                            child: Row(children: [
                                              Text('40 min',style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold),)]),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                              Text('Broadway Pizza Multan Mall',style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("\$\$\$Pizza,Pasta,Desserts,Fast Food",style: TextStyle(color: MyColors.lightblack)),
                              Text('PKR 0 delivery fee',style: TextStyle(fontWeight: FontWeight.bold)),
                            ],

                          ),
                        ],
                      ),
                    ),


                    SizedBox(height: 20.0,),
                    Text('Cusine',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: MyColors.black),),
                    SizedBox(height: 20.0,),
                    SingleChildScrollView(scrollDirection: Axis.horizontal,
                       child: Row(
                         children: [
                           Column(
                             children: [
                               GestureDetector(onTap: (){
                                 setState(() {
                                   print('Pressed1');
                                 });
                               },
                                 child: customcontainer(
                                   boxShadow: [
                                     BoxShadow(
                                         color:Colors.black12,
                                         //offset: Offset(0.1,0.1),
                                         blurRadius: 1,
                                         spreadRadius: 0.001
                                     )
                                   ],
                                   height: 80,width: 80,color: MyColors.white1,
                                   child:Image.asset('assets/images/main1.png',
                                     alignment: Alignment.center,
                                     //   alignment: Alignment.bottomRight,
                                     height: 20,),
                                 ),
                               ),
                               SizedBox(height: 10,),
                               Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                             ],
                           ),
                           SizedBox(width: 10,),
                           Column(
                             children: [
                               GestureDetector(onTap: (){
                                 setState(() {
                                   print('Pressed1');
                                 });
                               },
                                 child: customcontainer(
                                   boxShadow: [
                                     BoxShadow(
                                         color:Colors.black12,
                                         //offset: Offset(0.1,0.1),
                                         blurRadius: 1,
                                         spreadRadius: 0.001
                                     )
                                   ],
                                   height: 80,width: 80,color: MyColors.white1,
                                   child:Image.asset('assets/images/main1.png',
                                     alignment: Alignment.center,
                                     //   alignment: Alignment.bottomRight,
                                     height: 20,),
                                 ),
                               ),
                               SizedBox(height: 10,),
                               Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                             ],
                           ),
                           SizedBox(width: 10,),
                           Column(
                             children: [
                               GestureDetector(onTap: (){
                                 setState(() {
                                   print('Pressed1');
                                 });
                               },
                                 child: customcontainer(
                                   boxShadow: [
                                     BoxShadow(
                                         color:Colors.black12,
                                         //offset: Offset(0.1,0.1),
                                         blurRadius: 1,
                                         spreadRadius: 0.001
                                     )
                                   ],
                                   height: 80,width: 80,color: MyColors.white1,
                                   child:Image.asset('assets/images/main1.png',
                                     alignment: Alignment.center,
                                     //   alignment: Alignment.bottomRight,
                                     height: 20,),
                                 ),
                               ),
                               SizedBox(height: 10,),
                               Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                             ],
                           ),
                           SizedBox(width: 10,),
                           Column(
                             children: [
                               GestureDetector(onTap: (){
                                 setState(() {
                                   print('Pressed1');
                                 });
                               },
                                 child: customcontainer(
                                   boxShadow: [
                                     BoxShadow(
                                         color:Colors.black12,
                                         //offset: Offset(0.1,0.1),
                                         blurRadius: 1,
                                         spreadRadius: 0.001
                                     )
                                   ],
                                   height: 80,width: 80,color: MyColors.white1,
                                   child:Image.asset('assets/images/main1.png',
                                     alignment: Alignment.center,
                                     //   alignment: Alignment.bottomRight,
                                     height: 20,),
                                 ),
                               ),
                               SizedBox(height: 10,),
                               Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                             ],
                           ),
                           SizedBox(width: 10,),
                           Column(
                             children: [
                               GestureDetector(onTap: (){
                                 setState(() {
                                   print('Pressed1');
                                 });
                               },
                                 child: customcontainer(
                                   boxShadow: [
                                     BoxShadow(
                                         color:Colors.black12,
                                         //offset: Offset(0.1,0.1),
                                         blurRadius: 1,
                                         spreadRadius: 0.001
                                     )
                                   ],
                                   height: 80,width: 80,color: MyColors.white1,
                                   child:Image.asset('assets/images/main1.png',
                                     alignment: Alignment.center,
                                     //   alignment: Alignment.bottomRight,
                                     height: 20,),
                                 ),
                               ),
                               SizedBox(height: 10,),
                               Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                             ],
                           ),
                           SizedBox(width: 10,),
                           Column(
                             children: [
                               GestureDetector(onTap: (){
                                 setState(() {
                                   print('Pressed1');
                                 });
                               },
                                 child: customcontainer(
                                   boxShadow: [
                                     BoxShadow(
                                         color:Colors.black12,
                                         //offset: Offset(0.1,0.1),
                                         blurRadius: 1,
                                         spreadRadius: 0.001
                                     )
                                   ],
                                   height: 80,width: 80,color: MyColors.white1,
                                   child:Image.asset('assets/images/main1.png',
                                     alignment: Alignment.center,
                                     //   alignment: Alignment.bottomRight,
                                     height: 20,),
                                 ),
                               ),
                               SizedBox(height: 10,),
                               Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                             ],
                           ),
                           SizedBox(width: 10,),
                           Column(
                             children: [
                               GestureDetector(onTap: (){
                                 setState(() {
                                   print('Pressed1');
                                 });
                               },
                                 child: customcontainer(
                                   boxShadow: [
                                     BoxShadow(
                                         color:Colors.black12,
                                         //offset: Offset(0.1,0.1),
                                         blurRadius: 1,
                                         spreadRadius: 0.001
                                     )
                                   ],
                                   height: 80,width: 80,color: MyColors.white1,
                                   child:Image.asset('assets/images/main1.png',
                                     alignment: Alignment.center,
                                     //   alignment: Alignment.bottomRight,
                                     height: 20,),
                                 ),
                               ),
                               SizedBox(height: 10,),
                               Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                             ],
                           ),

                         ],
                       ),
                     ),
                    SizedBox(height: 10,),
                    SingleChildScrollView(scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              GestureDetector(onTap: (){
                                setState(() {
                                  print('Pressed1');
                                });
                              },
                                child: customcontainer(
                                  boxShadow: [
                                    BoxShadow(
                                        color:Colors.black12,
                                        //offset: Offset(0.1,0.1),
                                        blurRadius: 1,
                                        spreadRadius: 0.001
                                    )
                                  ],
                                  height: 80,width: 80,color: MyColors.white1,
                                  child:Image.asset('assets/images/main1.png',
                                    alignment: Alignment.center,
                                    //   alignment: Alignment.bottomRight,
                                    height: 20,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              GestureDetector(onTap: (){
                                setState(() {
                                  print('Pressed1');
                                });
                              },
                                child: customcontainer(
                                  boxShadow: [
                                    BoxShadow(
                                        color:Colors.black12,
                                        //offset: Offset(0.1,0.1),
                                        blurRadius: 1,
                                        spreadRadius: 0.001
                                    )
                                  ],
                                  height: 80,width: 80,color: MyColors.white1,
                                  child:Image.asset('assets/images/main1.png',
                                    alignment: Alignment.center,
                                    //   alignment: Alignment.bottomRight,
                                    height: 20,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              GestureDetector(onTap: (){
                                setState(() {
                                  print('Pressed1');
                                });
                              },
                                child: customcontainer(
                                  boxShadow: [
                                    BoxShadow(
                                        color:Colors.black12,
                                        //offset: Offset(0.1,0.1),
                                        blurRadius: 1,
                                        spreadRadius: 0.001
                                    )
                                  ],
                                  height: 80,width: 80,color: MyColors.white1,
                                  child:Image.asset('assets/images/main1.png',
                                    alignment: Alignment.center,
                                    //   alignment: Alignment.bottomRight,
                                    height: 20,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              GestureDetector(onTap: (){
                                setState(() {
                                  print('Pressed1');
                                });
                              },
                                child: customcontainer(
                                  boxShadow: [
                                    BoxShadow(
                                        color:Colors.black12,
                                        //offset: Offset(0.1,0.1),
                                        blurRadius: 1,
                                        spreadRadius: 0.001
                                    )
                                  ],
                                  height: 80,width: 80,color: MyColors.white1,
                                  child:Image.asset('assets/images/main1.png',
                                    alignment: Alignment.center,
                                    //   alignment: Alignment.bottomRight,
                                    height: 20,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              GestureDetector(onTap: (){
                                setState(() {
                                  print('Pressed1');
                                });
                              },
                                child: customcontainer(
                                  boxShadow: [
                                    BoxShadow(
                                        color:Colors.black12,
                                        //offset: Offset(0.1,0.1),
                                        blurRadius: 1,
                                        spreadRadius: 0.001
                                    )
                                  ],
                                  height: 80,width: 80,color: MyColors.white1,
                                  child:Image.asset('assets/images/main1.png',
                                    alignment: Alignment.center,
                                    //   alignment: Alignment.bottomRight,
                                    height: 20,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              GestureDetector(onTap: (){
                                setState(() {
                                  print('Pressed1');
                                });
                              },
                                child: customcontainer(
                                  boxShadow: [
                                    BoxShadow(
                                        color:Colors.black12,
                                        //offset: Offset(0.1,0.1),
                                        blurRadius: 1,
                                        spreadRadius: 0.001
                                    )
                                  ],
                                  height: 80,width: 80,color: MyColors.white1,
                                  child:Image.asset('assets/images/main1.png',
                                    alignment: Alignment.center,
                                    //   alignment: Alignment.bottomRight,
                                    height: 20,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              GestureDetector(onTap: (){
                                setState(() {
                                  print('Pressed1');
                                });
                              },
                                child: customcontainer(
                                  boxShadow: [
                                    BoxShadow(
                                        color:Colors.black12,
                                        //offset: Offset(0.1,0.1),
                                        blurRadius: 1,
                                        spreadRadius: 0.001
                                    )
                                  ],
                                  height: 80,width: 80,color: MyColors.white1,
                                  child:Image.asset('assets/images/main1.png',
                                    alignment: Alignment.center,
                                    //   alignment: Alignment.bottomRight,
                                    height: 20,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                            ],
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text('Pick Up at a restaurant near your',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: MyColors.black),),
                    SizedBox(height: 10,),
                
                    customcontainer(
                      height: 300,color: MyColors.lightblack,
                    width:MediaQuery.of(context).size.width,
                     //double.infinity,
                      image: DecorationImage(image: AssetImage("assets/images/zf.png"),fit: BoxFit.cover),


                       child: SingleChildScrollView(scrollDirection:Axis.horizontal ,
                         child: Row(
                           children: [
                             customcontainer(
                               height: 240,
                               width: 300,
                               color: MyColors.white2,
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Stack(
                                     children: [
                                       customcontainer(
                                           padding: EdgeInsets.fromLTRB(10.0, 1.0, 2.0, 2.0),
                                           // borderRadius: 10.0,
                                           height: 150,
                                           width: 300,
                                           color: MyColors.lightblack,
                                           onTap:(){},
                                           image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
                                             fit: BoxFit.cover,)

                                         // child:Image.asset('assets/images/pizza.jpg',
                                         //   fit: BoxFit.cover,
                                         // )
                                       ),
                                       Column(crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           SizedBox(height: 5.0,),
                                           customcontainer(
                                             padding: EdgeInsets.all(0.0),
                                             height: 40,width: 110,
                                             borderRadius:BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),) ,
                                             color: MyColors.pink,

                                             child: Padding(
                                               padding: const EdgeInsets.all(5.0),
                                               child: Row(children: [Text('Summer Deals',style: TextStyle(color: MyColors.white),)]),
                                             ),
                                           ),
                                           SizedBox(height: 10.0,),
                                           customcontainer(
                                             padding: EdgeInsets.all(0.0),
                                             height: 40,width: 180,
                                             color: MyColors.pink,
                                             borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),

                                             child: Padding(
                                               padding: const EdgeInsets.all(5.0),
                                               child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                             ),
                                           ),


                                         ],
                                       ),
                                     ],
                                   ),
                                   SizedBox(height: 5.0,),
                                   Row(mainAxisAlignment: MainAxisAlignment.start,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('french Pizza',style: TextStyle(fontWeight: FontWeight.bold)),
                                       Spacer(),
                                       Icon(Icons.star,color: MyColors.yellow),
                                       Text('4.0',style: TextStyle(fontWeight: FontWeight.bold)),
                                       Text('(500+)',style: TextStyle(color: MyColors.lightblack)),
                                     ],
                                   ),
                                   Text("4.5KM away Pick up in 15 min",style: TextStyle(color: MyColors.lightblack)),
                                 ],
                               ),

                             ),
                         SizedBox(width: 10),
                             customcontainer(
                               height: 240,
                               width: 300,
                               color: MyColors.white2,
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Stack(
                                     children: [
                                       customcontainer(
                                           padding: EdgeInsets.fromLTRB(10.0, 1.0, 2.0, 2.0),
                                           // borderRadius: 10.0,
                                           height: 150,
                                           width: 300,
                                           color: MyColors.lightblack,
                                           onTap:(){},
                                           image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
                                             fit: BoxFit.cover,)

                                         // child:Image.asset('assets/images/pizza.jpg',
                                         //   fit: BoxFit.cover,
                                         // )
                                       ),
                                       Column(crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           SizedBox(height: 5.0,),
                                           customcontainer(
                                             padding: EdgeInsets.all(0.0),
                                             height: 40,width: 110,
                                             borderRadius:BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),) ,
                                             color: MyColors.pink,

                                             child: Padding(
                                               padding: const EdgeInsets.all(5.0),
                                               child: Row(children: [Text('Summer Deals',style: TextStyle(color: MyColors.white),)]),
                                             ),
                                           ),
                                           SizedBox(height: 10.0,),
                                           customcontainer(
                                             padding: EdgeInsets.all(0.0),
                                             height: 40,width: 180,
                                             color: MyColors.pink,
                                             borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),

                                             child: Padding(
                                               padding: const EdgeInsets.all(5.0),
                                               child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                             ),
                                           ),


                                         ],
                                       ),
                                     ],
                                   ),
                                   SizedBox(height: 5.0,),
                                   Row(mainAxisAlignment: MainAxisAlignment.start,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('french Pizza',style: TextStyle(fontWeight: FontWeight.bold)),
                                       Spacer(),
                                       Icon(Icons.star,color: MyColors.yellow),
                                       Text('4.0',style: TextStyle(fontWeight: FontWeight.bold)),
                                       Text('(500+)',style: TextStyle(color: MyColors.lightblack)),
                                     ],
                                   ),
                                   Text("4.5KM away Pick up in 15 min",style: TextStyle(color: MyColors.lightblack)),
                                 ],
                               ),

                             ),
                             SizedBox(width: 10),

                             SizedBox(width: 10),
                             customcontainer(
                               height: 240,
                               width: 300,
                               color: MyColors.white2,
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Stack(
                                     children: [
                                       customcontainer(
                                           padding: EdgeInsets.fromLTRB(10.0, 1.0, 2.0, 2.0),
                                           // borderRadius: 10.0,
                                           height: 150,
                                           width: 300,
                                           color: MyColors.lightblack,
                                           onTap:(){},
                                           image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
                                             fit: BoxFit.cover,)

                                         // child:Image.asset('assets/images/pizza.jpg',
                                         //   fit: BoxFit.cover,
                                         // )
                                       ),
                                       Column(crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           SizedBox(height: 5.0,),
                                           customcontainer(
                                             padding: EdgeInsets.all(0.0),
                                             height: 40,width: 110,
                                             borderRadius:BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),) ,
                                             color: MyColors.pink,

                                             child: Padding(
                                               padding: const EdgeInsets.all(5.0),
                                               child: Row(children: [Text('Summer Deals',style: TextStyle(color: MyColors.white),)]),
                                             ),
                                           ),
                                           SizedBox(height: 10.0,),
                                           customcontainer(
                                             padding: EdgeInsets.all(0.0),
                                             height: 40,width: 180,
                                             color: MyColors.pink,
                                             borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),

                                             child: Padding(
                                               padding: const EdgeInsets.all(5.0),
                                               child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                             ),
                                           ),


                                         ],
                                       ),
                                     ],
                                   ),
                                   SizedBox(height: 5.0,),
                                   Row(mainAxisAlignment: MainAxisAlignment.start,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('french Pizza',style: TextStyle(fontWeight: FontWeight.bold)),
                                       Spacer(),
                                       Icon(Icons.star,color: MyColors.yellow),
                                       Text('4.0',style: TextStyle(fontWeight: FontWeight.bold)),
                                       Text('(500+)',style: TextStyle(color: MyColors.lightblack)),
                                     ],
                                   ),
                                   Text("4.5KM away Pick up in 15 min",style: TextStyle(color: MyColors.lightblack)),
                                 ],
                               ),

                             ),
                           ],
                         ),
                       ),
                    ),

                    // SizedBox(height: 10.0,),
                    // Text("zeeshanAli") ,
                  ],
                ),

              ),

              SizedBox(height: 10.0,),
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       SizedBox(height: 10.0,),
                       Row(
                         children: [
                           Text("Your Daily Deals",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: MyColors.black),),
                         ],
                       ) ,
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
                                         // borderRadius: 10.0,
                                         height: 230,
                                         width: 200,
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
                                         // borderRadius: 10.0,
                                         height: 230,
                                         width: 200,
                                         color: MyColors.lightblack,
                                         onTap:(){},
                                         image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
                                           fit: BoxFit.cover,)

                                       // child:Image.asset('assets/images/pizza.jpg',
                                       //   fit: BoxFit.cover,
                                       // )
                                     ),
                                     Column(crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         SizedBox(height: 5.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 110,color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),

                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('Summer Deals',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 170,color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),

                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         Padding(padding:EdgeInsets.only(left: 10),
                                           child: customcontainer(
                                             padding: EdgeInsets.all(0.0),
                                             height: 30,// width: 88,
                                             color: MyColors.white,borderRadius: BorderRadius.all(Radius.circular(20),
                                           ),
                                             child: Padding(
                                               padding:EdgeInsets.all(8.0),
                                               child: Row(children: [
                                                 Text('40 min',style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold),)]),
                                             ),
                                           ),
                                         ),

                                       ],
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
                                         // borderRadius: 10.0,
                                         height: 230,
                                         width: 200,
                                         color: MyColors.lightblack,
                                         onTap:(){},
                                         image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
                                           fit: BoxFit.cover,)

                                       // child:Image.asset('assets/images/pizza.jpg',
                                       //   fit: BoxFit.cover,
                                       // )
                                     ),
                                     Column(crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         SizedBox(height: 5.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 110,color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),

                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('Summer Deals',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 170,color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),

                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         Padding(padding:EdgeInsets.only(left: 10),
                                           child: customcontainer(
                                             padding: EdgeInsets.all(0.0),
                                             height: 30,// width: 88,
                                             color: MyColors.white,borderRadius: BorderRadius.all(Radius.circular(20),
                                           ),
                                             child: Padding(
                                               padding:EdgeInsets.all(8.0),
                                               child: Row(children: [
                                                 Text('40 min',style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold),)]),
                                             ),
                                           ),
                                         ),

                                       ],
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
                                         // borderRadius: 10.0,
                                         height: 230,
                                         width: 200,
                                         color: MyColors.lightblack,
                                         onTap:(){},
                                         image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
                                           fit: BoxFit.cover,)

                                       // child:Image.asset('assets/images/pizza.jpg',
                                       //   fit: BoxFit.cover,
                                       // )
                                     ),
                                     Column(crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         SizedBox(height: 5.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 110,color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),

                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('Summer Deals',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 170,color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),

                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         Padding(padding:EdgeInsets.only(left: 10),
                                           child: customcontainer(
                                             padding: EdgeInsets.all(0.0),
                                             height: 30,// width: 88,
                                             color: MyColors.white,borderRadius: BorderRadius.all(Radius.circular(20),
                                           ),
                                             child: Padding(
                                               padding:EdgeInsets.all(8.0),
                                               child: Row(children: [
                                                 Text('40 min',style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold),)]),
                                             ),
                                           ),
                                         ),

                                       ],
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
                                         // borderRadius: 10.0,
                                         height: 230,
                                         width: 200,
                                         color: MyColors.lightblack,
                                         onTap:(){},
                                         image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
                                           fit: BoxFit.cover,)

                                       // child:Image.asset('assets/images/pizza.jpg',
                                       //   fit: BoxFit.cover,
                                       // )
                                     ),
                                     Column(crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         SizedBox(height: 5.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 110,color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),

                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('Summer Deals',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 170,color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),

                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         Padding(padding:EdgeInsets.only(left: 10),
                                           child: customcontainer(
                                             padding: EdgeInsets.all(0.0),
                                             height: 30,// width: 88,
                                             color: MyColors.white,borderRadius: BorderRadius.all(Radius.circular(20),
                                           ),
                                             child: Padding(
                                               padding:EdgeInsets.all(8.0),
                                               child: Row(children: [
                                                 Text('40 min',style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold),)]),
                                             ),
                                           ),
                                         ),

                                       ],
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
                                         // borderRadius: 10.0,
                                         height: 230,
                                         width: 200,
                                         color: MyColors.lightblack,
                                         onTap:(){},
                                         image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
                                           fit: BoxFit.cover,)

                                       // child:Image.asset('assets/images/pizza.jpg',
                                       //   fit: BoxFit.cover,
                                       // )
                                     ),
                                     Column(crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         SizedBox(height: 5.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 110,color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),

                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('Summer Deals',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 170,color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),

                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         Padding(padding:EdgeInsets.only(left: 10),
                                           child: customcontainer(
                                             padding: EdgeInsets.all(0.0),
                                             height: 30,// width: 88,
                                             color: MyColors.white,borderRadius: BorderRadius.all(Radius.circular(20),
                                           ),
                                             child: Padding(
                                               padding:EdgeInsets.all(8.0),
                                               child: Row(children: [
                                                 Text('40 min',style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold),)]),
                                             ),
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
                       Text('Shops',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: MyColors.black),),
                       SizedBox(height: 20.0,),
                       SingleChildScrollView(scrollDirection: Axis.horizontal,
                         child: Row(
                           children: [
                             Column(
                               children: [
                                 GestureDetector(onTap: (){
                                   setState(() {
                                     print('Pressed1');
                                   });
                                 },
                                   child: customcontainer(
                                     boxShadow: [
                                       BoxShadow(
                                           color:Colors.black12,
                                           //offset: Offset(0.1,0.1),
                                           blurRadius: 1,
                                           spreadRadius: 0.001
                                       )
                                     ],
                                     height: 80,width: 80,color: MyColors.white1,
                                     child:Image.asset('assets/images/convenience.png',
                                       alignment: Alignment.center,
                                       //   alignment: Alignment.bottomRight,
                                       height: 20,),
                                   ),
                                 ),
                                 SizedBox(height: 10,),
                                 Text('Convenience',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                               ],
                             ),
                             SizedBox(width: 10,),
                             Column(
                               children: [
                                 GestureDetector(onTap: (){
                                   setState(() {
                                     print('Pressed1');
                                   });
                                 },
                                   child: customcontainer(
                                     boxShadow: [
                                       BoxShadow(
                                           color:Colors.black12,
                                           //offset: Offset(0.1,0.1),
                                           blurRadius: 1,
                                           spreadRadius: 0.001
                                       )
                                     ],
                                     height: 80,width: 80,color: MyColors.white1,
                                     child:Image.asset('assets/images/groceries.png',
                                       alignment: Alignment.center,
                                       //   alignment: Alignment.bottomRight,
                                       height: 20,),
                                   ),
                                 ),
                                 SizedBox(height: 10,),
                                 Text('Groceries',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                               ],
                             ),
                             SizedBox(width: 10,),
                             Column(
                               children: [
                                 GestureDetector(onTap: (){
                                   setState(() {
                                     print('Pressed1');
                                   });
                                 },
                                   child: customcontainer(
                                     boxShadow: [
                                       BoxShadow(
                                           color:Colors.black12,
                                           //offset: Offset(0.1,0.1),
                                           blurRadius: 1,
                                           spreadRadius: 0.001
                                       )
                                     ],
                                     height: 80,width: 80,color: MyColors.white1,
                                     child:Image.asset('assets/images/health&wellbeing.png',
                                       alignment: Alignment.center,
                                       //   alignment: Alignment.bottomRight,
                                       height: 20,),
                                   ),
                                 ),
                                 SizedBox(height: 10,),
                                 Text('Health &\nWellbeing',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                               ],
                             ),
                             SizedBox(width: 10,),
                             Column(
                               children: [
                                 GestureDetector(onTap: (){
                                   setState(() {
                                     print('Pressed1');
                                   });
                                 },
                                   child: customcontainer(
                                     boxShadow: [
                                       BoxShadow(
                                           color:Colors.black12,
                                           //offset: Offset(0.1,0.1),
                                           blurRadius: 1,
                                           spreadRadius: 0.001
                                       )
                                     ],
                                     height: 80,width: 80,color: MyColors.white1,
                                     child:Image.asset('assets/images/sports&fashion.png',
                                       alignment: Alignment.center,
                                       //   alignment: Alignment.bottomRight,
                                       height: 20,),
                                   ),
                                 ),
                                 SizedBox(height: 10,),
                                 Text('Sports &\nfashion',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                               ],
                             ),

                           ],
                         ),
                       ),
                       SizedBox(height: 20,),
                       Text('Dine in with pandapro offers near you',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: MyColors.black),),
                       SizedBox(height: 10,),
                       Text('Exclusive offers with pandapro when you dine in',style: TextStyle(color: MyColors.lightblack,fontSize: 16)),
                       SizedBox(height: 10,),

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
                                         // borderRadius: 10.0,
                                         height: 180,
                                         width: 280,
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
                                 SizedBox(height: 10,),
                                 Text('KFC-Gulgusht Colony',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: MyColors.black),),
                                // SizedBox(height: 5.0,),
                                 Text('3.3 KM away ',style: TextStyle(color: MyColors.lightblack,fontSize: 16)),
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
                                         // borderRadius: 10.0,
                                         height: 180,
                                         width: 280,
                                         color: MyColors.lightblack,
                                         onTap:(){},
                                         image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
                                           fit: BoxFit.cover,)

                                       // child:Image.asset('assets/images/pizza.jpg',
                                       //   fit: BoxFit.cover,
                                       // )
                                     ),
                                     Column(crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         SizedBox(height: 5.0,),
                                         customcontainer(
                                           color: MyColors.pink,
                                           borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 110,
                                           

                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('Summer Deals',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 180,
                                           color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),
                                         ),
                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         Padding(padding:EdgeInsets.only(left: 10),
                                           child: customcontainer(
                                             padding: EdgeInsets.all(0.0),
                                             height: 30,// width: 88,
                                               color: MyColors.white,borderRadius: BorderRadius.all(Radius.circular(20)
                                           ),
                                             child: Padding(
                                               padding:EdgeInsets.all(8.0),
                                               child: Row(children: [
                                                 Text('40 min',style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold),)]),
                                             ),
                                           ),
                                         ),

                                       ],
                                     ),
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                 Text('KFC-Gulgusht Colony',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: MyColors.black),),
                                 // SizedBox(height: 5.0,),
                                 Text('1 KM away ',style: TextStyle(color: MyColors.lightblack,fontSize: 16)),

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
                                         // borderRadius: 10.0,
                                         height: 180,
                                         width: 280,
                                         color: MyColors.lightblack,
                                         onTap:(){},
                                         image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
                                           fit: BoxFit.cover,)

                                       // child:Image.asset('assets/images/pizza.jpg',
                                       //   fit: BoxFit.cover,
                                       // )
                                     ),
                                     Column(crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         SizedBox(height: 5.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 110,
                                           color: MyColors.pink,
                                           borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),
                                         ),
                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('Summer Deals',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 180,
                                           color: MyColors.pink,
                                           borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),
                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         Padding(padding:EdgeInsets.only(left: 10),
                                           child: customcontainer(
                                             padding: EdgeInsets.all(0.0),
                                             height: 30, // width: 88,
                                              color: MyColors.white,borderRadius: BorderRadius.all(Radius.circular(20),),
                                             child: Padding(
                                               padding:EdgeInsets.all(8.0),
                                               child: Row(children: [
                                                 Text('40 min',style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold),)]),
                                             ),
                                           ),
                                         ),

                                       ],
                                     ),
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                 Text('KFC-Gulgusht Colony',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: MyColors.black),),
                                 // SizedBox(height: 5.0,),
                                 Text('1 KM away ',style: TextStyle(color: MyColors.lightblack,fontSize: 16)),

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
                                         // borderRadius: 10.0,
                                         height: 180,
                                         width: 280,
                                         color: MyColors.lightblack,
                                         onTap:(){},
                                         image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
                                           fit: BoxFit.cover,)

                                       // child:Image.asset('assets/images/pizza.jpg',
                                       //   fit: BoxFit.cover,
                                       // )
                                     ),
                                     Column(crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         SizedBox(height: 5.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 110,
                                           color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),
                                         ),
                                           
                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('Summer Deals',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 180,
                                           color: MyColors.pink,
                                           borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),
                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         Padding(padding:EdgeInsets.only(left: 10),
                                           child: customcontainer(padding: EdgeInsets.all(0.0),
                                             height: 30, // width: 88,
                                             color: MyColors.white,borderRadius: BorderRadius.all(Radius.circular(20),),
                                             child: Padding(
                                               padding:EdgeInsets.all(8.0),
                                               child: Row(children: [
                                                 Text('40 min',style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold),)]),
                                             ),
                                           ),
                                         ),

                                       ],
                                     ),
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                 Text('KFC-Gulgusht Colony',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: MyColors.black),),
                                 // SizedBox(height: 5.0,),
                                 Text('1 KM away ',style: TextStyle(color: MyColors.lightblack,fontSize: 16)),


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
                                         // borderRadius: 10.0,
                                         height: 180,
                                         width: 280,
                                         color: MyColors.lightblack,
                                         onTap:(){},
                                         image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
                                           fit: BoxFit.cover,)

                                       // child:Image.asset('assets/images/pizza.jpg',
                                       //   fit: BoxFit.cover,
                                       // )
                                     ),
                                     Column(crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         SizedBox(height: 5.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 110,
                                           color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),
                                         ),
                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('Summer Deals',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 180,
                                           color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),
                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         Padding(padding:EdgeInsets.only(left: 10),
                                           child: customcontainer(
                                             padding: EdgeInsets.all(0.0),
                                             height: 30,
                                             // width: 88,
                                               color: MyColors.white,borderRadius: BorderRadius.all(Radius.circular(20),),
                                             child: Padding(
                                               padding:EdgeInsets.all(8.0),
                                               child: Row(children: [
                                                 Text('40 min',style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold),)]),
                                             ),
                                           ),
                                         ),

                                       ],
                                     ),
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                 Text('KFC-Gulgusht Colony',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: MyColors.black),),
                                 // SizedBox(height: 5.0,),
                                 Text('1 KM away ',style: TextStyle(color: MyColors.lightblack,fontSize: 16)),


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
                                         // borderRadius: 10.0,
                                         height: 180,
                                         width: 280,
                                         color: MyColors.lightblack,
                                         onTap:(){},
                                         image: DecorationImage(image: AssetImage('assets/images/pizza.jpg',),
                                           fit: BoxFit.cover,)

                                       // child:Image.asset('assets/images/pizza.jpg',
                                       //   fit: BoxFit.cover,
                                       // )
                                     ),
                                     Column(crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         SizedBox(height: 5.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 110,
                                           color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),
                                           child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('Summer Deals',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         customcontainer(
                                           padding: EdgeInsets.all(0.0),
                                           height: 40,width: 180,
                                           color: MyColors.pink,borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),), child: Padding(
                                             padding: const EdgeInsets.all(5.0),
                                             child: Row(children: [Text('2 Small Pizza for Rs 675',style: TextStyle(color: MyColors.white),)]),
                                           ),
                                         ),
                                         SizedBox(height: 10.0,),
                                         Padding(padding:EdgeInsets.only(left: 10),
                                           child: customcontainer(
                                             padding: EdgeInsets.all(0.0),
                                             height: 30,
                                             // width: 88,
                                             color: MyColors.white,borderRadius: BorderRadius.all(Radius.circular(20),),
                                             child: Padding(
                                               padding:EdgeInsets.all(8.0),
                                               child: Row(children: [
                                                 Text('40 min',style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold),)]),
                                             ),
                                           ),
                                         ),

                                       ],
                                     ),
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                 Text('KFC-Gulgusht Colony',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: MyColors.black),),
                                 // SizedBox(height: 5.0,),
                                 Text('1 KM away ',style: TextStyle(color: MyColors.lightblack,fontSize: 16)),


                               ],

                             ),

                           ],
                         ),
                       ),
                       SizedBox(height: 30,),
                       customcontainer(padding: EdgeInsets.only(left: 10.0,right:5.0,top:20.0,),
                       boxShadow: [
                       BoxShadow(
                       color:Colors.black12,
                       //offset: Offset(0.1,0.1),
                       blurRadius: 1,
                       spreadRadius: 0.001
                       )
                       ],
                       height: 140,
                        //width: MediaQuery.of(context).size.width*0.8,
                         width: 400,
                         color: MyColors.white1,
                       child: Row(
                           children: [

                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('Want 10 FREE deliveries & .......',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: MyColors.black),),
                             SizedBox(height: 10.0,),
                             Text('Earn Points and win prizes',style: TextStyle(fontSize: 18,color: MyColors.black),),
                           ],
                         ),
                          customcontainer(
                            height:100 ,
                            width: 80,
                            padding: EdgeInsets.zero,
                            child: Image.asset('assets/images/panda.png',
                              alignment: Alignment.topRight,


                            ),
                          ),
                       ]

                       ),

                       ),

                       SizedBox(height: 30,),

                       customcontainer(
                         height: 120,
                         //width: MediaQuery.of(context).size.width*0.8,
                         width: 400,
                         color: MyColors.pink,
                         image: DecorationImage(
                           image:AssetImage("assets/images/darkpink.jpg",
                         ),fit: BoxFit.cover,
                         ),

                         padding: EdgeInsets.only(left: 10.0,right:5.0,top:20.0,),
                         boxShadow: [
                           BoxShadow(
                               color:Colors.black12,
                               //offset: Offset(0.1,0.1),
                               blurRadius: 1,
                               spreadRadius: 0.001
                           )
                         ],



                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('Earn a 250 RS Vocher',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: MyColors.white),),
                             SizedBox(height: 10.0,),
                             Text('when you Refer a friend',style: TextStyle(fontSize: 18,color: MyColors.white),),
                           ],
                         ),

                       ),



                     ]
                 ),
               ),
          ]
    ),
        ),




    )
    );
  }
}
