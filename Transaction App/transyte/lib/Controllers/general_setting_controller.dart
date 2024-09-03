import 'package:flutter/material.dart';
import 'package:transyte/Model/general_setting_model.dart';

class GeneralSettingController extends ChangeNotifier {
  List<GeneralSettingModel> listOfSetting = [
    GeneralSettingModel(
      description: "Unblock PIN or CVV and more",
      iconPath: 'assets/icon/security card.png',
      isSettingOn: false,
      title: "Online Payment",
    ),
    GeneralSettingModel(
      description: "Enable cash withdrawals",
      iconPath: 'assets/icon/card send.png',
      isSettingOn: false,
      title: "ATM Windrawals",
    ),
    GeneralSettingModel(
      description: "Enable this card abroad",
      iconPath: 'assets/icon/wallet 32.png',
      isSettingOn: false,
      title: "Payment abroad",
    ),
  ];

  void changeSetting(bool isSettingOn, int index) {
    listOfSetting[index].isSettingOn = isSettingOn;
    notifyListeners();
  }
}
