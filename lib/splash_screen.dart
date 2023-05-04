import 'dart:async';
import 'package:bd_tour_guide/dashboard/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.to(
        const HomePage(),
        transition: Transition.zoom,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Image(
              image: AssetImage('assets/logo.png'),
            ),
          ),
          Image(
            height: 100,
            image: AssetImage('assets/loading.gif'),
          ),
        ],
      ),
    );
  }
}
