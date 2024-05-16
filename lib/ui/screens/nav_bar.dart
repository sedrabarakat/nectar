import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:ptc_test/ui/component/components.dart';
import 'package:ptc_test/ui/screens/cart.dart';
import 'package:ptc_test/ui/screens/explore.dart';
import 'package:ptc_test/ui/screens/favorite.dart';
import 'package:ptc_test/ui/screens/profile.dart';
import 'package:ptc_test/ui/screens/shop.dart';

import '../widget/nav_widget.dart';

PersistentTabController Nav_Controller = PersistentTabController(initialIndex: 1);

class Navigator_Bar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return  PersistentTabView(
     context,
     controller: Nav_Controller,
     navBarStyle: NavBarStyle.style6,
     items: Nav_Items(),
     onItemSelected: (val){
       print(val);
     },
     screens: [
       Shop(),
       Explore(),
       Cart(),
       Favorite(),
       Profile()
     ],
   );
  }
}






