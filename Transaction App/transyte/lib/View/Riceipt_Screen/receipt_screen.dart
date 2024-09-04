import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:transyte/Model/contact_model.dart';
import 'package:transyte/View/Riceipt_Screen/Widgets/categories_container.dart';
import 'package:transyte/View/Riceipt_Screen/Widgets/download_invoice.dart';
import 'package:transyte/View/Riceipt_Screen/Widgets/receipt_container.dart';

import 'package:transyte/View/Set_Password_Scree/Widgets/my_back_button.dart';

class ReceiptScreen extends StatelessWidget {
  final ContactModel singleContact;
  const ReceiptScreen({super.key, required this.singleContact});

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
        leading: const MyBackButton(),
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
              "My Receipt",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.052,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),

            ///RECEIPT CONTAINER AND PASS THE WHO'S GENERATE BILL..
            ReceiptContainer(singleContact: singleContact),
            SizedBox(
              height: screenHeight * 0.03,
            ),

            ///CATEGORIES.
            const CategoriesContainer(),

            ///TO PLACE THE AFTER THAT WIDGET IN SCREEN END.
            const Spacer(),

            ///DOWNLOAD INVOICE BUTTON.
            const DownloadInvoice(),
          ],
        ),
      ),
    );
  }
}
