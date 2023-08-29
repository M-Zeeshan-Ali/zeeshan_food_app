import 'package:flutter/material.dart';
import 'package:zeeshan_food_app/Templates/custom_container.dart';
import 'package:zeeshan_food_app/colors.dart';

class InviteFriends extends StatefulWidget {
  const InviteFriends({Key? key}) : super(key: key);

  @override
  State<InviteFriends> createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MyColors.white,elevation: 1.0,
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back,color: MyColors.pink,), ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("How its Works",style: TextStyle(color: MyColors.pink),),
          ),
        ],
      ),
      body: SingleChildScrollView(scrollDirection:Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              customcontainer(
                height: 80,
               // width: 400,
                width: MediaQuery.of(context).size.width,
                color: MyColors.white2,
             child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                  Text(style: TextStyle(
                      fontSize: 14,
                      color: MyColors.lightblack),
                      "Hamari app pasand hai? Apne doston ko refer karne ke liay\n"
                      "kam az kam 3 orderrs karen!"),
             ]),
              ),
              SizedBox(height: 20),
              Image(image: AssetImage("assets/images/f8.png"),fit: BoxFit.cover,height: 280,width: 350,),
              // customcontainer(
              //     height: 350,
              //   image: DecorationImage(
              //     image: AssetImage("assets/images/f8.png"),fit: BoxFit.cover),
              SizedBox(height: 10,),
              Text("Invite friends,get Rs. 250.00",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 43,right: 10,),
                child: Row(
                  children: [
                    Text("1. Your friend gets Rs. 575.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 43,right: 10,top: 10),
                child: Row(
                  children: [
                    Text("when they sign up with your invite link",style: TextStyle(fontSize: 16,),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 43,right: 10,),
                child: Row(
                  children: [
                    Text("2. Then you get Rs. 250.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 43,right: 10,top: 10),
                child: Row(
                  children: [
                    Text("once they place their first order (min Rs. 500.00) ",style: TextStyle(fontSize: 16,),

                    ),
                  ],
                ),
              ),


    ],
        ),
      ),
    );
  }
}
