import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailTextfield extends StatelessWidget {
  const EmailTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "PetGuardian@gmail.com",
        hintStyle: GoogleFonts.poppins(
          fontSize: MediaQuery.of(context).size.width * 0.031,
          color: const Color.fromRGBO(194, 195, 204, 1),
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
