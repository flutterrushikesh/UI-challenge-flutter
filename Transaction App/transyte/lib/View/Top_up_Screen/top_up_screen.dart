import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transyte/View/Set_Password_Scree/Widgets/my_back_button.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const MyBackButton(),
        title: Text(
          "Top-up Wallet",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.036,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      ),
    );
  }
}
