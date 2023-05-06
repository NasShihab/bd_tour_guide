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
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.horizontal,
              children: List.generate(
                places.length,
                (index) => Padding(
                  padding: index.isEven
                      ? EdgeInsets.only(left: 50.w, bottom: 10.h)
                      : EdgeInsets.only(right: 50.w, bottom: 10.h),
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
                          height: 100.h,
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent.withOpacity(0.5),
                          ),
                          child: Center(
                            child: Text(
                              places[index].title.toString(),
                              style: GoogleFonts.secularOne(
                                  fontSize: 50.sp,
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
    );
  }
}
