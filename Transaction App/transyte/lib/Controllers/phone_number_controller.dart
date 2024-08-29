import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:transyte/Model/phone_number_model.dart';

class PhoneNumberController extends ChangeNotifier {
  PhoneNumberModel phoneNumberObj = PhoneNumberModel();
  void onTapNumber(String phoneNumber) {
    phoneNumberObj.phonenumber.add(phoneNumber);

    log("${phoneNumberObj.phonenumber}");
    notifyListeners();
  }

  void removeLastNumber() {
    phoneNumberObj.phonenumber.removeLast();
    notifyListeners();
  }
}
