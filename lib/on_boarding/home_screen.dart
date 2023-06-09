import 'package:bd_tour_guide/custom/custom_height.dart';
import 'package:bd_tour_guide/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/background/bcg03.jpg'),
            fit: BoxFit.cover,
            opacity: 0.2),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                height20(),
                const Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
                const Text(
                  'To Bangladesh',
                  style: TextStyle(
                      color: Colors.limeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
                height15(),
                const Text(
                  'Tourism in Bangladesh includes tourism to World Heritage Sites, historical monuments, '
                  'resorts, beaches, picnic spots, forests, tribal people, and wildlife of various '
                  'species. Activities for tourists include angling, water skiing, river cruising, '
                  'hiking, rowing, yachting, and sea bathing.',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                height20(),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(250.w, 60.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            textStyle: TextStyle(fontSize: 35.sp, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            Get.to(Dashboard(), transition: Transition.leftToRight);
          },
          child: const Text('EXPLORE'),
        ),
      ),
    );
  }
}
