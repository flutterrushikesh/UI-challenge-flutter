import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallezy/view/create_account_screen.dart';
import 'package:wallezy/view/password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset('assets/logo/app logo.png'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(247, 244, 255, 1),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.3,
            width: double.infinity,
            color: const Color.fromRGBO(247, 244, 255, 1),
            child: Image.asset('assets/logo/mobile.png'),
          ),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height / 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your \nmobile number",
                  style: GoogleFonts.sora(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Text(
                  "Mobile number",
                  style: GoogleFonts.sora(
                    fontSize: MediaQuery.of(context).size.width / 40,
                    color: const Color.fromRGBO(25, 25, 25, 1),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: "7X-XXXXXXXX",
                    hintStyle: GoogleFonts.sora(
                      color: const Color.fromRGBO(186, 194, 199, 1),
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
                  height: MediaQuery.of(context).size.height / 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () {
                            return const CreateAccountScreen();
                          },
                        );
                      },
                      child: Text(
                        "Create account...",
                        style: GoogleFonts.sora(
                            color: const Color.fromRGBO(29, 98, 202, 1),
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => const PasswordScreen());
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
                    "Continue",
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
        ],
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
}
