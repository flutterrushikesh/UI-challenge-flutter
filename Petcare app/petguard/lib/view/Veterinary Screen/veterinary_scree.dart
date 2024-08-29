import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:petguard/view/Grooming%20Screen/Widgets/search_textfield.dart';
import 'package:petguard/view/Veterinary%20Screen/Widget/doctor_listview.dart';
import 'package:petguard/view/Veterinary%20Screen/Widget/intro_container.dart';
import 'package:petguard/view/Veterinary%20Screen/Widget/service_listview.dart';

class VeterinaryScreen extends StatelessWidget {
  const VeterinaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MRASURE A SCREEN HEIGHT.
    double screeHeight = MediaQuery.of(context).size.height;

    //MEASURES A SCREEN WIDTH.
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: screeHeight * 0.013),
              child: Image.asset('assets/icon/map pin.png'),
            ),
            Text(
              "Lodon, UK",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.036,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(194, 195, 204, 1),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          right: screenWidth * 0.041,
          left: screenWidth * 0.041,
          top: screeHeight * 0.018,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///CONTAINER WHICH IS SHOWS THE INDRODUCTION.
            const IntroContainer(),

            ///SEATCH TEXTFIELD TO SEARCH DOCTOR.
            const SearchTextfield(),
            SizedBox(
              height: screeHeight * 0.019,
            ),
            Text(
              "Our services",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
              ),
            ),

            ///LIST OF SERVICES.
            ServiceListview(),
            Text(
              "Best Specialists Nearby",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: screeHeight * 0.018,
            ),

            ///SHOWS THE LIST OF DOCTORS.
            DoctorListview(),
          ],
        ),
      ),
    );
  }
}
