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


ElevatedButton elevatedButton({
  required String txt,
  required VoidCallback Pressed,
  Color color= greeny,
  Color txt_color=Colors.white,
}){
  return ElevatedButton(onPressed: Pressed,
      child: Center(child: Text(
          txt,style: Poppins_labels.copyWith(
        color: txt_color,fontSize: 17,
      ),
      )),
  style:  ButtonStyle(
    minimumSize: MaterialStateProperty.all<Size>(Size(300.w, 25.h)),
    maximumSize: MaterialStateProperty.all<Size>(Size(300.w, 25.h)),
    backgroundColor: MaterialStateProperty.all<Color>(color),
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
  required IconData icon,
  Color border_color=Colors.white10,
}){
  return Container(
    height: 40.w,width: 20.h,
    decoration: BoxDecoration(
        border: Border.all(
          color: border_color, // Border color
          width: 1.r,         // Border width (boldness)
        ),
    color: Button_color,
    borderRadius: BorderRadius.circular(Border_Radius)
  ),
    child: Center(child: Icon(icon,color: Icon_color,)),
  );
}

TextFormField def_TextFromField({
  required TextInputType keyboardType,
  required TextEditingController controller,
  //required FocusNode focusNode,
  GestureTapCallback? onTap,
  String? hintText,
  ValueChanged<String>? onChanged,
  ValueChanged<String>? onFieldSubmitted,
  FormFieldValidator? validator,
  Widget? prefixIcon,
  Widget? suffixIcon,
  Widget? suffix,
  bool obscureText = false,
  int maxLines = 6,
  minLines = 1,
  maxLength=100,
  String label = '',
  TextStyle labelStyle = const TextStyle(),
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
  bool put_padding=false
}) {
  return TextFormField(
    onTap: onTap,
    keyboardType: keyboardType,
    controller: controller,
    validator: validator,
    //focusNode: focusNode,
    obscureText: obscureText,
    readOnly: false,
    onFieldSubmitted: onFieldSubmitted,
    onChanged: onChanged,
    minLines: minLines,
    maxLines: obscureText ? 1 : maxLines,
    cursorColor: Colors.blue,
    autovalidateMode: autovalidateMode,
    decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
        suffix: suffix,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon
    ),
  );
}

Widget line_seperator(){
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 10.h),
    child: Container(height: 0.5.h,color: Colors.grey.shade300,),
  );
}

Widget Bottom_label({
  required context,
  required String txt
}){
  return  Row(children: [
    Text(txt,style: bold,),
    SizedBox(width: 140.w,),
    IconButton(onPressed: (){
      Navigator.pop(context);
    }, icon: Icon(Icons.close))
  ],);
}

