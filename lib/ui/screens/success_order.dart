import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_test/themes/colors.dart';
import 'package:ptc_test/ui/component/components.dart';

import '../../themes/styles.dart';

class success_order extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.w,vertical: 10.h),
            child: SvgPicture.asset(
              "assets/images/successful.svg",
             height: 170.h,
            ),
          ),
          Text("Your Order has been",style: Poppins_labels,),
          Text('accepted',style: Poppins_labels,),
          Text("Your items has been placcd and is on ",style: Thin_labels,),
          Text('it’s way to being processed',style: Thin_labels,),
          SizedBox(height: 20.h,),
          elevatedButton(txt: 'Track Order', Pressed: (){}),
          SizedBox(height: 5.h,),
          elevatedButton(txt: 'Back to home', Pressed: (){},
              color: Off_White,txt_color: Colors.black)




        ],
      ),
    );
  }
}