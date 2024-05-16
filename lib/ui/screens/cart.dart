import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ptc_test/ui/widget/cart_widgets.dart';
import '../../themes/styles.dart';
import '../component/components.dart';

class Cart extends StatelessWidget{
  var scafkey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    bool Open_CheckOut=false;
   return Scaffold(
     key: scafkey,
     appBar: AppBar(
       bottom: PreferredSize(
           preferredSize: Size.fromHeight(4.0),
           child: Container(height: 0.5.h,color: Colors.grey.shade300,)),
       centerTitle: true,
       title: Text("My Cart",style: Poppins_labels),),
     body: Stack(
       children: [
        ListView.separated(
            itemBuilder: (context,index)=>cart_item(index: index),
            separatorBuilder: (context,index)=>line_seperator(),
            itemCount: 4),
         Padding(
           padding:  EdgeInsets.only(top: 260.h,left: 30.w,right: 30.w),
           child: elevatedButton(txt: 'Add Item',Pressed: (){
             if(Open_CheckOut==false){
               scafkey.currentState!.showBottomSheet(
                       (context) => CheckOut_container(context: context));
               Open_CheckOut=true;
             }
             else{
               Navigator.pop(context);
               Open_CheckOut=false;
             }
           }),
         )
     ],)
   );
  }
}