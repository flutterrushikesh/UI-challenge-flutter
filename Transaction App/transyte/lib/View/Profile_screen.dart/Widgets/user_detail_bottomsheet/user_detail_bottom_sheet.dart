import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transyte/View/Profile_screen.dart/Widgets/user_detail_bottomsheet/Widgets/title_container.dart';
import 'package:transyte/View/Profile_screen.dart/Widgets/user_detail_bottomsheet/Widgets/uer_name.dart';

void userDetailBottomSheet({
  required BuildContext context,
  required double screenHeight,
  required double screenWidth,
}) {
  showModalBottomSheet(
    scrollControlDisabledMaxHeightRatio: 0.8,
    context: context,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
    builder: (context) => Column(
      // mainAxisSize: MainAxisSize.max,

      children: [
        const TitleContainer(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.09,
              bottom: screenHeight * 0.018,
              left: screenWidth * 0.041,
              right: screenWidth * 0.041,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const UserDetailProfilePage(
                  title: "Name",
                  description: "Iqbal surya prama",
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                const UserDetailProfilePage(
                  description: "\$nextarui",
                  title: "Castag",
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                const UserDetailProfilePage(
                  description: "903402383011",
                  title: "Account Number",
                ),
                SizedBox(
                  height: screenHeight * 0.07,
                ),
                Text(
                  "Personal Information",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.041,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                const UserDetailProfilePage(
                  description: "iqbalsurya376@gmail.com",
                  title: "Email",
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                const UserDetailProfilePage(
                  description: "+6289617923533",
                  title: "Mobile Number",
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                const UserDetailProfilePage(
                  description: "120394828412",
                  title: "Id Number",
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                const UserDetailProfilePage(
                  description: "Already Uploaded",
                  title: "Npwp",
                ),
                SizedBox(
                  height: screenHeight * 0.07,
                ),
                Text(
                  "Device Information",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.041,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                const UserDetailProfilePage(
                  description: "Redmi M2004",
                  title: "Primary Device",
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                const UserDetailProfilePage(
                  description: "3.0.2(7722)",
                  title: "App Version",
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
