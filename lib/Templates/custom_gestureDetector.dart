import 'package:flutter/material.dart';


class CustomGestureDetector extends StatelessWidget {
  CustomGestureDetector({Key,

    this.onTap,
    this.onLongPress,
    this.child,
    key,  }) : super(key: key);

  final Function? onTap;
  Function? onLongPress;
  Widget? child;

  @override
  Widget build(BuildContext context) {
    return CustomGestureDetector(
        onTap:onTap,
        onLongPress: onLongPress,
      child: child,
    );
  }
}
