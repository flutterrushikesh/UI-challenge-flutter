import 'package:get/get.dart';
import 'package:petguard/model/category_model.dart';

class CategoryController extends GetxController {
  List<CategoryModel> listOfCategory = [
    CategoryModel(
      category: "Veterinary",
      imagePath: "assets/images/vetrinary.png",
    ),
    CategoryModel(
      category: "Grooming",
      imagePath: "assets/images/grooming.png",
    ),
    CategoryModel(
      category: "Pet Store",
      imagePath: "assets/images/pet store.png",
    ),
    CategoryModel(
      category: "Training",
      imagePath: "assets/images/training.png",
    )
  ];
}
