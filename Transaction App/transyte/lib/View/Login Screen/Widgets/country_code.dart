import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCountryCode extends StatelessWidget {
  const MyCountryCode({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return CountryCodePicker(
      hideSearch: true,
      showDropDownButton: true,
      showCountryOnly: true,
      dialogTextStyle: GoogleFonts.poppins(
        fontSize: screenWidth * 0.041,
        color: const Color.fromRGBO(8, 4, 34, 0.6),
      ),
      showFlag: false,
      textStyle: GoogleFonts.poppins(
        fontSize: screenWidth * 0.041,
        color: const Color.fromRGBO(8, 4, 34, 0.6),
      ),
    );
  }
}
