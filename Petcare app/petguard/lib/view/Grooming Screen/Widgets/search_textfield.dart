import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    //MEASURE WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: GoogleFonts.poppins(
          fontSize: screenWidth * 0.031,
          color: const Color.fromRGBO(194, 195, 204, 1),
        ),
        suffixIcon: const Icon(
          Icons.search,
          size: 30,
          color: Color.fromRGBO(245, 146, 69, 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            width: 2,
            color: Color.fromRGBO(250, 200, 162, 1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            width: 2,
            color: Color.fromRGBO(250, 200, 162, 1),
          ),
        ),
      ),
    );
  }
}
