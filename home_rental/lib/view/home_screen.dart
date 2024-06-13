import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental/view/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 25, left: 25, bottom: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text(
                  "Hey Dravid",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(101, 101, 101, 1),
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('assets/images/profile.png'),
                ),
                const SizedBox(
                  width: 25,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Let’s find your best \nresidence',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search your favourite paradise',
                hintStyle: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  'Most popular',
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Text(
                  "See all",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(32, 169, 247, 1),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return DetailScreen();
                      }));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/nighthill.png'),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Night Hill Villa',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Lodon, Night Hill",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(72, 72, 72, 1),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text.rich(
                            TextSpan(
                              text: "\$5900",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(32, 169, 247, 1),
                              ),
                              children: [
                                TextSpan(
                                  text: " /month",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(72, 72, 72, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/night.png'),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Night Villa',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Lodon, New Park",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(72, 72, 72, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text.rich(
                          TextSpan(
                            text: "\$4900",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(32, 169, 247, 1),
                            ),
                            children: [
                              TextSpan(
                                text: " /month",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(72, 72, 72, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Nearby your location',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const Spacer(),
                Text(
                  "More",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(32, 169, 247, 1)),
                ),
                const SizedBox(
                  width: 25,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(right: 25),
              padding: const EdgeInsets.only(
                  right: 5, left: 15, top: 15, bottom: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/jumeriahvilla.png',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Jumeriah Golf Estates Villa  ',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_pin,
                            size: 19,
                            color: Color.fromRGBO(90, 90, 90, 1),
                          ),
                          Text(
                            'London,Area Plam Jumeriah         ',
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(90, 90, 90, 1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          const Icon(
                            Icons.chair,
                            size: 19,
                            color: Color.fromRGBO(90, 90, 90, 1),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '4 bedrooms',
                            style: GoogleFonts.poppins(
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(90, 90, 90, 1),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.bathtub_outlined,
                            size: 19,
                            color: Color.fromRGBO(90, 90, 90, 1),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '5 bathrooms               ',
                            style: GoogleFonts.poppins(
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(90, 90, 90, 1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const SizedBox(
                            width: 70,
                          ),
                          Text.rich(
                            TextSpan(
                              text: "\$4900",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(32, 169, 247, 1),
                              ),
                              children: [
                                TextSpan(
                                  text: " /month",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(72, 72, 72, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
