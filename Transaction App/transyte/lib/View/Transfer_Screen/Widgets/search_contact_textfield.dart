import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchContactTextfield extends StatelessWidget {
  const SearchContactTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Image.asset('assets/icon/Search.png'),
        hintText: "Search Contact",
        hintStyle: GoogleFonts.poppins(
          fontSize: screenWidth * 0.031,
          color: const Color.fromRGBO(8, 4, 34, 0.6),
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
