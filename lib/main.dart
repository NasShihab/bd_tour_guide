import 'package:bd_tour_guide/dashboard/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blue[400],
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
