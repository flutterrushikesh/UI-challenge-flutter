import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:renture/model/most_popular_model.dart';
import 'package:renture/view/Details_Screen/Widget/rent_button.dart';
import 'package:renture/view/Details_Screen/Widget/room_features.dart';

class DetailsScreen extends StatelessWidget {
  final MostPopularModel obj;
  const DetailsScreen({super.key, required this.obj});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: Text(
          "Details",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                obj.imagePath,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  obj.houseName,
                  style: GoogleFonts.sora(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: "\$ ${obj.price}",
                    style: GoogleFonts.sora(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(32, 169, 247, 1),
                    ),
                    children: [
                      TextSpan(
                          text: "  /Month",
                          style: GoogleFonts.sora(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(72, 72, 72, 1),
                          )),
                    ],
                  ),
                )
              ],
            ),
            RichText(
              text: TextSpan(
                text: obj.location,
                style: GoogleFonts.sora(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(72, 72, 72, 1),
                ),
                children: [
                  TextSpan(
                    text: obj.type,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            const RoomFeatures(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Expanded(
              child: Text(
                textAlign: TextAlign.justify,
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet',
                style: GoogleFonts.sora(
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: const RentButton(),
    );
  }
}
