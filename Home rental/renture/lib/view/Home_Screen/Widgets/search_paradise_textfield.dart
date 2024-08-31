import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchParadiseTextfield extends StatelessWidget {
  const SearchParadiseTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.025,
        right: MediaQuery.of(context).size.width * 0.025,
        top: MediaQuery.of(context).size.height * 0.012,
        bottom: MediaQuery.of(context).size.height * 0.012,
      ),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          prefixIcon: const Icon(
            Icons.search,
            color: Color.fromRGBO(33, 33, 33, 1),
          ),
          hintText: "Search your favourite paradise",
          hintStyle: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width * 0.032,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(33, 33, 33, 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
