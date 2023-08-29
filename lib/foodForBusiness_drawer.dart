import 'package:flutter/material.dart';
import 'package:zeeshan_food_app/Templates/custom_container.dart';

import 'colors.dart';

class FoodForBusiness extends StatefulWidget {
  const FoodForBusiness({Key? key}) : super(key: key);

  @override
  State<FoodForBusiness> createState() => _FoodForBusinessState();
}

class _FoodForBusinessState extends State<FoodForBusiness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text("Food For Business",style: TextStyle(color: MyColors.black)),
        backgroundColor: MyColors.white1,elevation: 1.0,
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.close,color: MyColors.pink,)
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  customcontainer(
                    height: 300,onTap: (){},
                    image: DecorationImage(
                        image: AssetImage("assets/images/f8.png",),
                        fit: BoxFit.cover,
                    ),

                  ),
                  Positioned(top: 170,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: customcontainer(
                        height: 115,width: 350,
                        //width: MediaQuery.of(context).size.width,
                        color: MyColors.white,
                      boxShadow: [BoxShadow(blurRadius: 1.0,spreadRadius: 1.0,color: MyColors.white2)],
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Text("Foodpanda for business",style: TextStyle(color: MyColors.black,fontSize: 25,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5,),
                        Text("Grow your business by keeping your employees"),
                            Text("happy and fed."),
                      ]
                      ),
                      ),
                    ),
                  ),
                ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Image.asset("assets/images/g1.png",height: 100,width: 50,),
                  SizedBox(width: 10,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Food worth working for",style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 10,),
                      Text("Allowances,pandafood,gift vouchers,catering &\noffice pantry")
                    ],)
                ],),
                // Padding(
                //   padding:EdgeInsets.symmetric(horizontal:10.0),
                //   child:customcontainer(
                //     height:1.0,
                //     width:MediaQuery.of(context).size.width,
                //     color:MyColors.lightblack,),),
                //SizedBox(height: 10,),
                Divider(color: MyColors.white2,
                thickness: 2,indent: 60,endIndent: 30,height: 20),

               // SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/memo.png",height: 100,width: 50,),
                    SizedBox(width: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Expense control",style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        SizedBox(height: 10,),
                        Text("Easy employee management,allowance rules,\nmonthly invoicing")
                      ],)
                  ],),
                Divider(color: MyColors.white2,
                    thickness: 2,indent: 60,endIndent: 30,height: 20),

                // SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/ystar.png",height: 100,width: 50,),
                    SizedBox(width: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dedicated support",style: TextStyle(color: MyColors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        SizedBox(height: 10,),
                        Text("Get in touch with our teams for any issue or hot\nrestaurant tips")
                      ],)
                  ],),

                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.home_repair_service_outlined,color: MyColors.pink,size: 40),
                    //Image.asset("assets/images/ystar.png",height: 100,width: 50,),
                    SizedBox(width: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Looking to be a restaurant or shop partner?",style: TextStyle(color: MyColors.black,fontSize: 16),),
                        SizedBox(height: 10,),
                        Text("Visit our partner page",style: TextStyle(color: MyColors.pink,fontWeight: FontWeight.bold,fontSize: 16),)
                      ],)
                  ],),
                SizedBox(height: 20,),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: MyColors.pink,
                        fixedSize: Size(400, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))
                    ),

                      onPressed: () {  },
                      child: Text("I'm interested",
                        style: TextStyle(color: MyColors.white),
                      ),
                  ),
                )



          ]
          ),
        ),
      ),
    );
  }
}
