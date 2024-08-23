import 'package:flutter/material.dart';

class CategoryModel {
  String imagePath;
  String category;
  Widget navigateTo;

  CategoryModel({
    required this.category,
    required this.imagePath,
    required this.navigateTo,
  });
}
