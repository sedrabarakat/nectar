import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ptc_test/themes/colors.dart';

import '../../constants.dart';
import '../../themes/styles.dart';
import '../component/components.dart';

Widget beverages_container({
  required index
}){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15.w,),
    clipBehavior: Clip.hardEdge,
    height: 125.h,width: 60.w,
    decoration: Beverages_Decoration_Box(),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.h,vertical: 15.w),
          child: Image.asset(beverages_images_Path[index],height: 60.h,),
        ),
        Text(beverages_Labels[index],maxLines: 2,style: Labels_Style()),
        Text('3:15',style:  thin_labels,),
        Text('price',style: thin_labels,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('19\$',style: bold_labels,),
            SizedBox(width: 40.w,),
            Icon_button_def(Button_color: greeny, Icon_color: Colors.white, icon: Icons.add,)
          ],)
      ],
    ),
  );
}