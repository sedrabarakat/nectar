import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ptc_test/themes/colors.dart';
import 'package:ptc_test/ui/screens/beverages.dart';
import '../../constants.dart';
import '../../themes/styles.dart';


Text Labels_Text({
  required String txt
}){
  return Text(txt,style: TextStyle(
    fontSize: 50.sp,
    fontFamily: "Poppins",
  ),);
}



ElevatedButton elevatedButton(){
  return ElevatedButton(onPressed: (){},
      child: Center(child: Icon(Icons.add,color: Colors.white,)),
  style:  ButtonStyle(
    minimumSize: MaterialStateProperty.all<Size>(Size(50.w, 15.h)),
    maximumSize: MaterialStateProperty.all<Size>(Size(50.w, 15.h)),
    backgroundColor: MaterialStateProperty.all<Color>(greeny),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
  RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(20.0), // Set rounded border radius
  ),
  ),));
}

Widget Icon_button_def({
  required Color Button_color,
  required Color Icon_color,
  double Border_Radius=18,
  required IconData icon
}){
  return Container(
    height: 40.w,width: 20.h,
    decoration: BoxDecoration(
    color: Button_color,
    borderRadius: BorderRadius.circular(Border_Radius)
  ),
    child: Center(child: Icon(icon,color: Icon_color,)),
  );
}