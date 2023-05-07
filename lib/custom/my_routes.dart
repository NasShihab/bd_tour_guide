import 'package:flutter/cupertino.dart';
import '../dashboard/bottom_navigation/places/dhaka/dhaka.dart';
import '../on_boarding/home_screen.dart';
import '../on_boarding/splash_screen.dart';

var myRoutes = <String, WidgetBuilder>{
  '/': (context) => const SplashScreen(),
  '/splash_screen': (context) => const SplashScreen(),
  '/home_page': (context) => const HomePage(),
  '/dhaka': (context) => const Dhaka(),
};
