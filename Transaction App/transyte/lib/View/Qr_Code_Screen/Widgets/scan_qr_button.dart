import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:transyte/View/Scan_Qr_Screen.dart/scan_qr_screen.dart';

class ScanQrButton extends StatelessWidget {
  const ScanQrButton({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: () => PersistentNavBarNavigator.pushNewScreen(
        context,
        screen: const ScanQrScreen(),
        pageTransitionAnimation: PageTransitionAnimation.fade,
      ),
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(
          Color.fromRGBO(9, 112, 62, 1),
        ),
        minimumSize: WidgetStatePropertyAll(
          Size(double.infinity, screenHeight * 0.07),
        ),
      ),
      child: Text(
        "Scan QR Code",
        style: GoogleFonts.poppins(
          fontSize: screenWidth * 0.041,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
