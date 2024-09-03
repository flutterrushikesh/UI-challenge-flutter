import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:transyte/Model/contact_model.dart';
import 'package:transyte/View/Riceipt_Screen/Widgets/receiver_details.dart';

class ReceiptContainer extends StatelessWidget {
  final ContactModel singleContact;
  const ReceiptContainer({super.key, required this.singleContact});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return TicketWidget(
      padding: EdgeInsets.only(
        top: screenHeight * 0.03,
        // bottom: screenHeight * 0.1,
        right: screenWidth * 0.051,
        left: screenWidth * 0.051,
      ),
      width: double.infinity,
      height: screenHeight * 0.45,
      isCornerRounded: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReceiverDetails(
            singleContact: singleContact,
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          const Divider(
            thickness: 0.5,
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.041,
                  color: const Color.fromRGBO(8, 4, 34, 0.6),
                ),
              ),
              Text(
                "\$450,49",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.041,
                  color: const Color.fromRGBO(8, 4, 34, 0.6),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          const Divider(
            thickness: 0.5,
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Text(
            "Note",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.041,
              color: const Color.fromRGBO(8, 4, 34, 0.6),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.04,
          ),
          const Divider(
            thickness: 0.5,
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date Transaction",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  color: const Color.fromRGBO(8, 4, 34, 0.6),
                ),
              ),
              Text(
                "26 Agu 2021 11:36:26",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  color: const Color.fromRGBO(8, 4, 34, 0.6),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "ID Transaction",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  color: const Color.fromRGBO(8, 4, 34, 0.6),
                ),
              ),
              Text(
                "202108260001@\nDCB199983",
                textAlign: TextAlign.end,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  color: const Color.fromRGBO(8, 4, 34, 0.6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
