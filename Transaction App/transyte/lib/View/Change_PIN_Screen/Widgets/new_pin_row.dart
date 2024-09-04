import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPinRow extends StatelessWidget {
  const NewPinRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "New PIN",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(8, 4, 34, 0.5),
          ),
        ),
        const Icon(
          Icons.visibility_outlined,
          color: Color.fromRGBO(8, 4, 34, 0.6),
        ),
      ],
    );
  }
}
