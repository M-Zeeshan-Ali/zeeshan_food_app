import 'package:flutter/material.dart';
import 'package:zeeshan_food_app/main_screen.dart';
import 'package:zeeshan_food_app/pandapro.dart';
import 'package:zeeshan_food_app/pandareward_drawer.dart';
import 'package:zeeshan_food_app/payment_method.dart';
import 'package:zeeshan_food_app/profile_drawer.dart';
import 'package:zeeshan_food_app/setting_drawer.dart';
import 'package:zeeshan_food_app/splash_screen.dart';
import 'package:zeeshan_food_app/vouchers%20and%20offers_drawer.dart';


import 'Orders and rordering_drawer.dart';
import 'address_drawer.dart';
import 'favourites_heart.dart';
import 'foodForBusiness_drawer.dart';
import 'gift_cart.dart';
import 'helpcenter_drawer.dart';
import 'invitefriends_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      //home:PaymentMethod(),
      //home: Settings(),
      //home: Order_reordering(),
      //home:VouchersandOffers(),
      home:SplashScreen(),
      //home:PaymentMethod(),
      //home:SplashScreen(),
     // home:Favourites(),

     // home:Cart(),
    );
  }
}
