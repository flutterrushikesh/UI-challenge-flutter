import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/view/Login%20Screen/Widgets/email_textfield.dart';
import 'package:petguard/view/Login%20Screen/Widgets/login_option_buttons.dart';
import 'package:petguard/view/Login%20Screen/Widgets/password_textfield.dart';
import 'package:petguard/view/Bottom%20Navigation%20Bar/my_bottom_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    //MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    ///MAIN SCREEN
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
        title: Text(
          "Login",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.082,
            fontWeight: FontWeight.w700,
            color: const Color.fromRGBO(245, 146, 69, 1),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: screenHeight * 0.018,
            bottom: screenHeight * 0.018,
            right: screenWidth * 0.041,
            left: screenWidth * 0.041,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///LOGO OF APPLICATION
              Center(
                child: Image.asset('assets/logo/Brandmark Logo.png'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.034,
              ),
              textLable(
                lable: "Email",
                screenHeight: screenHeight,
                screenWidth: screenWidth,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.012,
              ),

              ///TEXTFIEDL FOR GET EMAIL & VALIDATE.
              ///IF VALIDATION TRUE THEN NAVIGATE TO RESPECTIVE SCREEN.
              EmailTextfield(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              textLable(
                lable: "Password",
                screenHeight: screenHeight,
                screenWidth: screenWidth,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.012,
              ),

              //TEXTFIEDL FOR GET PASSWORD & VALIDATE.
              ///IF VALIDATION TRUE THEN NAVIGATE TO RESPECTIVE SCREEN.
              PasswordTextfield(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.012,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Forgot password?",
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.031,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                    ),
                    children: [
                      TextSpan(
                        text: "  Click here",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.012,
              ),

              ///LOGIN OPTION BUTTON.
              LoginOptionButtons(
                buttonName: "LOGIN",
                goto: MyBottomNavBar(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              const Divider(
                color: Color.fromRGBO(245, 146, 69, 1),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),

              ///LOGIN OPTION BUTTON.
              LoginOptionButtons(
                buttonName: "LOGIN WITH EMAIL",
                goto: MyBottomNavBar(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              ///LOGIN OPTION BUTTON.
              LoginOptionButtons(
                buttonName: "LOGIN WITH FACEBOOK",
                goto: MyBottomNavBar(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Center(
                child: Text(
                  "By continue you agree to our \nTerms & Privacy Policy",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.031,
                    color: const Color.fromRGBO(31, 32, 41, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///SAME TEXT 2 TIMES
  Widget textLable(
      {required String lable,
      required double screenHeight,
      required screenWidth}) {
    return Text(
      lable,
      style: GoogleFonts.poppins(
        fontSize: screenWidth * 0.031,
        fontWeight: FontWeight.w500,
        color: const Color.fromRGBO(194, 195, 204, 1),
      ),
    );
  }
}
