import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transyte/View/Card_Top_Up_Screen/Widgets/payment_limit_button.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Positioned.fill(
      top: screenHeight * 0.3,
      child: Container(
        padding: EdgeInsets.only(
          top: screenHeight * 0.018,
          bottom: screenHeight * .018,
          right: screenWidth * 0.05,
          left: screenWidth * 0.05,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              30,
            ),
            topRight: Radius.circular(30),
          ),
          color: const Color.fromRGBO(246, 246, 246, 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: SizedBox(
                height: screenHeight * 0.1,
              ),
            ),
            Text(
              "Total Top Up",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(8, 4, 34, 0.5),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Text(
              "\$0.00",
              style: GoogleFonts.poppins(
                // fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(8, 4, 34, 1),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
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
                  "Saldo Active",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: screenWidth * 0.025,
                    color: const Color.fromRGBO(8, 4, 34, 0.5),
                  ),
                ),
                Text(
                  "\$450,49",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: screenWidth * 0.025,
                    color: const Color.fromRGBO(8, 4, 34, 0.5),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.06,
            ),
            RangeSlider(
              min: 0,
              max: 10,
              activeColor: Colors.white,
              inactiveColor: const Color.fromRGBO(9, 112, 62, 1),
              values: const RangeValues(0, 0),
              onChanged: (value) {},
            ),
            SizedBox(
              height: screenHeight * 0.06,
            ),

            ///PAYMENTS LIMIT BUTTON.
            const PaymentLimitButton(),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Center(
              child: Text(
                'Money will be moved from \nactive balance to add card balance',
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  color: const Color.fromRGBO(8, 4, 34, 0.5),
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
