// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:zeeshan_food_app/main_screen.dart';
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 3),
//             ()=>Navigator.pushReplacement(context,
//             MaterialPageRoute(builder:
//                 (context) =>
//                 MainScreen()
//             )
//         )
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.white,
//         child:FlutterLogo(size:MediaQuery.of(context).size.height)
//     );
//   }
// }

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zeeshan_food_app/main_screen.dart';

import 'colors.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();
    Timer(
        Duration(seconds: 3), ()=> Navigator.push(context,
        MaterialPageRoute(builder: (context) => MainScreen()
        )
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.pink,
      body:Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/splash.png')
                )
            ),
          ),
          Positioned(
              bottom: 50 ,
              child: CupertinoActivityIndicator(color: Colors.white,))
        ],
      ),
    );
  }
}
