import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons.dart';
import 'package:desicion_maker_app/presentation/pages/home/home_page.dart';
import 'package:desicion_maker_app/presentation/pages/item_overview/item_page.dart';
import 'package:desicion_maker_app/presentation/pages/login/login_page.dart';
import 'package:desicion_maker_app/presentation/pages/splash/splash_page.dart';
import 'package:desicion_maker_app/presentation/routes/router_error.dart';
import 'package:flutter/material.dart';

class RouterGenerator{


static Route<dynamic>? generateRoute(RouteSettings settings){

  final args = settings.arguments;

  switch(settings.name){

    case '/': 
        return MaterialPageRoute(builder: (context) => SplashPage(),);

    case '/Home': 
        return MaterialPageRoute(builder: (context) => HomePage(),);

    case '/ItemList': 
        return MaterialPageRoute(builder: (context) => ListProsAndConsPage( list: args as ListProsCons, ),);    

    case '/Login': 
        return MaterialPageRoute(builder: (context) => LoginPage(),);

    case '/License': 
        return MaterialPageRoute(builder: (context) => LicensePage(),);     


    default: routeError();
  }


}



}