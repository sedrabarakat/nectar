import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ptc_test/ui/screens/boarding/welcome_screen.dart';
import 'nectar_screen.dart';

class OnBoarding extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
         onPageChanged: (val){},
         itemCount: content.length,
        itemBuilder: (context,index)=>content[index]);
  }
}

List<Widget>content=[
  Nectar(),
  Welcome_Screen()
];