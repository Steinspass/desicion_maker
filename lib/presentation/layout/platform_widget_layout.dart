import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



Widget platformWidgetLayout({ required Widget desktopLayout, required Widget mobileLayout}){

    if(kIsWeb || Platform.isMacOS || Platform.isLinux || Platform.isWindows) {
        return desktopLayout;
    }
    
    return mobileLayout;

}