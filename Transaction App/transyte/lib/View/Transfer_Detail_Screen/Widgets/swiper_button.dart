import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transyte/Model/contact_model.dart';
import 'package:transyte/View/Riceipt_Screen/receipt_screen.dart';

class SwiperButton extends StatelessWidget {
  final ContactModel singleContact;
  const SwiperButton({super.key, required this.singleContact});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(
        left: screenWidth * 0.1,
        right: screenWidth * 0.1,
      ),
      child: SwipeButton(
        height: screenHeight * 0.06,
        activeThumbColor: Colors.white,
        thumbPadding: const EdgeInsets.all(5),
        onSwipe: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ReceiptScreen(
              singleContact: singleContact,
            ),
          ),
        ),
        thumb: const Icon(
          Icons.arrow_forward_ios,
        ),
        activeTrackColor: const Color.fromRGBO(9, 112, 62, 1),
        child: Text(
          "SWIPE TO PAY",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.041,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
