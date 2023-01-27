import 'package:flutter/material.dart';


Widget responsiveWidgetLayout(
  BuildContext context, 
  { Widget? mobileL, 
    Widget? tabletL,
    Widget? desktopL
  }){

    final sizeWidth = MediaQuery.of(context).size.width;


    if(sizeWidth > 1024){

      return desktopL ?? const SizedBox.shrink();

    }

    if(sizeWidth >= 800 && sizeWidth <= 1200){
      
      return tabletL ?? const SizedBox.shrink();
      
    }


    return mobileL ?? const SizedBox.shrink();



}