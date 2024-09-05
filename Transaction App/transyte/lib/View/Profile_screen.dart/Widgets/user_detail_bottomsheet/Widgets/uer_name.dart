import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDetailProfilePage extends StatelessWidget {
  final String title;
  final String description;
  const UserDetailProfilePage(
      {super.key, required this.description, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width * 0.031,
            color: const Color.fromRGBO(8, 4, 34, 0.5),
          ),
        ),
        Text(
          description,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: MediaQuery.of(context).size.width * 0.031,
            color: const Color.fromRGBO(8, 4, 34, 1),
          ),
        ),
      ],
    );
  }
}
