import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/model/specility_model.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    SpeciallityModel getArgumentObj = Get.arguments;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            margin: const EdgeInsets.all(10),
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
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(getArgumentObj.fullImage),
          Container(
            height: MediaQuery.of(context).size.height / 1.49,
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.height / 50,
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
                doctorFeatures(
                  drLocation: getArgumentObj.drLocation,
                  experience: getArgumentObj.drExperience,
                  price: getArgumentObj.price,
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
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
                availableDates(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                ),
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
                availableTime(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                ),
                SizedBox(
                  height: screenHeight * 0.050,
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: screenWidth * 0.018,
                    bottom: screenWidth * 0.018,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(252, 219, 193, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.map_outlined,
                        color: Color.fromRGBO(163, 97, 46, 1),
                      ),
                      Text(
                        "See Location",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.031,
                          color: const Color.fromRGBO(163, 97, 46, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.012,
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: screenHeight * 0.012,
                    bottom: screenHeight * 0.012,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(245, 146, 69, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Book now",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.031,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget availableTime(
      {required double screenHeight, required double screenWidth}) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(screenHeight * 0.011),
          margin: EdgeInsets.all(screenHeight * 0.005),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
            color: const Color.fromRGBO(245, 146, 69, 1),
          ),
          child: Text(
            "09:00",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(screenHeight * 0.011),
          margin: EdgeInsets.all(screenHeight * 0.005),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
          child: Text(
            "15:00",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(screenHeight * 0.011),
          margin: EdgeInsets.all(screenHeight * 0.005),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
          child: Text(
            "19:00",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget availableDates(
      {required double screenHeight, required double screenWidth}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.all(screenHeight * 0.011),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
          child: Text(
            "Fri, 6",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(screenHeight * 0.011),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
          child: Text(
            "Sat, 7",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(screenHeight * 0.011),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
            color: const Color.fromRGBO(245, 146, 69, 1),
          ),
          child: Text(
            "Sun, 8",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(screenHeight * 0.011),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
          child: Text(
            "Mon, 9",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(screenHeight * 0.011),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
            color: const Color.fromRGBO(245, 146, 69, 1),
          ),
          child: Text(
            "Tue, 10",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget doctorFeatures({
    required String? experience,
    required String? price,
    required String? drLocation,
    required double screenHeight,
    required double screenWidth,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.all(screenHeight * 0.018),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(22, 34, 51, 0.08),
                blurRadius: 25,
                offset: Offset(0, 11),
              ),
              BoxShadow(
                color: Color.fromRGBO(22, 34, 51, 0.08),
                blurRadius: 8,
                spreadRadius: -4,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Experience",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                experience!,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.041,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(245, 146, 69, 1),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(screenHeight * 0.018),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(22, 34, 51, 0.08),
                blurRadius: 25,
                offset: Offset(0, 11),
              ),
              BoxShadow(
                color: Color.fromRGBO(22, 34, 51, 0.08),
                blurRadius: 8,
                spreadRadius: -4,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                price!,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.041,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(245, 146, 69, 1),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(screenHeight * 0.018),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(22, 34, 51, 0.08),
                blurRadius: 25,
                offset: Offset(0, 11),
              ),
              BoxShadow(
                color: Color.fromRGBO(22, 34, 51, 0.08),
                blurRadius: 8,
                spreadRadius: -4,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Location",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                drLocation!,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.041,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(245, 146, 69, 1),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
