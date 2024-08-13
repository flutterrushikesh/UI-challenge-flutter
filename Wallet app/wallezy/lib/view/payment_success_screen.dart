import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallezy/model/saved_biller_model.dart';
import 'package:wallezy/view/my_bottom_sheet.dart';

class PaymentSuccessScreen extends StatelessWidget {
  final SavedBillerModel argumentObj = Get.arguments;
  PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          Center(child: Image.asset('assets/images/payment success.png')),
          Center(
            child: Text(
              "Payment done!",
              style: GoogleFonts.sora(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(25, 25, 25, 1),
              ),
            ),
          ),
          Center(
            child: Text(
              "Bill payment has been done \nsuccessfully",
              textAlign: TextAlign.center,
              style: GoogleFonts.sora(
                fontSize: 12,
                color: const Color.fromRGBO(83, 93, 102, 1),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 9,
          ),
          Text(
            "Payment Details",
            style: GoogleFonts.sora(fontWeight: FontWeight.w600),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20, bottom: 6),
            padding:
                const EdgeInsets.only(top: 16, bottom: 16, right: 12, left: 12),
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(237, 239, 246, 1),
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Biller",
                  style: GoogleFonts.sora(
                      fontSize: 12,
                      color: const Color.fromRGBO(120, 131, 141, 1)),
                ),
                Text(
                  argumentObj.billerName,
                  style: GoogleFonts.sora(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(83, 93, 102, 1),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 6, bottom: 6),
            padding:
                const EdgeInsets.only(top: 16, bottom: 16, right: 12, left: 12),
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(237, 239, 246, 1),
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Amount",
                  style: GoogleFonts.sora(
                      fontSize: 12,
                      color: const Color.fromRGBO(120, 131, 141, 1)),
                ),
                Text(
                  argumentObj.due,
                  style: GoogleFonts.sora(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(83, 93, 102, 1),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 6, bottom: 6),
            padding:
                const EdgeInsets.only(top: 16, bottom: 16, right: 12, left: 12),
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(237, 239, 246, 1),
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Transaction no.",
                  style: GoogleFonts.sora(
                      fontSize: 12,
                      color: const Color.fromRGBO(120, 131, 141, 1)),
                ),
                Text(
                  "${argumentObj.registrationNumber}",
                  style: GoogleFonts.sora(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(83, 93, 102, 1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.outlined_flag,
                  color: Color.fromRGBO(184, 50, 50, 1),
                ),
                Text(
                  "Report problem",
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(184, 50, 50, 1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 18,
          ),
          GestureDetector(
            onTap: () {
              Get.off(() => const MyBottomSheet());
            },
            child: Container(
              margin: const EdgeInsets.only(top: 30, bottom: 20),
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: const Color.fromRGBO(
                  87,
                  50,
                  191,
                  1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  "Back to wallet",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
