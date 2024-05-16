import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../themes/styles.dart';
import '../widget/category_widget.dart';


class Explore extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text("Find Products",style: Poppins_labels,),
     ),
     body: AlignedGridView.count(
       itemCount: 6,
       crossAxisCount: 2,
       mainAxisSpacing: 4,
       itemBuilder: (context, index) {
         return category_component(index: index, onTap_route: "",
         context: context);
       },
     ),
   );
  }
}
