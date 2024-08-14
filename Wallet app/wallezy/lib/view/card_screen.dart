import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallezy/view/show_card_screen.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cards",
          style: GoogleFonts.sora(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Text(
            "Add Cards",
            style: GoogleFonts.sora(
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(29, 98, 202, 1),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Color.fromRGBO(29, 98, 202, 1),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height / 4.5,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(230, 221, 255, 1),
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Abdullah Ghatasheh",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "**** 2313",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 20,
              child: Container(
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.height / 2.47,
                height: MediaQuery.of(context).size.height / 4.5,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(111, 69, 233, 1),
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Abdullah Ghatasheh",
                      style: GoogleFonts.sora(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "**** 5432",
                      style: GoogleFonts.sora(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 9.8,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const ShowCardScreen());
                },
                child: Container(
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.height / 2.47,
                  height: MediaQuery.of(context).size.height / 4.5,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(39, 6, 133, 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset('assets/images/Ellipse.png'),
                      Positioned(
                        top: MediaQuery.of(context).size.height / 9.7,
                        left: MediaQuery.of(context).size.width / 2.7,
                        child: Image.asset('assets/images/Ellipse 2.png'),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height / 15,
                        left: MediaQuery.of(context).size.width / 1.7,
                        child: Image.asset("assets/images/Ellipse 3.png"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Abdullah Ghatasheh",
                                style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "**** 5432",
                                style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Balance",
                                  style: GoogleFonts.sora(
                                    fontSize: 12,
                                    color:
                                        const Color.fromRGBO(230, 221, 255, 1),
                                  ),
                                ),
                                Text(
                                  "\$2,354",
                                  style: GoogleFonts.sora(
                                    fontSize: 21,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(230, 221, 255, 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
