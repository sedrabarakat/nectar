import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_test/themes/colors.dart';
import 'package:ptc_test/themes/styles.dart';
class Nectar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       color: greeny,
       child: Center(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             SvgPicture.asset(
               "assets/images/logo.svg",
             ),
             SizedBox(width: 20.w,),
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
               SizedBox(
                 height: 33.h,
                 child: Text('nectar',
                   style: bold_labels.copyWith(
                       color: Colors.white,
                     fontSize: 60.sp
                   ),),
               ),
                 Text('online groceriet',
                   style: Thin_labels.copyWith(color: Colors.white60),)
             ],)

           ],
         ),
       ),
     ),
   );
  }
}