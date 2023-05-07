import 'package:bd_tour_guide/custom/custom_height.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'data_model.dart';

Widget col1(BuildContext context) => SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Wrap(
            children: List.generate(
              dhakaModelLeft.length,
              (index) => Column(
                children: [
                  height10(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: Material(
                      child: InkWell(
                        onTap: () async {
                          final url = Uri.parse(
                              dhakaModelLeft[index].urls.toString());
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          }
                        },
                        child: Ink(
                          height: index.isEven ? 300.h : 220.h,
                          width: MediaQuery.of(context).size.width * .45,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              opacity: .5,
                              image: AssetImage(
                                  dhakaModelLeft[index].background.toString()),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    dhakaModelLeft[index].title.toString(),
                                    style: GoogleFonts.castoro(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Center(
                                    child: Text(
                                      dhakaModelLeft[index]
                                          .description
                                          .toString(),
                                      style: GoogleFonts.mulish(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 15),
                                      maxLines: index.isEven ? 5 : 3,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                bottom: 5.h,
                                right: 10.h,
                                child: const Text(
                                  'Load More',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.tealAccent),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

Widget col2(BuildContext context) => SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Wrap(
            children: List.generate(
              dhakaModelRight.length,
              (index) => Column(
                children: [
                  height10(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: Material(
                      child: InkWell(
                        onTap: () {},
                        child: Ink(
                          height: index.isEven ? 220.h : 300.h,
                          width: MediaQuery.of(context).size.width * .45,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              opacity: .5,
                              image: AssetImage(
                                  dhakaModelRight[index].background.toString()),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    dhakaModelRight[index].title.toString(),
                                    style: GoogleFonts.castoro(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Center(
                                    child: Text(
                                      dhakaModelRight[index]
                                          .description
                                          .toString(),
                                      style: GoogleFonts.mulish(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 15),
                                      maxLines: index.isEven ? 5 : 3,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                bottom: 5.h,
                                right: 10.h,
                                child: const Text(
                                  'Load More',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.tealAccent),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
