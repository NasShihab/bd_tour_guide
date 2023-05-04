import 'package:flutter/material.dart';
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
            image: AssetImage('assets/places/dhaka.jpg'),
            fit: BoxFit.cover,
            opacity: 0.2),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
            children: List.generate(
              places.length,
              (index) => Center(
                child: InkWell(
                  onTap: () {
                    Get.toNamed('/dhaka',);
                  },
                  child: Ink(
                    width: double.infinity,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      // image: DecorationImage(
                      //     image: AssetImage(places[index].image.toString()),
                      //     fit: BoxFit.cover,
                      //     opacity: 0.8),
                    ),
                    child: Center(
                      child: FittedBox(
                        child: Text(
                          places[index].title.toString(),
                          style: GoogleFonts.monoton(
                              fontSize: 40, color: Colors.cyanAccent),
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
