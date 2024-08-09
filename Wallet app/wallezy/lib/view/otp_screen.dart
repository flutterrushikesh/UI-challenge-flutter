import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallezy/controller/latest_transaction_controller.dart';
import 'package:wallezy/view/home_screen.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset('assets/logo/app logo.png'),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromRGBO(29, 98, 202, 1),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            "An SMS sent to your mobile number \n+962 79 XXX-XXXX",
            style: GoogleFonts.sora(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Text(
            'Enter six-digit code',
            style: GoogleFonts.sora(
              fontSize: 12,
              color: const Color.fromRGBO(120, 131, 141, 1),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              6,
              (index) {
                return Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 10,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.sora(
                      fontSize: 36,
                    ),
                    decoration: InputDecoration(
                      hintText: "X",
                      hintStyle: GoogleFonts.sora(
                        fontSize: 36,
                        color: const Color.fromRGBO(186, 194, 199, 1),
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
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          RichText(
            text: TextSpan(
              text: "Resend code",
              style: GoogleFonts.sora(
                color: const Color.fromRGBO(120, 131, 141, 1),
              ),
              children: [
                TextSpan(
                  text: "   00:32",
                  style: GoogleFonts.sora(color: Colors.black),
                )
              ],
            ),
          )
        ],
      ),
      bottomSheet: ElevatedButton(
        onPressed: () {
          Get.to(
            () => HomeScreen(),
          );
          Get.put(() => LatestTransactionController());
        },
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          minimumSize: const WidgetStatePropertyAll(
            Size(double.infinity, 45),
          ),
          backgroundColor: const WidgetStatePropertyAll(
            Color.fromRGBO(87, 50, 191, 1),
          ),
        ),
        child: Text(
          "Done",
          style: GoogleFonts.sora(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
