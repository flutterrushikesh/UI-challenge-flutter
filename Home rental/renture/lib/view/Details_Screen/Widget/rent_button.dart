import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RentButton extends StatelessWidget {
  const RentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          Color.fromRGBO(32, 169, 247, 1),
        ),
      ),
      child: Text(
        "Rent now",
        style: GoogleFonts.poppins(
          fontSize: 22,
          color: Colors.white,
        ),
      ),
    );
  }
}
