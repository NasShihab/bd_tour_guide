import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'place_category.dart';

class Places extends StatelessWidget {
  const Places({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/background/bcg08.jpg'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.horizontal,
                children: List.generate(
                  places.length,
                  (index) => Padding(
                    padding: index.isEven
                        ? EdgeInsets.only(left: 120.w, bottom: 20.h)
                        : EdgeInsets.only(right: 120.w, bottom: 20.h),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.r),
                      child: Material(
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(
                              '/dhaka',
                            );
                          },
                          child: Ink(
                            width: double.infinity,
                            height: 50.h,
                            decoration: BoxDecoration(
                              color: index.isOdd
                                  ? Colors.deepPurpleAccent.withOpacity(0.5)
                                  : Colors.teal.withOpacity(0.5),
                            ),
                            child: Center(
                              child: Text(
                                places[index].title.toString(),
                                style: GoogleFonts.secularOne(
                                    fontSize: 30.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
