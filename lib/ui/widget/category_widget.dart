import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';
import '../../themes/styles.dart';
import '../screens/beverages.dart';

Widget category_component({
  required index,
  required context
}){
  return  Padding(
    padding:  EdgeInsets.symmetric(
        vertical: 5.2.h,horizontal: 12.w),
    child: GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed('/beverages');
       // Navigator.pushNamed(context, 'beverages');

      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 80.h,width: 50.w,
        decoration: Labels_Decoration_Box(index: index),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Labels_images_Path[index],height: 60.h,),
            Text(Food_Labels[index],maxLines: 2,style: Labels_Style())
          ],
        ),
      ),
    ),
  );
}