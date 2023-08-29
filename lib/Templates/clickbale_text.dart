import 'package:flutter/material.dart';


class Tapper extends StatelessWidget {
  Tapper(
      this.child,
 // this.padding,
      this.onTap,
      {Key? key,  }) : super(key: key);
  final Function? onTap;
    Widget? child;
 // EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Tapper(
        child, onTap ,
    );
  }
}
