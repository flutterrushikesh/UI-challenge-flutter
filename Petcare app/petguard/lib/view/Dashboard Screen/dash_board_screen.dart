import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/view/Dashboard%20Screen/Widgets/category_listview.dart';
import 'package:petguard/view/Dashboard%20Screen/Widgets/community_container.dart';
import 'package:petguard/view/Dashboard%20Screen/Widgets/event_container.dart';
import 'package:petguard/view/Dashboard%20Screen/Widgets/title_container.dart';
import 'package:petguard/view/Grooming%20Screen/Widgets/search_textfield.dart';
import 'package:petguard/view/Notification%20Screen/notification_screen.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    //MEASURE WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: screenWidth * 0.021,
              ),
              child: Image.asset('assets/images/profile image.png'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, Sarah",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.036,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Good Morning",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.036,
                    color: const Color.fromRGBO(194, 195, 204, 1),
                  ),
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              ///ROUTES TO NOTIFICATION SCREEN.
              Get.to(() => NotificationScreen());
            },
            icon: Image.asset('assets/icon/bell.png'),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.018,
          right: screenWidth * 0.041,
          left: screenWidth * 0.041,
          bottom: screenHeight * 0.018,
        ),
        child: ListView(
          children: [
            const SearchTextfield(),
            const TitleContainer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///CALL THE TITTLETEXT METHOD & PASS ARGUMENT "CATEGORY".
                titleText("Category"),
                Text(
                  "See all",
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(194, 195, 204, 1),
                  ),
                ),
              ],
            ),
            CategoryListview(),

            ///CALL THE TITTLETEXT METHOD & PASS ARGUMENT "EVENT".
            titleText("Event"),
            const EventContainer(),

            ///CALL THE TITTLETEXT METHOD & PASS ARGUMENT "COMMUNITY".
            titleText("Community"),
            const CommunityContainer(),
          ],
        ),
      ),
    );
  }

  ///MULTIPLE TIME SAMETEXT.
  ///TITLES
  Widget titleText(String titleText) {
    return Text(
      titleText,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
