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

Widget bottom_container({
  required context,
required Name_controller,
required description_controller,
required price_controller,
required image_controller,
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
        Row(children: [
          Text('Add',style: bold,),
          SizedBox(width: 220.w,),
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.close))
        ],),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 6.h),
          child: line_seperator(),
        ),
        add_comp(controller: Name_controller, txt: 'Name'),
        add_comp(controller: description_controller, txt: 'Description'),
        add_comp(controller: price_controller, txt: 'Price'),
        add_comp(controller: image_controller, txt: 'image'),
        elevatedButton(txt: 'Add Item',Pressed: (){}),

      ],
    ),
  );
}

Widget add_comp({
  required  String txt,
  required controller,
}){
  return Column(children: [
  Row(
  children: [
  Text(txt,style: Thin_labels,),
  SizedBox(width: 50.w,),
  SizedBox(
  width: 150.w,
  child: def_TextFromField(keyboardType: TextInputType.name, controller: controller))
  ],
  ),
    Padding(
      padding:  EdgeInsets.symmetric(vertical: 6.h),
      child: line_seperator(),
    ),
  ],);
}