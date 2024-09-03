import 'package:flutter/material.dart';
import 'package:transyte/Model/phone_number_model.dart';

class PhoneNumberController extends ChangeNotifier {
  ///CREATE OBJECT TO ACCESS THE PHONE NUMBER VARIABLE.
  PhoneNumberModel phoneNumberObj = PhoneNumberModel();

  ///TO CONCATE THE DIGIT OF NUMBER.
  String concatedNumber = '';

  ///CREATE A GLOBAL KEY TO VALIDATE
  ///PHONE NUMBER.
  GlobalKey<FormState> validatePhoneKey = GlobalKey<FormState>();

  void onTapNumber(String phoneNumber) {
    ///CONCATE ENTERED DIGIT AND PREVIOUS DIGIT.
    concatedNumber = concatedNumber + phoneNumber;

    ///ASSSIGN A CONCATED PHONENUMBER
    phoneNumberObj.phonenumber = concatedNumber;

    notifyListeners();
  }

  ///VALIDATE A PHONE NUMBER.
  ///I.E PHONE NUMBER MUST BE 10 DIGIT.
  String? validatePhoneNumber(String? phoneNumber) {
    ///PATTER FOR VALIDATE PHONE NUMBER.
    final phonePattern = RegExp(r'^\d{10}$');
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return 'Please enter a phone number';
    } else if (!phonePattern.hasMatch(phoneNumber)) {
      return 'Enter a valid 10-digit phone number';
    }
    return null;
  }

  ///THIS METHOD CALL WHEN USER ENTER OTP DIGIT.
  ///THEN AUTOMATICALLY FOCUS ON NEXT NODE.
  void otpNode(String otp, BuildContext context, int index) {
    if (otp.length == 1 && index < 6) {
      FocusScope.of(context).nextFocus();
    }
    if (otp.isEmpty && index > 0) {
      FocusScope.of(context).previousFocus();
    }
  }

  void removeLastNumber() {}
}
