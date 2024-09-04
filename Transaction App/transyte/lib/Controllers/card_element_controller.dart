import 'package:flutter/material.dart';
import 'package:transyte/Model/card_element_model.dart';
import 'package:transyte/View/Card_Top_Up_Screen/card_topup_screen.dart';
import 'package:transyte/View/Change_PIN_Screen/change_pin_screen.dart';

class CardElementController {
  List<CardElementModel> listOfElement = [
    CardElementModel(
      elementName: "Lock Card",
      iconPath: 'assets/icon/lock card.png',
      screen: const Scaffold(),
    ),
    CardElementModel(
      elementName: "Change PIN",
      iconPath: 'assets/icon/change pin.png',
      screen: const ChangePinScreen(),
    ),
    CardElementModel(
      elementName: "Top Up",
      iconPath: 'assets/icon/top up 3.png',
      screen: const CardTopupScreen(),
    ),
  ];
}
