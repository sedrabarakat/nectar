import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:ptc_test/cubit/nav_bar_cubit/nav_cubit.dart';
import '../../constants.dart';
import '../../cubit/nav_bar_cubit/nav_states.dart';

class Navigator_Bar extends StatelessWidget {
  PersistentTabController Nav_Controller =
      PersistentTabController(initialIndex: 1);

  Navigator_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Navigator_Cubit, Navigator_states>(
      listener: (context, states) {},
      builder: (context, states) {
        Navigator_Cubit cubit = Navigator_Cubit.get(context);
        int index = cubit.index;
        return PersistentTabView(
          context,
          controller: Nav_Controller,
          navBarStyle: NavBarStyle.style6,
          items: Nav_Items(),
          onItemSelected: (val) {
            cubit.change_index(val);
          },
          screens: screens,
        );
      },
    );
  }
}
