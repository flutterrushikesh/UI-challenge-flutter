import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:transyte/View/Paynearby_Screen/Widgets/back_to_transferscreen_button.dart';
import 'package:transyte/View/Qr_Code_Screen/Widgets/scan_qr_button.dart';
import 'package:transyte/View/Qr_Code_Screen/Widgets/user_detail.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: const BackToTransferscreenButton(),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.03,
          bottom: screenHeight * 0.02,
          right: screenWidth * 0.051,
          left: screenWidth * 0.051,
        ),
        child: Column(
          children: [
            Text(
              "My QR Code",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.052,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: screenHeight * 0.06,
                bottom: screenHeight * 0.07,
              ),
              padding: EdgeInsets.only(
                top: screenHeight * 0.03,
                bottom: screenHeight * 0.02,
                right: screenWidth * 0.051,
                left: screenWidth * 0.051,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  ///RECEIVER DETAILS.
                  const UserDetail(),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  const DottedLine(
                    lineThickness: 0.5,
                    dashGapLength: 10,
                    dashColor: Color.fromRGBO(8, 4, 34, 1),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Text(
                    'Scan This Code  To Pay',
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.031,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Image.asset('assets/images/qr code.png'),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon/Swap 2.png',
                      ),
                      SizedBox(
                        width: screenWidth * 0.02,
                      ),
                      Text(
                        'Change To Barcode',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            ///BUTTON TO SCAN QRCODE.
            const ScanQrButton(),
          ],
        ),
      ),
    );
  }
}
