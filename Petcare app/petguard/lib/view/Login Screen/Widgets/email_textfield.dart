import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/controller/validate_email_controller.dart';

class EmailTextfield extends StatelessWidget {
  ///REGISTER A USERNAMECONTROLLER
  final ValidateUserEmailController putController =
      Get.put(ValidateUserEmailController());

  ///FIND A REGISTERD CONTROLLE TO ACCESS THE PROPERTIES.
  final ValidateUserEmailController findController =
      Get.find<ValidateUserEmailController>();

  EmailTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: findController.validateEmailKey,
      child: TextFormField(
        style: GoogleFonts.poppins(
          fontSize: MediaQuery.of(context).size.width * 0.031,
        ),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: "PetGuardian@gmail.com",
          hintStyle: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width * 0.031,
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
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 2,
              color: Color.fromRGBO(250, 200, 162, 1),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 2,
              color: Color.fromRGBO(250, 200, 162, 1),
            ),
          ),
        ),
        validator: (email) => findController.validateUserEmailname(email),
      ),
    );
  }
}
