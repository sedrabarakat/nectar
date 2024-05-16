import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ptc_test/routes/App_Router.dart';
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
    return ScreenUtilInit(
      designSize: const Size(360, 360),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Navigator_Bar(),
        onGenerateRoute: router.OnGenerateRout,
        initialRoute: '/',
      ),
    );
  }
}


