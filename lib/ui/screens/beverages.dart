import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ptc_test/themes/colors.dart';
import 'package:ptc_test/ui/widget/beverages.dart';
import '../../themes/styles.dart';

class Beverages extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Beverages",style: Poppins_labels,),
        actions: [
          IconButton(onPressed: (){
            Scaffold.of(context).showBottomSheet((context) => Container(
              height: 200.h,
              width: 100.w,
              color: Colors.red,
            ));
          }, icon: Icon(Icons.add_circle),color: greeny,)
        ],

      ),
      body: AlignedGridView.count(
        itemCount: 6,
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        itemBuilder: (context, index) {
          return  Padding(
            padding:  EdgeInsets.symmetric(
                vertical: 5.2.h,horizontal: 12.w),
            child: beverages_container(index: index),
          );
        },
      ),
    );
  }

}
