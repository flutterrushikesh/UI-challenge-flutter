import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:transyte/Model/password_model.dart';

class SetPasswordController extends ChangeNotifier {
  ///PASSWORDMODEL OBJ.
  PasswordModel passwordModeloBJ = PasswordModel();

  ///TO VALIDATE A PASSWORD TEXTFIELD.
  final GlobalKey<FormState> passwordKey = GlobalKey<FormState>();

  String concatedNumber = '';

  void passwordNode(String otp, BuildContext context, int index) {
    if (otp.length == 1 && index < 6) {
      FocusScope.of(context).nextFocus();
    }
    if (otp.isEmpty && index > 0) {
      FocusScope.of(context).previousFocus();
    }
  }

  ///VALIDATE A PHONE NUMBER.
  ///I.E PHONE NUMBER MUST BE 10 DIGIT.
  String? validatePassWord(String? password) {
    if (password == null || password.isEmpty) {
      return 'Please enter a password';
    } else if (password.length != 4) {
      return 'Password must be 4 digits long';
    }
    return null;
  }

  void onTapPassword(String phoneNumber) {
    log("Password add");

    ///CONCATE ENTERED DIGIT AND PREVIOUS DIGIT.
    concatedNumber = concatedNumber + phoneNumber;

    ///ASSSIGN A CONCATED PHONENUMBER
    passwordModeloBJ.password = concatedNumber;
    log(concatedNumber);
    notifyListeners();
  }
}
