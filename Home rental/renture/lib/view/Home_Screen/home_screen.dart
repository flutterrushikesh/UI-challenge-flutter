import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renture/view/Home_Screen/Widgets/most_popular_title.dart';
import 'package:renture/view/Home_Screen/Widgets/most_popular_list.dart';
import 'package:renture/view/Home_Screen/Widgets/nearby_location_listview.dart';
import 'package:renture/view/Home_Screen/Widgets/search_paradise_textfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
        title: Text(
          'Hey Dravid',
          style: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width * 0.034,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(101, 101, 101, 1),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.025,
              right: MediaQuery.of(context).size.width * 0.025,
              top: MediaQuery.of(context).size.height * 0.012,
              bottom: MediaQuery.of(context).size.height * 0.012,
            ),
            child: Image.asset('assets/images/profile image.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.025,
                right: MediaQuery.of(context).size.width * 0.025,
                top: MediaQuery.of(context).size.height * 0.012,
                bottom: MediaQuery.of(context).size.height * 0.012,
              ),
              child: Text(
                'Let’s find your best \nresidence',
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0462,
            ),
            const SearchParadiseTextfield(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.018,
            ),
            const MostPopularTitle(
              titleName: "Most popular",
              seeAll: "See All",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            const MostPopularList(),
            const MostPopularTitle(
              titleName: "Nearby your location",
              seeAll: "More",
            ),
            const NearbyLocationListview(),
          ],
        ),
      ),
    );
  }
}
