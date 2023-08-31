import 'package:flutter/material.dart';


class CustomGestureDetector extends StatelessWidget {
  CustomGestureDetector({Key,

    this.onTap,
    this.onLongPress,
    this.child,
    key,  }) : super(key: key);

  void Function()? onTap;
  void Function()? onLongPress;
  Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap:onTap,
        onLongPress: onLongPress,
      child: child,
    );
  }
}
