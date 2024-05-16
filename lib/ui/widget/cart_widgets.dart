import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ptc_test/ui/screens/success_order.dart';

import '../../constants.dart';
import '../../themes/colors.dart';
import '../../themes/styles.dart';
import '../component/components.dart';

Widget cart_item({
  required index
}){
  return Container(
    padding: EdgeInsets.symmetric(
        vertical: 20.h,horizontal: 20.w
    ),
    height: 85.h,
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
            Add_Minus_comp()
          ],),
        SizedBox(width: 50.w,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.close),
            // Icon_button_def(Button_color: Off_White, Icon_color: Colors.grey, icon: Icons.close),
            SizedBox(height: 18.h,),
            Text('19\$',style: bold_labels,),
          ],)
      ],
    ),
  );
}

Widget Add_Minus_comp(){
  return   Padding(
    padding:  EdgeInsets.only(top: 6.h),
    child: Row(
      children: [
        Icon_button_def(
            Button_color: Off_White,
            Icon_color: Colors.grey,
            icon: Icons.minimize,
            border_color: Colors.grey
        ),
        Padding(
          padding:  EdgeInsets.symmetric(
              horizontal: 15.w,vertical: 4.h
          ),
          child: Text("1",style: bold_labels),
        ),
        Icon_button_def(
            Button_color: Off_White,Icon_color: Colors.grey, icon: Icons.add,border_color: Colors.grey),
      ],),
  );
}


Widget CheckOut_container({
  required context,
}){
  return  Container(
    padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 20.w),
    height: 214.h,
    decoration: BoxDecoration(
        color: bottom_color,
        borderRadius: BorderRadius.circular(50)
    ),
    child: Column(
      children: [
        Bottom_label(txt: "Checkout",context: context),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 6.h),
          child: line_seperator(),
        ),
        check_item(txt: 'Deleviery ', second_txt: 'Select Methode'),
        check_item(txt: 'Pament    ', second_txt: 'Select Methode'),
        check_item(txt: 'Promo Code', second_txt: 'Pick discount'),
        check_item(txt: 'Total Cost', second_txt: '\$13.2'),
        elevatedButton(txt: 'Place Order',Pressed: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=>success_order()));
        }),

      ],
    ),
  );
}

Widget check_item({
  required String txt,
  required String second_txt
}){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text(txt,style: Thin_labels,),
          SizedBox(width: 50.w,),
          Text(second_txt,style: bold_labels,),
          SizedBox(width: 10.w,),
          Icon(Icons.arrow_forward_ios,color: Colors.black,),

        ],
      ),
      Padding(
        padding:  EdgeInsets.symmetric(vertical: 10.h),
        child: line_seperator(),
      )
    ],
  );
}

