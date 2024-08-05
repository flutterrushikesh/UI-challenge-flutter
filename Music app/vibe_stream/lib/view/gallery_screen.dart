import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:vibe_stream/controller/music_list_controller.dart';
import 'package:vibe_stream/controller/popular_single_controller.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset('assets/images/add.png'),
                Positioned(
                  top: 200,
                  child: Image.asset('assets/images/shaddow.png'),
                ),
                Positioned(
                  top: 190,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'A.L.O.N.E',
                          style: GoogleFonts.inter(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 90,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19),
                            color: const Color.fromRGBO(255, 46, 0, 1),
                          ),
                          child: Text(
                            "Subscribe",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Discography',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(255, 46, 0, 1),
                    ),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(248, 162, 69, 1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 206,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Provider.of<MusicListController>(context)
                    .listOfMusic
                    .length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          Provider.of<MusicListController>(context)
                              .listOfMusic[index]
                              .lablePath,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100,
                        ),
                        Text(
                          Provider.of<MusicListController>(context)
                              .listOfMusic[index]
                              .musicName,
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                        Text(
                          "${Provider.of<MusicListController>(context).listOfMusic[index].publishYear}",
                          style: GoogleFonts.inter(
                            fontSize: 10,
                            color: const Color.fromRGBO(132, 125, 125, 1),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular singles',
                    style: GoogleFonts.inter(
                        fontSize: 16,
                        color: const Color.fromRGBO(203, 200, 200, 1)),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(248, 162, 69, 1),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, bottom: 15, left: 10),
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: Provider.of<PopularSingleController>(context)
                      .listOfPopularSingleModel
                      .length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            Provider.of<PopularSingleController>(context)
                                .listOfPopularSingleModel[index]
                                .lablePath,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Provider.of<PopularSingleController>(context)
                                  .listOfPopularSingleModel[index]
                                  .songName,
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(203, 200, 200, 1),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 100,
                            ),
                            RichText(
                              text: TextSpan(
                                text:
                                    "${Provider.of<PopularSingleController>(context).listOfPopularSingleModel[index].publishYear}",
                                style: GoogleFonts.inter(
                                  fontSize: 10,
                                  color: const Color.fromRGBO(132, 125, 125, 1),
                                ),
                                children: [
                                  TextSpan(
                                    text: " * ",
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(
                                          203, 200, 200, 1),
                                    ),
                                  ),
                                  TextSpan(
                                    text: Provider.of<PopularSingleController>(
                                            context)
                                        .listOfPopularSingleModel[index]
                                        .category,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 150,
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.more_vert,
                          color: Color.fromRGBO(217, 217, 217, 1),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
