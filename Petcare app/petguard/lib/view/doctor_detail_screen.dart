import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/model/specility_model.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  getArgumentObj.drType,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color.fromRGBO(194, 195, 204, 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
