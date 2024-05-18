import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ptc_test/ui/screens/boarding/board_screen.dart';
import 'package:ptc_test/ui/screens/cart.dart';
import 'package:ptc_test/ui/screens/explore.dart';
import 'package:ptc_test/ui/screens/favorite.dart';
import 'package:ptc_test/ui/screens/fruits.dart';
import 'package:ptc_test/ui/screens/profile.dart';
import 'package:ptc_test/ui/screens/shop.dart';

import '../ui/screens/beverages.dart';
import '../ui/screens/nav_bar.dart';

class App_Router{
  Route ? OnGenerateRout(RouteSettings route_settings){
    final route_name=route_settings.name;
    final args = route_settings.arguments;
    switch(route_name){
     /* case '/':
        return MaterialPageRoute(builder: (context)=> OnBoarding());*/
      case '/':
        return MaterialPageRoute(builder: (context)=> Navigator_Bar());
      case '/beverages':
        return MaterialPageRoute(builder: (context)=> Beverages());
      case '/fruits'  :
        return MaterialPageRoute(builder: (context)=> Fruits());



    }
  }
}