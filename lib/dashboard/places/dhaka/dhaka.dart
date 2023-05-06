import 'package:bd_tour_guide/dashboard/places/dhaka/dhaka_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dhaka extends StatelessWidget {
  const Dhaka({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor
        // image: DecorationImage(
        //     image: AssetImage('assets/places/dhaka.jpg'), fit: BoxFit.cover, opacity: 0.3),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: col1(context)),
                Expanded(child: col2(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
