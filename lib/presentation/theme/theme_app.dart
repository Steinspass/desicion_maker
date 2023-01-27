import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:desicion_maker_app/presentation/theme/font_style.dart';
import 'package:flutter/material.dart';



ThemeData? themeApp( bool mode ){

  final ThemeData themeLightApp = ThemeData(
    useMaterial3: true, 
    colorScheme: lightColorScheme, 
    textTheme: textThemeApp(),
    primaryColor: lightColorScheme.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: lightColorScheme.background,
      elevation: 0,
      iconTheme: IconThemeData(color: lightColorScheme.onBackground),
    ),
    iconTheme: IconThemeData(color: lightColorScheme.primary),
    canvasColor: lightColorScheme.background,
    scaffoldBackgroundColor: lightColorScheme.background,
    highlightColor: Colors.transparent,
    errorColor: lightColorScheme.error,
  );




  final ThemeData themeDarkApp = ThemeData(
    useMaterial3: true, 
    colorScheme: darkColorScheme, 
    textTheme: textThemeApp(),
    primaryColor: darkColorScheme.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: darkColorScheme.background,
      elevation: 0,
      iconTheme: IconThemeData(color: darkColorScheme.onBackground),
    ),
    iconTheme: IconThemeData(color: darkColorScheme.primary),
    canvasColor: darkColorScheme.background,
    scaffoldBackgroundColor: darkColorScheme.background,
    highlightColor: Colors.transparent,
    errorColor: darkColorScheme.error,
  );


  return mode ? themeDarkApp : themeLightApp;


}




