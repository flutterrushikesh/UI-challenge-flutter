import 'package:flutter/material.dart';

double screenHeight(
    {required BuildContext context, required double responsive}) {
  return MediaQuery.of(context).size.height * responsive;
}
