import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ValidateUserPasswordController extends GetxController {
  ///CREATE A FORM  KEY TO VALIDATE A TEXTFIELD
  final GlobalKey<FormState> validatePasswordKey = GlobalKey<FormState>();

  ///BOOLEAN VARIABLE FOR TOGGLE PASSWORD VISIBILITY.
  RxBool isvisiblePassword = true.obs;

  String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Please enter your password';
    }

    ///REGULAR EXPRESSION TO CHECK FOR AT LEAST 8 CHARACTER,
    ///1 DIGIT AND 1 SPEACIAL CHARACTER.
    RegExp regex = RegExp(
      r'^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,}$',
    );
    if (!regex.hasMatch(password)) {
      return 'Password must be at least 8 characters, include 1 digit, and 1 special character';
    }
    return null;
  }

  ///VOID METHOD TO TO TOGGLE VISIBILITY OF PASSWORD.
  void visiblePassword() {
    isvisiblePassword.value = !isvisiblePassword.value;
  }
}
