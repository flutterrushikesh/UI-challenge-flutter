import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care/screens/dashboard_screen.dart';

class LoginButtons extends StatefulWidget {
  final String buttonName;
  const LoginButtons({required this.buttonName, super.key});

  @override
  State<LoginButtons> createState() => _LoginButtons();
}

class _LoginButtons extends State<LoginButtons> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) {
              return const DashboardScreen();
            },
          ),
        );
      },
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(
          Color.fromRGBO(245, 146, 69, 1),
        ),
        minimumSize: const MaterialStatePropertyAll(
          Size(double.infinity, 39),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: Text(
        widget.buttonName,
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
