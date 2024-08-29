import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ValidateUserEmailController extends GetxController {
  ///CREATE A FORM TO VALIDATE A TEXTFIELD
  final GlobalKey<FormState> validateEmailKey = GlobalKey<FormState>();

  String? validateUserEmailname(String? email) {
    if (email == null || email.isEmpty) {
      return 'Please enter your email';
    }

    ///REGULAR EXPRESSION FOR BASIC EMAIL VALIDATION.
    RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!regex.hasMatch(email)) {
      return 'Enter a valid email address';
    }
    return null;
  }
}
