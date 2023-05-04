import 'package:bd_tour_guide/dashboard/home_screen.dart';
import 'package:bd_tour_guide/dashboard/places/dhaka/dhaka.dart';
import 'package:flutter/cupertino.dart';

import '../splash_screen.dart';

var myRoutes = <String, WidgetBuilder>{
  '/': (context) => const Dhaka(),
  '/splash_screen': (context) => const SplashScreen(),
  '/home_page': (context) => const HomePage(),
  '/dhaka': (context) => const Dhaka(),
};
