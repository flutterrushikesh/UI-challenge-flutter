import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/controller/validate_password_controller.dart';

class PasswordTextfield extends StatelessWidget {
  ///REGISTER A USERNAMECONTROLLER
  final ValidateUserPasswordController putController =
      Get.put(ValidateUserPasswordController());

  ///FIND A REGISTERD CONTROLLE TO ACCESS THE PROPERTIES.
  final ValidateUserPasswordController findController =
      Get.find<ValidateUserPasswordController>();

  PasswordTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: findController.validatePasswordKey,
      child: Obx(
        () => TextFormField(
          style: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width * 0.031,
          ),
          obscureText: findController.isvisiblePassword.value,
          obscuringCharacter: "*",
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: findController.visiblePassword,
              child: findController.isvisiblePassword.value
                  ? const Icon(
                      Icons.visibility_outlined,
                      color: Color.fromRGBO(245, 146, 69, 1),
                    )
                  : const Icon(
                      Icons.visibility_off_outlined,
                      color: Color.fromRGBO(245, 146, 69, 1),
                    ),
            ),
            hintText: "***************",
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
            errorMaxLines: 2,
            errorBorder: OutlineInputBorder(
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
          ),
          validator: (password) => findController.validatePassword(password),
        ),
      ),
    );
  }
}
