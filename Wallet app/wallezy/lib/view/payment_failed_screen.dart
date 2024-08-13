import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallezy/view/my_bottom_sheet.dart';

class PaymentFailedScreen extends StatelessWidget {
  const PaymentFailedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 246, 246, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/payment fail.png'),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              Text(
                "Transaction Failed :(",
                style: GoogleFonts.sora(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Your transfer has been declined \ndue to a technical issue",
                textAlign: TextAlign.center,
                style: GoogleFonts.sora(
                  fontSize: 12,
                  color: const Color.fromRGBO(83, 93, 102, 1),
                ),
              ),
            ],
          ),
        ),
        bottomSheet: ElevatedButton(
          onPressed: () {
            Get.offAll(() => const MyBottomSheet());
          },
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              Color.fromRGBO(87, 50, 191, 1),
            ),
            minimumSize: WidgetStatePropertyAll(
              Size(double.infinity, 50),
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                ),
              ),
            ),
          ),
          child: Text(
            "Back to wallet",
            style: GoogleFonts.sora(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ));
  }
}
