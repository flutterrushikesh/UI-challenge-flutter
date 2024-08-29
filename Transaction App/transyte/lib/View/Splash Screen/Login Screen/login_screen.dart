import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';
import 'package:transyte/Controllers/phone_number_controller.dart';
import 'package:transyte/View/Splash%20Screen/Login%20Screen/Widgets/next_button.dart';
import 'package:transyte/View/Splash%20Screen/Login%20Screen/Widgets/num_keyboard_on_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
        leading: Image.asset('assets/logo/Logo.png'),
        title: Text(
          "AdaBank",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.082,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(9, 112, 62, 1),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.018,
          bottom: screenHeight * 0.018,
          right: screenWidth * 0.041,
          left: screenHeight * 0.031,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Text(
                    "Welcome",
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.082,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  Text(
                    "Enter your mobile number for Continue",
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.031,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.06,
                  ),
                  Row(
                    children: [
                      Container(
                        width: screenWidth * 0.19,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                          Provider.of<PhoneNumberController>(context)
                              .phoneNumberObj
                              .phonenumber
                              .length,
                          (index) {
                            return SizedBox(
                              width: screenWidth * 0.03,
                              child: Consumer(
                                builder: (context, phoneNumber, child) {
                                  return TextFormField(
                                    initialValue:
                                        Provider.of<PhoneNumberController>(
                                                context)
                                            .phoneNumberObj
                                            .phonenumber
                                            .elementAt(index),
                                    style: GoogleFonts.poppins(
                                      fontSize: screenWidth * 0.041,
                                    ),
                                    readOnly: true,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    indent: screenWidth * 0.19,
                    color: const Color.fromRGBO(9, 112, 62, 1),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const NumKeyboardOnScreen(),
                const NextButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
