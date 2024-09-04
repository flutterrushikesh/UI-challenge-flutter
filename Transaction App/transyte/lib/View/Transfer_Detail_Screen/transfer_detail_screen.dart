import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transyte/Model/contact_model.dart';
import 'package:transyte/View/Menu_Screen/Widgets/back_button.dart';
import 'package:transyte/View/Transfer_Detail_Screen/Widgets/enter_amount_container.dart';
import 'package:transyte/View/Transfer_Detail_Screen/Widgets/enter_amount_keyboard.dart';
import 'package:transyte/View/Transfer_Detail_Screen/Widgets/swiper_button.dart';

class TransferDetailScreen extends StatelessWidget {
  final ContactModel singleContact;
  const TransferDetailScreen({super.key, required this.singleContact});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 96, 72, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,

        ///BACK TO HOME TRANSFER SCREEN
        leading: const BackToHome(),
        title: Text(
          "Transfer",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.036,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ///DISPLAYS THE RECIEVER DETAILS.
          EnterAmountContainer(singleContact: singleContact),
          Container(
            padding: EdgeInsets.only(
              bottom: screenHeight * 0.03,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                ///TO ENTER AMOUT KEYBOARD.
                const EnterAmountKeyboard(),
                SizedBox(
                  height: screenHeight * 0.01,
                ),

                ///SWIPER BUTTON TO PAY.
                SwiperButton(
                  singleContact: singleContact,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
