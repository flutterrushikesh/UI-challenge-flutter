import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallezy/view/otp_screen.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
            ),
            Text(
              "Create Account",
              style: GoogleFonts.sora(
                fontSize: 21,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            myText('Name'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            myTextfeild("e.g. John Doe"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 60,
            ),
            myText('Email'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            myTextfeild("e.g. email@example.com"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 60,
            ),
            myText('Password'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            TextField(
              autofocus: false,
              decoration: InputDecoration(
                hintText: "Enter your password",
                hintStyle: GoogleFonts.sora(
                  color: const Color.fromRGBO(225, 227, 237, 1),
                ),
                suffix: const Icon(
                  Icons.visibility_off_outlined,
                  color: Color.fromRGBO(83, 93, 102, 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(225, 227, 237, 1),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(225, 227, 237, 1),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 60,
            ),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {
                    value = !value!;
                  },
                ),
                RichText(
                  text: TextSpan(
                    text: "I accept",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      color: const Color.fromRGBO(25, 25, 25, 1),
                    ),
                    children: [
                      TextSpan(
                        text: " terms and conditions",
                        style: GoogleFonts.sora(
                          fontSize: 12,
                          color: const Color.fromRGBO(29, 98, 202, 1),
                        ),
                      ),
                      TextSpan(
                        text: " and",
                        style: GoogleFonts.sora(
                          fontSize: 12,
                          color: const Color.fromRGBO(25, 25, 25, 1),
                        ),
                      ),
                      TextSpan(
                        text: " privacy policy",
                        style: GoogleFonts.sora(
                          fontSize: 12,
                          color: const Color.fromRGBO(29, 98, 202, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 13,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  () => const OTPScreen(),
                );
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
                "Create a new account",
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'or continue using',
                  style: GoogleFonts.sora(
                      fontSize: 12,
                      color: const Color.fromRGBO(120, 131, 141, 1)),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                continueUsing('assets/logo/facebook.png'),
                continueUsing('assets/logo/Google.png'),
                continueUsing('assets/logo/apple.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget continueUsing(String logoPath) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(237, 239, 246, 1),
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Image.asset(logoPath),
    );
  }

  Widget myText(String data) {
    return Text(
      data,
      style: GoogleFonts.sora(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: const Color.fromRGBO(25, 25, 25, 1),
      ),
    );
  }

  Widget myTextfeild(String hintText) {
    return TextField(
      autofocus: false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.sora(
          color: const Color.fromRGBO(225, 227, 237, 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Color.fromRGBO(225, 227, 237, 1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Color.fromRGBO(225, 227, 237, 1),
          ),
        ),
      ),
    );
  }
}
