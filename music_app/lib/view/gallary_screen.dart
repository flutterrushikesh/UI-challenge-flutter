import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/view/discography.dart';
import 'package:music_app/view/discographyrow.dart';
import 'package:music_app/view/mybottom_sheet.dart';
import 'package:music_app/view/mysongtitle.dart';
import 'package:music_app/view/mytitlestyle.dart';
import 'package:music_app/view/popularsinglesimg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GallaryScreen extends StatefulWidget {
  const GallaryScreen({super.key});

  @override
  State createState() => _GallaryScreenState();
}

class _GallaryScreenState extends State {
  final myPageController =
      PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset('assets/images/alone.png'),
              Positioned(
                top: 220,
                left: 30,
                child: Text(
                  "A.L.O.N.E",
                  style: GoogleFonts.inter(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 180,
                child: Image.asset('assets/images/shadow2.png'),
              ),
              Positioned(
                top: 280,
                left: 30,
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 5, left: 15, right: 15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 46, 0, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Subscribe',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(19, 19, 19, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  SmoothPageIndicator(
                    count: 3,
                    controller: myPageController,
                    axisDirection: Axis.horizontal,
                    effect: const WormEffect(
                      activeDotColor: Color.fromRGBO(255, 61, 0, 1),
                      dotHeight: 7,
                      dotWidth: 7,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10),
                      Text(
                        "Discography",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 46, 0, 1),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "See all",
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(248, 162, 69, 1),
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DiscographyRow(),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Text(
                        "Popular singles",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(203, 200, 200, 1),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "See all",
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(248, 162, 69, 1),
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/chaos.png',
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "We are chaos",
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(203, 200, 200, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "2023 * Easy Living",
                              style: GoogleFonts.inter(
                                fontSize: 10,
                                color: const Color.fromRGBO(132, 125, 125, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.more_vert_outlined,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const PopularSingleImg(
                        imagePath: 'assets/images/smile.png',
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Smile",
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(203, 200, 200, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "2023 Berrechid",
                              style: GoogleFonts.inter(
                                fontSize: 10,
                                color: const Color.fromRGBO(132, 125, 125, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.more_vert_outlined,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomSheet(),
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: const Color.fromRGBO(230, 154, 21, 1),

      //   // fixedColor: const Color.fromRGBO(157, 178, 206, 1),

      //   backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.favorite_outline,
      //       ),
      //       label: 'Favorite',
      //       backgroundColor: Colors.red,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: 'Business',
      //       backgroundColor: Colors.green,
      //     ),
      //   ],
      // ),
    );
  }
}
