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



List<PersistentBottomNavBarItem> Nav_Items() {
  return [
    nav_Item(Icon_Asset_path: "store.svg", title: "Shop"),
    nav_Item(Icon_Asset_path: "explore.svg", title: "Explore"),
    nav_Item(Icon_Asset_path: "cart.svg", title: "Cart"),
    nav_Item(Icon_Asset_path: "favorite.svg", title: "Favorite"),
    nav_Item(Icon_Asset_path: "person.svg", title: "Profile"),
  ];
}

PersistentBottomNavBarItem nav_Item({
  required String Icon_Asset_path,
  required String title,
  Color active= const Color.fromARGB(255, 82, 176, 117),
  Color inactive=Colors.black
}){
  return PersistentBottomNavBarItem(
    icon:  SvgPicture.asset(
     "assets/images/$Icon_Asset_path",
      color: Colors.black,
    ),
    title: (title),
    activeColorPrimary: active,
    inactiveColorPrimary: inactive,
  );
}

List<AppBar>Nav_AppBar=[
  AppBar(
    centerTitle: true,
    title: Labels_Text(txt: "Shop"),
  ),
  AppBar(
  centerTitle: true,
  title:  Labels_Text(txt: "Find Products"),),
  AppBar(
      centerTitle: true,
      title: Labels_Text(txt: "My Cart"),
  ), AppBar(
    centerTitle: true,
    title: Labels_Text(txt: "My Favorite"),
  ),
  AppBar(
    centerTitle: true,
    title: Labels_Text(txt: "Profile"),
  ),
];


