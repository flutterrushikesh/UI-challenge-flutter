import 'package:get/get.dart';
import 'package:petguard/model/our_service_model.dart';

class OurServiceController extends GetxController {
  List<OurServiceModel> listOfServices = [
    OurServiceModel(
      imagePath: 'assets/images/bath.png',
      serviceName: "Bathing & Drying",
    ),
    OurServiceModel(
      imagePath: 'assets/images/hair trim.png',
      serviceName: "Hair Triming",
    ),
    OurServiceModel(
      imagePath: 'assets/images/nail trim.png',
      serviceName: "Nail Triming",
    ),
    OurServiceModel(
      imagePath: 'assets/images/ear clean.png',
      serviceName: "Ear Cleaning",
    ),
    OurServiceModel(
      imagePath: 'assets/images/teeath_brushing.png',
      serviceName: "Teeth Brushing",
    ),
    OurServiceModel(
      imagePath: "assets/images/flea treatment.png",
      serviceName: "Flea Treatment",
    ),
  ];
}
