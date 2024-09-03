import 'package:flutter/material.dart';
import 'package:transyte/Model/pay_types_model.dart';
import 'package:transyte/View/Menu_Screen/menu_screen.dart';
import 'package:transyte/View/Top_up_Screen/top_up_screen.dart';
import 'package:transyte/View/Transfer_Screen/transfer_screen.dart';

class PayTypesController {
  List<PayTypesModel> listOfType = [
    PayTypesModel(
      iconPath: "assets/icon/Arrow Right.png",
      paytype: "Transfer",
      respectiveScreen: const TransferScreen(),
    ),
    PayTypesModel(
      iconPath: "assets/icon/top up.png",
      paytype: "Top-up",
      respectiveScreen: const TopUpScreen(),
    ),
    PayTypesModel(
      iconPath: "assets/icon/bill Wallet.png",
      paytype: "Bill",
      respectiveScreen: const Scaffold(),
    ),
    PayTypesModel(
      iconPath: "assets/icon/Category.png",
      paytype: "More",
      respectiveScreen: const MenuScreen(),
    ),
  ];
}
