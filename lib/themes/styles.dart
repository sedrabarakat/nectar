import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

TextStyle Poppins_labels=TextStyle(
  fontSize: 20.sp,
  fontFamily: "Poppins",
);
TextStyle Thin_labels=TextStyle(
  fontSize: 17.sp,
  fontFamily: "Poppins",
  fontWeight: FontWeight.w300,
  color: Colors.grey
);

TextStyle bold_labels=TextStyle(
  fontSize: 15.sp,
  fontWeight: FontWeight.bold,
  fontFamily: "Poppins",
);

TextStyle bold=TextStyle(
  fontSize: 25.sp,
  fontFamily: "Poppins",
);

TextStyle thin_labels=
    TextStyle(color: Colors.grey.withOpacity(.6));


TextStyle Labels_Style(){
  return TextStyle(
    fontSize: 11.sp,overflow: TextOverflow.ellipsis,
    fontFamily: "Poppins",
  );
}

BoxDecoration Labels_Decoration_Box({
  required index
}){
  return BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Labels_colors[index].light,
    border: Border.all(
      color: Labels_colors[index].dark, // Border color
      width: 2.r,         // Border width (boldness)
    ),
  );
}

BoxDecoration Beverages_Decoration_Box(){
  return BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Color.fromARGB(255, 253, 253, 254),
    border: Border.all(
      color:  Color.fromARGB(255, 234, 234, 235), // Border color
      width: 2.r,         // Border width (boldness)
    ),
  );
}
