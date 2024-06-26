import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';


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