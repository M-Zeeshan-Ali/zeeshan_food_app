import 'package:flutter/material.dart';


class ClipRRect_and_Inkwell extends StatelessWidget {

  ClipRRect_and_Inkwell({
    required this.child,
    required this.onTap,
    this.borderRadius,
    this.backgroundColor,
    this.rippleColor,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final GestureTapCallback onTap;
  BorderRadiusGeometry? borderRadius;
  Color? backgroundColor;
  Color? rippleColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(0)),
      child: Material(
        color: backgroundColor ?? Colors.transparent,
        child: InkWell(
          splashColor: rippleColor ?? Theme.of(context).primaryColorLight,
          onTap: onTap,
          child: child,
        ),
      ),

    );
  }
}