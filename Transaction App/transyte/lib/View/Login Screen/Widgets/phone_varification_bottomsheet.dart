import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/phone_number_controller.dart';

void phoneVerification(BuildContext context) {
  ///MEASURES A HEIGHT OF SCREEN.
  double screenHeight = MediaQuery.of(context).size.height;

  ///MEASURES A WIDTH OF SCREEN.
  double screenWidth = MediaQuery.of(context).size.width;
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.018,
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: screenWidth * 0.041,
          right: screenWidth * 0.041,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Verification Code",
              style: GoogleFonts.poppins(fontSize: screenWidth * 0.062),
            ),
            SizedBox(
              height: screenHeight * 0.018,
            ),
            RichText(
              text: TextSpan(
                text:
                    "We have sent the code verification to \nyour mobile number. ",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  color: const Color.fromRGBO(8, 4, 34, 0.6),
                ),
                children: [
                  TextSpan(
                    text: "Wrong number ?",
                    style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(9, 112, 62, 1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Container(
              padding: EdgeInsets.only(
                top: screenHeight * 0.005,
                bottom: screenHeight * 0.005,
                right: screenWidth * 0.02,
                left: screenWidth * 0.02,
              ),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(9, 112, 62, 1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                Provider.of<PhoneNumberController>(context)
                    .phoneNumberObj
                    .phonenumber,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                4,
                (index) {
                  return SizedBox(
                    width: screenWidth * 0.154,
                    child: Center(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        cursorColor: Colors.white,
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.06,
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(9, 112, 62, 1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onChanged: (value) =>
                            Provider.of<PhoneNumberController>(context)
                                .otpNode(value, context, index),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Text(
              "Resend Code in 00:48",
              style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  color: const Color.fromRGBO(8, 4, 34, 0.6)),
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
          ],
        ),
      );
    },
  );
}
