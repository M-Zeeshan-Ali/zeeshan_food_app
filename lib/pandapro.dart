import 'package:flutter/material.dart';
import 'package:zeeshan_food_app/Templates/custom_container.dart';
import 'package:zeeshan_food_app/colors.dart';
class PandaPro extends StatefulWidget {
  const PandaPro({Key? key}) : super(key: key);

  @override
  State<PandaPro> createState() => _PandaProState();
}

class _PandaProState extends State<PandaPro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset("assets/images/panda1.png",height: 250,
                  ),
            ),

          Opacity(opacity: 0.9,
              child: customcontainer(
                padding: EdgeInsets.all(10.0),
                    borderRadius:3.0 ,
                  color: MyColors.pink1,height: 300,width: MediaQuery.of(context).size.width,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  CircleAvatar(radius: 20,backgroundColor: MyColors.white,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.close,color: MyColors.pink,)
                      )
                  ),
                   SizedBox(height: 30,),
                   Text("Eat like a pandapro",style: TextStyle(color: MyColors.white,fontWeight: FontWeight.bold,fontSize: 22),),
                      Text("The all-in-one plan you need to unlock exclusive benefits\n"
                          "across foodpanda.",style: TextStyle(color: MyColors.white,fontSize:15 ),
                      ),
                    // customcontainer(
                    //     color: MyColors.pink1,
                    //   height: 200,width: MediaQuery.of(context).size.width,
                    //     child: Image.asset("assets/images/pandapro.jpg",fit: BoxFit.fill,)),
                    ],

                ),

              ),
          ),

            Positioned(top: 150,left: 50,right: 50,
              child: customcontainer(
                  color: MyColors.pink1,
                  height: 150,width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/images/pandapro.jpg",fit: BoxFit.fill,),),
            ),


        ],
        ),

          Padding(
        padding: const EdgeInsets.only(left: 10,top: 10,right: 10),
        child: Text('Become a pandapro to enjoy',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
      ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10,right: 10),
            child: Row(
              children: [
                CircleAvatar(
                    child: Icon(Icons.check,color: MyColors.white),
                    radius: 12,
                    backgroundColor: MyColors.pink),
                SizedBox(width: 10,),
                Text('Free delivery',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10,right: 10,left: 40),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(style: TextStyle(color: MyColors.lightblack,fontSize: 14),
                    '10x free deliveries per month with orders\n'
                        'above Rs.599 for restaurants and Rs. 999 for'
                        '\nshops & pandamart'),
              Spacer(),
                Icon(Icons.electric_bike_sharp,color: MyColors.lightpink,size: 50,)
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10,right: 10,left: 40),
            child: customcontainer(
              height: 55,width: 160,
              color: MyColors.white2,
              borderRadius: 30,
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("10 orders/month",style: TextStyle(fontWeight: FontWeight.bold,fontSize:15 )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('Starting from',style: TextStyle(fontSize: 18),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 10),
            child: Row(
              children: [
                Text('Rs. 166.58/mo.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Spacer(),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(32.0)
                    // ),
                    minimumSize: Size(200, 50),



                  ),child: Text('Select Plan',style: TextStyle(fontSize: 20,),),)
              ],
            ),
          ),



      ]),
    );
  }
}
