import 'package:flutter/material.dart';

import 'package:transyte/View/Menu_Screen/Widgets/back_button.dart';
import 'package:transyte/View/Scan_Qr_Screen.dart/Widgets/scanned_user_detail.dart';
import 'package:transyte/View/Scan_Qr_Screen.dart/Widgets/view_qr.dart';

class ScanQrScreen extends StatelessWidget {
  const ScanQrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        ///BACK TO PREVIOUS SCREEN.
        leading: const BackToHome(),
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: const Stack(
        children: [
          ///OPEN CAMERA & SCAN QR CODE BUTTON.
          ViewQr(),

          ///SCANNED USER DETAILS.
          ScannedUserDetail(),
        ],
      ),
    );
  }
}
