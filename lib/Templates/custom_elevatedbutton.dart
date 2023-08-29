import 'package:flutter/material.dart';
import 'package:zeeshan_food_app/colors.dart';



class ElevatedBtn extends StatelessWidget {
  ElevatedBtn({Key?  key,
   // this.autofocus,
    this.focusNode,
    this.onLongPress,
       this.style,
        this.child,
         required this.onPress,
        required this.buttonColor,
        this.buttonText,

  }) : super(key: key);
  VoidCallback? onLongPress;
  Widget? child;
  VoidCallback? onPress;
  String? buttonText;
  Color? buttonColor;
  ButtonStyle? style;
  FocusNode? focusNode;
//  bool? autofocus;

  @override
  Widget build(BuildContext context) {
    return ElevatedBtn(
      onPress:onPress,
      buttonColor: buttonColor ?? MyColors.pink,
      buttonText: buttonText ?? "zeeshan",


    );
  }
}
