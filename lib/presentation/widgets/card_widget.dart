import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';




class CardWidget extends StatefulWidget {

  final double? height;
  final Widget? widget;
  final EdgeInsetsGeometry? padding;
  final Function()? onTap;
  final Function()? onLongPress;
  final Color? color;

  CardWidget({
    @required this.height,
    @required this.padding,
    @required this.widget,
    @required this.onTap,
    @required this.onLongPress,
    this.color
  });

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 18.0
      ),
      child: GestureDetector(
        onTap: widget.onTap ?? (){},
        onLongPress: widget.onLongPress ?? (){},
        child: Card(
          elevation: 15.0,
          color: widget.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(   
              child: widget.widget ?? Placeholder(),
              height: widget.height ?? 30.h,
              width: 90.w,
            ),
        ),
      ),
    );
  }
}