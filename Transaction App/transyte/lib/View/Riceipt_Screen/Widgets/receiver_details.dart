import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transyte/Model/contact_model.dart';

class ReceiverDetails extends StatelessWidget {
  final ContactModel singleContact;
  const ReceiverDetails({super.key, required this.singleContact});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.04),
          child: Image.asset(
            singleContact.image,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              singleContact.name,
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.041,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Text(
              singleContact.number,
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.025,
              ),
            ),
          ],
        )
      ],
    );
  }
}
