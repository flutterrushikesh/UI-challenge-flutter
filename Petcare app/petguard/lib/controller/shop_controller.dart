import 'package:get/get.dart';
import 'package:petguard/model/shop_model.dart';

class ShopController extends GetxController {
  List<ShopModel> listOfItems = [
    ShopModel(
      imagePath: "assets/images/pets.png",
      itemType: "Pets",
    ),
    ShopModel(
      imagePath: 'assets/images/foods.png',
      itemType: "Foods",
    ),
    ShopModel(
      imagePath: 'assets/images/healthy.png',
      itemType: "Healthy",
    ),
    ShopModel(
      imagePath: "assets/images/toys.png",
      itemType: "Toys",
    ),
    ShopModel(
      imagePath: 'assets/images/accessories.png',
      itemType: "Accessories",
    ),
    ShopModel(
      imagePath: 'assets/images/cloths.png',
      itemType: "Clothes",
    ),
  ];
}
