import 'package:flutter/material.dart';

class CardElementModel {
  String iconPath;
  String elementName;
  Widget screen;

  CardElementModel({
    required this.elementName,
    required this.iconPath,
    required this.screen,
  });
}
