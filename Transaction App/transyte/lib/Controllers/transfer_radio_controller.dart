import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:transyte/View/Paynearby_Screen/search_nearby_screen.dart';
import 'package:transyte/View/Qr_Code_Screen/qr_code_screen.dart';

class TransferRadioController extends ChangeNotifier {
  int selectedValue = 0;

  List<String> nameOfButtons = ["Bank account", "Scan", "Nearby"];

  void toggleButton(int? selectedValue, BuildContext context) {
    this.selectedValue = selectedValue!;
    log("IN TOggle");

    if (selectedValue == 1) {
      PersistentNavBarNavigator.pushNewScreen(context,
          screen: const QrCodeScreen());
    } else {
      PersistentNavBarNavigator.pushNewScreen(context,
          screen: const SearhcNearbyScreen());
    }
    notifyListeners();
  }
}
