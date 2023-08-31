import 'package:flutter/material.dart';
import 'package:zeeshan_food_app/colors.dart';


class HelpCenter extends StatefulWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,backgroundColor: MyColors.white1,elevation: 1.0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon:Icon(Icons.close,color: MyColors.pink,)
      ),
        title: Text("How can we help?",style: TextStyle(color: MyColors.black)),
      ),
      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text("How can we help?",style: TextStyle(color: MyColors.pink,fontSize: 25,fontWeight: FontWeight.bold),),
                ],
              ),
            ),SizedBox(height: 10,),
            Expanded(
                child: ListView(
                  children: [
                    ListTile(leading: Icon(Icons.shopping_bag_outlined),
                      title: Text("Get help with my orders"),
                    trailing: IconButton(
                        icon: Icon(Icons.arrow_forward_ios,color: MyColors.pink),
                        onPressed: (){}),),
                    Divider(
                      color:MyColors.white2,
                      height: 25,
                      thickness: 1, indent: 5, endIndent: 5,
                    ),

                    ListTile(leading: Icon(Icons.shopping_bag_sharp),
                      title: Text("I'm having trouble placing an order"),
                      trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios,color: MyColors.pink),
                          onPressed: (){}),),
                    Divider(
                      color:MyColors.white2,
                      height: 25,
                      thickness: 1, indent: 5, endIndent: 5,
                    ),

                    ListTile(leading: Icon(Icons.messenger),
                      title: Text("My support requests"),
                      trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios,color: MyColors.pink),
                          onPressed: (){}),),
                    Divider(
                      color:MyColors.white2,
                      height: 25,
                      thickness: 1, indent: 5, endIndent: 5,
                    ),

                    ListTile(leading: Icon(Icons.quick_contacts_mail_sharp),
                      title: Text("pandapro"),
                      trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios,color: MyColors.pink),
                          onPressed: (){}),),
                    Divider(
                      color:MyColors.white2,
                      height: 25,
                      thickness: 1, indent: 5, endIndent: 5,
                    ),
                    ListTile(leading: Icon(Icons.dinner_dining),
                      title: Text("Dine In"),
                      trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios,color: MyColors.pink),
                          onPressed: (){}),),
                    Divider(
                      color:MyColors.white2,
                      height: 25,
                      thickness: 1, indent: 5, endIndent: 5,
                    ),
                    ListTile(leading: Icon(Icons.account_circle_rounded),
                      title: Text("My Account"),
                      trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios,color: MyColors.pink),
                          onPressed: (){}),),
                    Divider(
                      color:MyColors.white2,
                      height: 25,
                      thickness: 1, indent: 5, endIndent: 5,
                    ),
                    ListTile(leading: Icon(Icons.health_and_safety_outlined),
                      title: Text("Safety Concerns"),
                      trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios,color: MyColors.pink),
                          onPressed: (){}),),
                    Divider(
                      color:MyColors.white2,
                      height: 25,
                      thickness: 1, indent: 5, endIndent: 5,
                    ),
                    ListTile(leading: Icon(Icons.payment_outlined),
                      title: Text("Payment and Refunds"),
                      trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios,color: MyColors.pink),
                          onPressed: (){}),),
                    Divider(
                      color:MyColors.white2,
                      height: 25,
                      thickness: 1, indent: 5, endIndent: 5,
                    ),
                    ListTile(leading: Icon(Icons.airplane_ticket_outlined),
                      title: Text("Vouchers and rewards"),
                      trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios,color: MyColors.pink),
                          onPressed: (){}),),
                    Divider(
                      color:MyColors.white2,
                      height: 25,
                      thickness: 1, indent: 5, endIndent: 5,
                    ),
                    ListTile(leading: Icon(Icons.payment),
                      title: Text("Get help with my pandapay"),
                      trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios,color: MyColors.pink),
                          onPressed: (){}),),
                    Divider(
                      color:MyColors.white2,
                      height: 25,
                      thickness: 1, indent: 5, endIndent: 5,
                    ),
                    ListTile(leading: Icon(Icons.password_outlined),
                      title: Text("FAQ"),
                      trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios,color: MyColors.pink),
                          onPressed: (){}),),

                    Divider(
                      color:MyColors.white2,
                      height: 25,
                      thickness: 1, indent: 5, endIndent: 5,
                    ),
                    ListTile(leading: Icon(Icons.dinner_dining_sharp),
                      title: Text("foodpanda for business"),
                      trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios,color: MyColors.pink),
                          onPressed: (){}),),


                  ],
                ),
            ),
      ],
      ),
    );
  }
}