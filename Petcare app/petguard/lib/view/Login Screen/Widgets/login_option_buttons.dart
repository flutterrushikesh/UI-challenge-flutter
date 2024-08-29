import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/controller/validate_email_controller.dart';
import 'package:petguard/controller/validate_password_controller.dart';

class LoginOptionButtons extends StatelessWidget {
  ///TO CREATE A BUTTON WHICH IS PASSED AT THE TIME OF CREATE
  ///BUTTON
  final String buttonName;

  ///REGISTER A EMAILCONTROLLER.
  final ValidateUserEmailController putEmailController =
      Get.put(ValidateUserEmailController());

  ///FIND A REGISTERD CONTROLLER.
  final ValidateUserEmailController findEmailController =
      Get.find<ValidateUserEmailController>();

  ///REGISTER A USERNAMECONTROLLER
  final ValidateUserPasswordController putPasswordController =
      Get.put(ValidateUserPasswordController());

  ///FIND A REGISTERD CONTROLLE TO ACCESS THE PROPERTIES.
  final ValidateUserPasswordController findPasswordController =
      Get.find<ValidateUserPasswordController>();

  ///GO ON RESPECTIVE SCREEN WHICH IS GET FROM OBJECT.
  final Widget goto;

  LoginOptionButtons({super.key, required this.buttonName, required this.goto});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        bool isValidateEmail =
            findEmailController.validateEmailKey.currentState!.validate();
        bool isValidatePassword =
            findPasswordController.validatePasswordKey.currentState!.validate();
        if (isValidateEmail && isValidatePassword) {
          ///ROUTE TO THEIR RESPECTIVE BUTTON INPUT SCREEN.
          Get.offAll(() => goto);
        }
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
    ;
  }
}
