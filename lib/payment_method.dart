import 'package:flutter/material.dart';
import 'package:zeeshan_food_app/Templates/custom_container.dart';
import 'package:zeeshan_food_app/Templates/custom_gestureDetector.dart';
import 'package:zeeshan_food_app/colors.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: MyColors.white1,

      appBar: AppBar(elevation: 0.0,
        backgroundColor: MyColors.pink,
          bottom: PreferredSize(preferredSize: Size.fromHeight(20),
          child: Container(height: 30,),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings,size: 20),),
        ],
      leading: IconButton(onPressed: (){
        Navigator.pop(context); // clos icon to back drawer
      }, icon: Icon(Icons.close,color: MyColors.white,size: 20),
      ),leadingWidth: 25.0,
          title: Row(children: [
            Text('Panda'),
            Text(
              'Pay',
              textDirection: TextDirection.ltr,
              style: TextStyle(color: MyColors.pink,fontStyle:FontStyle.italic ,
                background: Paint()..color = Colors.white,
              ),
            ),

          ]

          ),
      ),
      body: Stack(
        children: [
        customcontainer(color: MyColors.pink,height: 80,
          //borderRadius: 0.0,
          borderRadius: BorderRadius.circular(0.0),

          ),
          Padding(
            padding:EdgeInsets.all(8.0),
            child: SingleChildScrollView(scrollDirection:Axis.vertical ,
              child: Column(
                  children: [
                    customcontainer(
                      boxShadow: [
                        BoxShadow(
                            color:MyColors.black,
                            //offset: Offset(0.1,0.1),
                            //blurRadius: 0.005,
                            spreadRadius: 0.5
                        )
                      ],

                      color: MyColors.white1,
                      height: 130,width: MediaQuery.sizeOf(context).width,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text('Available credit',style: TextStyle(fontSize: 18,color: MyColors.black),),
                                Spacer(),
                                Icon(Icons.credit_card,color: MyColors.pink,size: 30),
                                SizedBox(width:10 ,),
                                Text('Top Up',style: TextStyle(fontSize: 18,color: MyColors.pink),),
                              ]
                          ),
                          SizedBox(height: 30,),
                          Text('Rs. 0.00',style: TextStyle(fontSize: 25,color: MyColors.black,fontWeight: FontWeight.bold),),
                        ],
                      ),

                    ),
                    SizedBox(height: 30.0,),
                    customcontainer(
                      boxShadow: [
                        BoxShadow(
                            color:MyColors.black,
                            //offset: Offset(0.1,0.1),
                            blurRadius: 0.005,
                            spreadRadius: 0.001
                        )
                      ],

                      color: MyColors.white2,
                      height: 130,width: MediaQuery.sizeOf(context).width,
                      child: Row(children: [
                        CircleAvatar(radius: 30,backgroundColor: MyColors.lightblack,
                          child: IconButton(onPressed: (){}, icon:  Icon(Icons.credit_card,color: MyColors.white1,
                              size: 30),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: 'Step 1 of 1\n', style: TextStyle(fontSize: 18,color: MyColors.lightblack),),
                                TextSpan(text: 'Top up your Balance\n', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: MyColors.lightblack),),
                                TextSpan(text: 'Use your balance in all orders', style: TextStyle(fontSize: 18,color: MyColors.lightblack),),
                              ],
                            ),
                          ),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color:MyColors.lightblack ,)),
                      ],

                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Icon(Icons.credit_card,color: MyColors.pink,size: 40),
                        SizedBox(width: 15,),
                        Text('Payment Method',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: MyColors.black),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    customcontainer(
                      boxShadow: [
                        BoxShadow(
                            color:MyColors.pink,
                            offset: Offset(1.0,0.0),
                            blurRadius: 0.5,
                            spreadRadius: 1.0
                        )
                      ],
                      color: MyColors.white2,
                      height: 130,width: MediaQuery.sizeOf(context).width,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text('Save Payment Method at Checkout to view it\nhere',style: TextStyle(fontSize: 15,color: MyColors.black),),
                                Spacer(),
                                Text('Top Up',style: TextStyle(fontSize: 18,color: MyColors.pink),),
                              ]
                          ),
                          SizedBox(height: 20,),
                          Text('Back to Home',style: TextStyle(color: MyColors.pink,fontWeight: FontWeight.bold,fontSize: 20)),

                        ],
                      ),
                    )
                  ]
              ),
            ),
          ),
      ],
      ),

    );
  }
}
