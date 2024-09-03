import 'package:flutter/material.dart';

class PayTypesModel {
  String iconPath;
  String paytype;
  Widget respectiveScreen;

  PayTypesModel({
    required this.iconPath,
    required this.paytype,
    required this.respectiveScreen,
  });
}
