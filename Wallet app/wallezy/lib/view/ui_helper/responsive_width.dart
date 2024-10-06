import 'package:flutter/material.dart';

double screenWidth(
    {required BuildContext context, required double responsive}) {
  return MediaQuery.of(context).size.width * responsive;
}
