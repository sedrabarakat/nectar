import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ptc_test/themes/colors.dart';
import 'package:ptc_test/ui/widget/beverages_widget.dart';
import '../../themes/styles.dart';

class Beverages extends StatelessWidget{
  var scaffoldkey=GlobalKey<ScaffoldState>();
  var Name_controller= TextEditingController();
  var description_controller= TextEditingController();
  var price_controller= TextEditingController();
  var image_controller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool OpenBottom=false;
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Beverages",style: Poppins_labels,),
        actions: [
          IconButton(onPressed: (){
            if(OpenBottom==false){
              scaffoldkey.currentState!.showBottomSheet((context) =>
                  bottom_container(
                      context: context,
                      Name_controller: Name_controller,
                  image_controller: image_controller,
                  description_controller: description_controller,
                  price_controller: price_controller));
              OpenBottom=true;
            }
           else{
              Navigator.pop(context);
              OpenBottom=false;
            }

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
