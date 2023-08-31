import 'package:flutter/material.dart';
import 'package:zeeshan_food_app/colors.dart';

class customcontainer extends StatelessWidget {
   customcontainer({
     this.child,
     this.color,
      this.width,
     this.height,
     this.borderRadius ,
     this.padding ,
     this.onTap,
     this.image,
     this.boxShadow,
     this.decoration,
     // this.border,

     // this.child,
     // this.color = Colors.blue,
     // this.width,
     // this.height,
     // this.borderRadius = 8.0,
     // this.padding = const EdgeInsets.all(16.0),
     Key? key,    }) : super(key: key);
   DecorationImage? image;
   Widget? child;
   Color? color;
    double? width;
    double? height;
   BorderRadiusGeometry? borderRadius;
   EdgeInsetsGeometry? padding;
   Decoration? decoration;
   final Function? onTap;


   List<BoxShadow>? boxShadow;

   // double? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding?? EdgeInsets.all(18.0),
      decoration: BoxDecoration(
       // border:Border.symmetric(),
        color: color??MyColors.white1,
        borderRadius:borderRadius ?? BorderRadius.circular(10.0),
        boxShadow:boxShadow ,
        image: image,

      ),
      child: child,
    );
  }
}
