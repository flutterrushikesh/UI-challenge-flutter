import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/model/specility_model.dart';
import 'package:petguard/view/Doctor%20Details%20Screen/Widgets/available_dates.dart';
import 'package:petguard/view/Doctor%20Details%20Screen/Widgets/available_time.dart';
import 'package:petguard/view/Doctor%20Details%20Screen/Widgets/book_doctor_button.dart';
import 'package:petguard/view/Doctor%20Details%20Screen/Widgets/doctor_features.dart';
import 'package:petguard/view/Doctor%20Details%20Screen/Widgets/see_location_button.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log("${MediaQuery.of(context).size.height / 50}");

    ///MEASURES A HEIGHT OF SCREEN.
    double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    double screenWidth = MediaQuery.of(context).size.width;

    ///ARGUMENTS STORES IN VARIABLE WHICH IS PASSED FROM PREVIOUS SCREEN.
    SpeciallityModel getArgumentObj = Get.arguments;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            ///GO TO PREVIOUS SCREEN
            Get.back();
          },
          child: Container(
            margin: EdgeInsets.only(
              top: screenHeight * 0.009,
              bottom: screenHeight * 0.009,
              right: screenWidth * 0.0205,
              left: screenWidth * 0.0205,
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
        ),
        title: Text(
          "Veterinary",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.041,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(getArgumentObj.fullImage),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: screenHeight * 0.02,
                right: screenWidth * 0.046,
                left: screenWidth * 0.046,
              ),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    getArgumentObj.drName,
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    getArgumentObj.drType,
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.031,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.014,
                  ),
                  DoctorFeatures(
                    drLocation: getArgumentObj.drLocation,
                    experience: getArgumentObj.drExperience,
                    price: getArgumentObj.price,
                  ),
                  SizedBox(
                    height: screenHeight * 0.014,
                  ),
                  Text(
                    "About",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.010,
                  ),
                  Text(
                    getArgumentObj.drAbout,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.031,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.014,
                  ),
                  Text(
                    "Available Days",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.010,
                  ),
                  const AvailableDates(),
                  SizedBox(
                    height: screenHeight * 0.018,
                  ),
                  Text(
                    "Available Time",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.010,
                  ),
                  const AvailableTime(),
                  SizedBox(
                    height: screenHeight * 0.050,
                  ),
                  const SeeLocationButton(),
                  SizedBox(
                    height: screenHeight * 0.012,
                  ),
                  const BookDoctorButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
