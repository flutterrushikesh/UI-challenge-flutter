import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset('assets/logo/app logo.png'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(247, 244, 255, 1),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromRGBO(29, 98, 202, 1),
          ),
        ),
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
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your password",
                  style: GoogleFonts.sora(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Text(
                  "Password",
                  style: GoogleFonts.sora(
                    fontSize: 12,
                    color: const Color.fromRGBO(25, 25, 25, 1),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
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
                    suffixIcon: const Icon(
                      Icons.visibility_off_outlined,
                      color: Color.fromRGBO(83, 93, 102, 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        myBottomSheet(context);
                      },
                      child: Text(
                        "Forgot password?",
                        style: GoogleFonts.sora(
                            color: const Color.fromRGBO(29, 98, 202, 1),
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  void myBottomSheet(BuildContext context) {
    Get.bottomSheet(
      isDismissible: true,
      Container(
        height: MediaQuery.of(context).size.height / 2.8,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Forgot your password?",
                    style: GoogleFonts.sora(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(25, 25, 25, 1),
                    ),
                  ),
                  Text(
                    "Done",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(29, 98, 202, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Email",
                style: GoogleFonts.sora(
                  fontSize: 12,
                  color: const Color.fromRGBO(25, 25, 25, 1),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              TextField(
                autofocus: false,
                decoration: InputDecoration(
                  hintText: "e.g. email@example.com",
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
                height: MediaQuery.of(context).size.height / 30,
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
                  "Send reset link",
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 45,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                  mobileInstead(context);
                },
                child: Center(
                  child: Text(
                    "Use mobile instead",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(29, 98, 202, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void mobileInstead(BuildContext context) {
    Get.bottomSheet(
      Container(
        height: MediaQuery.of(context).size.height / 2.8,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Forgot your password?",
                    style: GoogleFonts.sora(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(25, 25, 25, 1),
                    ),
                  ),
                  Text(
                    "Done",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(29, 98, 202, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Mobile number",
                style: GoogleFonts.sora(
                  fontSize: 12,
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
                height: MediaQuery.of(context).size.height / 30,
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
                  "Send reset link",
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 45,
              ),
              GestureDetector(
                onTap: () {
                  mobileInstead(context);
                },
                child: Center(
                  child: Text(
                    "Use email instead",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(29, 98, 202, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
