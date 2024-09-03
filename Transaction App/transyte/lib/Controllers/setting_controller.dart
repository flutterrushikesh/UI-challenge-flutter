import 'package:flutter/material.dart';
import 'package:transyte/Model/setting_model.dart';
import 'package:transyte/Model/type_setting_model.dart';

class SettingController extends ChangeNotifier {
  List<TypeOfSettingModel> listOfSetting = [
    TypeOfSettingModel(
      settings: [
        SettingModel(
          icon: "assets/icon/change pin.png",
          isSwitch: false,
          settingName: "Change PIN",
        ),
        SettingModel(
          icon: "assets/icon/change password.png",
          isSwitch: false,
          settingName: "Change Password",
        ),
        SettingModel(
          icon: "assets/icon/change fingerprint.png",
          isSwitch: false,
          settingName: "Change Fingerprint",
        ),
        SettingModel(
          icon: "assets/icon/turn off cards.png",
          isSwitch: true,
          settingName: "Turn off Cards",
        ),
      ],
      typeOfSetting: "Security",
    ),
    TypeOfSettingModel(
      settings: [
        SettingModel(
            icon: 'assets/icon/language.png',
            isSwitch: false,
            settingName: "Change Language")
      ],
      typeOfSetting: "Language",
    ),
    TypeOfSettingModel(
      settings: [
        SettingModel(
          icon: "assets/icon/dark theme.png",
          isSwitch: true,
          settingName: "Dark Theme",
        )
      ],
      typeOfSetting: "Other",
    ),
  ];
}
