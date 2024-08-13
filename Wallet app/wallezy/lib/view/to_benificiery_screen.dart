import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:wallezy/model/frequently_contact_model.dart';
import 'package:wallezy/view/payment_failed_screen.dart';

class ToBenificieryScreen extends StatelessWidget {
  final FrequentlyContactModel argumentsObj = Get.arguments;
  ToBenificieryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Color.fromRGBO(29, 98, 202, 1),
              ),
              Text(
                "Back",
                style: GoogleFonts.sora(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(29, 98, 202, 1),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Text(
            "Transfer to",
            style: GoogleFonts.sora(
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(argumentsObj.imgPath),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    argumentsObj.name,
                    style: GoogleFonts.sora(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(25, 25, 25, 1),
                    ),
                  ),
                  Text(
                    argumentsObj.contactNo,
                    style: GoogleFonts.sora(
                      color: const Color.fromRGBO(120, 131, 141, 1),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Text(
            "Enter Amount",
            style: GoogleFonts.sora(
              fontSize: 12,
              color: const Color.fromRGBO(120, 131, 141, 1),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              4,
              (index) {
                return SizedBox(
                  width: 50,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.sora(
                      fontSize: 36,
                      color: const Color.fromRGBO(25, 25, 25, 1),
                    ),
                    decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: GoogleFonts.sora(
                        fontSize: 36,
                        color: const Color.fromRGBO(120, 131, 141, 1),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.length == 1 && index < 6) {
                        FocusScope.of(context).nextFocus();
                      }
                      if (value.isEmpty && index > 0) {
                        FocusScope.of(context).previousFocus();
                      }
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
      bottomSheet: GestureDetector(
        onTap: () {
          Get.off(() => const PaymentFailedScreen());
        },
        child: Container(
          margin: const EdgeInsets.only(top: 30, bottom: 20),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: const Color.fromRGBO(253, 194, 40, 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo/secure.png"),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  "Secure payment",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(39, 6, 133, 1)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
