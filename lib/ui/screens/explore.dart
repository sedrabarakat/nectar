import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../themes/styles.dart';
import '../widget/category.dart';


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
/*import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Bottom Sheet Example')),
        body: Center(
          child: ElevatedButton(
            child: Text('Show Modal Bottom Sheet'),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 200,
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('Modal Bottom Sheet'),
                          ElevatedButton(
                            child: Text('Close Bottom Sheet'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
2. Using showBottomSheet
showBottomSheet displays a persistent bottom sheet that is part of the screen and does not dim the background. It is often used for displaying non-modal information or actions.

Example:
dart
Copy code
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Bottom Sheet Example')),
        body: Center(
          child: ElevatedButton(
            child: Text('Show Persistent Bottom Sheet'),
            onPressed: () {
              Scaffold.of(context).showBottomSheet<void>(
                (BuildContext context) {
                  return Container(
                    height: 200,
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('Persistent Bottom Sheet'),
                          ElevatedButton(
                            child: Text('Close Bottom Sheet'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}*/