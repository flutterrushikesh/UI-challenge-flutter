import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/view/Login%20Screen/Widgets/email_textfield.dart';
import 'package:petguard/view/Login%20Screen/Widgets/password_textfield.dart';
import 'package:petguard/view/my_bottom_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //measures a height of mobile screen.
    final double screenHeight = MediaQuery.of(context).size.height;

    //measures a width of screen.
    final double screenWidth = MediaQuery.of(context).size.width;

    //main screen
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
          padding: const EdgeInsets.all(15),
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
              const EmailTextfield(),
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
              const PasswordTextfield(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.012,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Forgot password?",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
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
              customButtons(
                buttonName: "LOGIN",
                goto: const MyBottomNavBar(),
                screenHeight: screenHeight,
                screenWidth: screenWidth,
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
              customButtons(
                buttonName: "LOGIN WITH EMAIL",
                goto: const MyBottomNavBar(),
                screenHeight: screenHeight,
                screenWidth: screenWidth,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              customButtons(
                buttonName: "LOGIN WITH FACEBOOK",
                goto: const MyBottomNavBar(),
                screenHeight: screenHeight,
                screenWidth: screenWidth,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Center(
                child: Text(
                  "By continue you agree to our \nTerms & Privacy Policy",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
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

  ///SAME BUTTON 3 TIMES
  Widget customButtons(
      {required String buttonName,
      required Widget goto,
      required double screenHeight,
      required double screenWidth}) {
    return GestureDetector(
      onTap: () {
        ///ROUTE TO THEIR RESPECTIVE BUTTON INPUT SCREEN.
        Get.offAll(() => goto);
      },
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.only(
          top: screenHeight * 0.01,
          bottom: screenHeight * 0.01,
        ),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(245, 146, 69, 1),
        ),
        child: Text(
          buttonName,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.white,
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
