import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/view/my_bottom_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      appBar: AppBar(
        title: Text(
          "Login",
          style: GoogleFonts.poppins(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: const Color.fromRGBO(245, 146, 69, 1),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset('assets/logo/Brandmark Logo.png'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            textLable("Email"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "PetGuardian@gmail.com",
                hintStyle: GoogleFonts.poppins(
                  fontSize: 12,
                  color: const Color.fromRGBO(194, 195, 204, 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color.fromRGBO(250, 200, 162, 1),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color.fromRGBO(250, 200, 162, 1),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            textLable("Password"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
            TextField(
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.visibility_off_outlined,
                  color: Color.fromRGBO(245, 146, 69, 1),
                ),
                hintText: "***************",
                hintStyle: GoogleFonts.poppins(
                  fontSize: 12,
                  color: const Color.fromRGBO(194, 195, 204, 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color.fromRGBO(250, 200, 162, 1),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color.fromRGBO(250, 200, 162, 1),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
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
              height: MediaQuery.of(context).size.height / 80,
            ),
            customButtons(
              "Login",
              const MyBottomNavBar(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            const Divider(
              color: Color.fromRGBO(245, 146, 69, 1),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            customButtons(
              "LOGIN WITH EMAIL",
              const MyBottomNavBar(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            customButtons(
              "LOGIN WITH FACEBOOK",
              const MyBottomNavBar(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
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
    );
  }

  Widget customButtons(String buttonName, Widget goto) {
    return GestureDetector(
      onTap: () {
        Get.offAll(() => goto);
      },
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(7),
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

  Widget textLable(String lable) {
    return Text(
      lable,
      style: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: const Color.fromRGBO(194, 195, 204, 1)),
    );
  }
}
