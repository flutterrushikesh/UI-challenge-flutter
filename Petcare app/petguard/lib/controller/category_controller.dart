import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petguard/model/category_model.dart';
import 'package:petguard/view/Grooming%20Screen/grooming_screen.dart';
import 'package:petguard/view/Training%20Screen/training_screen.dart';

class CategoryController extends GetxController {
  List<CategoryModel> listOfCategory = [
    CategoryModel(
      category: "Veterinary",
      imagePath: "assets/images/vetrinary.png",
      navigateTo: const Scaffold(),
    ),
    CategoryModel(
      category: "Grooming",
      imagePath: "assets/images/grooming.png",
      navigateTo: const GroomingScreen(),
    ),
    CategoryModel(
      category: "Pet Store",
      imagePath: "assets/images/pet store.png",
      navigateTo: const Scaffold(),
    ),
    CategoryModel(
      category: "Training",
      imagePath: "assets/images/training.png",
      navigateTo: TrainingScreen(),
    )
  ];
}
