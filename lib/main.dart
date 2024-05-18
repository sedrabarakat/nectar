import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ptc_test/cubit/nav_bar_cubit/nav_cubit.dart';
import 'package:ptc_test/routes/App_Router.dart';
import 'package:ptc_test/ui/screens/boarding/board_screen.dart';
import 'package:ptc_test/ui/screens/boarding/nectar_screen.dart';
import 'package:ptc_test/ui/screens/boarding/welcome_screen.dart';
import 'package:ptc_test/ui/screens/nav_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    final App_Router router=App_Router();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>Navigator_Cubit()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 360),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: router.OnGenerateRout,
          initialRoute: '/',
        ),
      ),
    );
  }
}


