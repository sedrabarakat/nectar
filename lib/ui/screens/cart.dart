import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';
import '../../themes/colors.dart';
import '../../themes/styles.dart';
import '../component/components.dart';

class Cart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       bottom: PreferredSize(
           preferredSize: Size.fromHeight(4.0),
           child: Container(height: 0.5.h,color: Colors.grey.shade300,)),
       centerTitle: true,
       title: Text("My Cart",style: Poppins_labels),),
     body: Stack(
       children: [
        ListView.separated(
            itemBuilder: (context,index)=>Container(
              padding: EdgeInsets.symmetric(
                vertical: 20.h,horizontal: 20.w
              ),
              height: 80.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(cart_Labels[index], height: 45.h,width: 80.w,),
                  SizedBox(width: 20.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("bell",style: bold_labels),
                    Text('1kg, Price',style: thin_labels,),
                    Row(
                      children: [
                      Icon_button_def(Button_color: Off_White,Icon_color: Colors.grey, icon: Icons.minimize_outlined),
                      Padding(
                        padding:  EdgeInsets.symmetric(
                          horizontal: 15.w,vertical: 4.h
                        ),
                        child: Text("1",style: bold_labels),
                      ),
                      Icon_button_def(Button_color: Off_White,Icon_color: Colors.grey, icon: Icons.add),
                    ],)
                  ],),
                  SizedBox(width: 50.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Icon_button_def(Button_color: Off_White, Icon_color: Colors.grey, icon: Icons.close),
                    SizedBox(height: 10.h,),
                    Text('19\$',style: bold_labels,),
                  ],)
                ],
              ),
            ),
            separatorBuilder: (context,index)=>Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.h),
              child: Container(height: 0.5.h,color: Colors.grey.shade300,),
            ),
            itemCount: 4)
     ],)
   );
  }
}