import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/money_controller.dart';

class PaymentLimitButton extends StatelessWidget {
  const PaymentLimitButton({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    MoneyController localObj = Provider.of(context, listen: false);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        4,
        (index) => Column(
          children: [
            Container(
              padding: EdgeInsets.all(screenWidth * 0.02),
              margin: EdgeInsets.all(screenWidth * 0.02),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(9, 112, 62, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                localObj.money[index].money,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(screenWidth * 0.02),
              margin: EdgeInsets.all(screenWidth * 0.02),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(9, 112, 62, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                localObj.money[index + 4].money,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
