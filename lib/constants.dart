import 'package:flutter/cupertino.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:ptc_test/ui/screens/beverages.dart';
import 'package:ptc_test/ui/screens/cart.dart';
import 'package:ptc_test/ui/screens/explore.dart';
import 'package:ptc_test/ui/screens/favorite.dart';
import 'package:ptc_test/ui/screens/profile.dart';
import 'package:ptc_test/ui/screens/shop.dart';
import 'package:ptc_test/ui/widget/nav_widget.dart';

List <Widget>screens=[
  Shop(),
  Explore(),
  Cart(),
  Favorite(),
  Profile(),
];

List<PersistentBottomNavBarItem> Nav_Items() {
  return [
    nav_Item(Icon_Asset_path: "store.svg", title: "Shop"),
    nav_Item(Icon_Asset_path: "explore.svg", title: "Explore"),
    nav_Item(Icon_Asset_path: "cart.svg", title: "Cart"),
    nav_Item(Icon_Asset_path: "favorite.svg", title: "Favorite"),
    nav_Item(Icon_Asset_path: "person.svg", title: "Profile"),
  ];
}

List<String>Labels_images_Path=[
  "assets/images/test1.png",
  "assets/images/test2.png",
  "assets/images/test3.png",
  "assets/images/test4.png",
  "assets/images/test5.png",
  "assets/images/test6.png",
];
List<String>beverages_images_Path=[
  "assets/images/cola1.png",
  "assets/images/cola2.png",
  "assets/images/cola3.png",
  "assets/images/cola4.png",
  "assets/images/cola5.png",
  "assets/images/cola6.png",
];

List<String>Food_Labels=[
  "Fresh Fruits & Vegetable",
  "Cooking Oil & Chee",
  "Meat & Fish",
  "Backery & Snackes",
  "Dairy & eggs",
  "Beverages",
];

List<String>beverages_Labels=[
  "Diet Cok",
  "Sprite Can",
  "Apple & Grap Juice",
  "Orange Juice",
  "Coca Cola Can",
  "Pespsi Can",
];


List<String>cart_Labels=[
  "assets/images/myCart1.png",
  "assets/images/myCart2.png",
  "assets/images/myCart3.png",
  "assets/images/myCart4.png",
];

