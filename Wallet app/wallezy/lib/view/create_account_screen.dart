import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
          ],
        ),
      ),
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

  Widget myTextfeild() {
    return TextField();
  }
}
