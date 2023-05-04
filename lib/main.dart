import 'package:bd_tour_guide/custom/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (_, child) => GetMaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blue[400],
        ),
        initialRoute: '/',
        routes: myRoutes,
        debugShowCheckedModeBanner: false,
        // home: const SplashScreen(),
      ),
    );
  }
}
