import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:transyte/View/Notification_Screen/Widgets/transaction_notification.dart';
import 'package:transyte/View/Notification_Screen/Widgets/verification_status.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      appBar: AppBar(
        title: Text(
          "Notification",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.041,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.01,
          bottom: screenHeight * 0.02,
          right: screenWidth * 0.051,
          left: screenWidth * 0.051,
        ),
        child: const Column(
          children: [
            TransactionNotification(),
            VerificationStatus(),
          ],
        ),
      ),
    );
  }
}
