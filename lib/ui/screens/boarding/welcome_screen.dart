import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_test/themes/colors.dart';
import 'package:ptc_test/themes/styles.dart';
import 'package:ptc_test/ui/component/components.dart';
class Welcome_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 600.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image:AssetImage('assets/images/landingImage.jpeg',),
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              "assets/images/logo.svg",
            ),
            SizedBox(width: 20.w,),
            Text("Welcome",style: Poppins_labels.copyWith(
                color: Colors.white,
                fontSize: 40.sp
            )),
            Text('to our store',
              style: Poppins_labels.copyWith(
                  color: Colors.white,
                  fontSize: 40.sp
              ),),
            Text('Ger your groceries in as fast as one hour',
              style: Thin_labels.copyWith(color: Colors.white60,fontSize: 14),),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 40.h,),
              child: elevatedButton(txt: "Get Started",
                  Pressed: (){
                    Navigator.pushNamed(context, '/nav_bar');
                  }),
            )
          ],
        ),
      ),
    );
  }
}