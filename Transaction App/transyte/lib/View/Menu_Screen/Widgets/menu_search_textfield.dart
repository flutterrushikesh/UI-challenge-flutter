import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuSearchTextfield extends StatelessWidget {
  const MenuSearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Image.asset('assets/icon/Search.png'),
        hintText: "Search Menu",
        hintStyle: GoogleFonts.poppins(
          fontSize: MediaQuery.of(context).size.width * 0.031,
          color: const Color.fromRGBO(8, 4, 34, 0.6),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        filled: true,
      ),
    );
  }
}
