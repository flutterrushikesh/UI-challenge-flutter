import 'package:get/get.dart';
import 'package:petguard/model/service_model.dart';

class ServiceController extends GetxController {
  List<ServiceModel> listOfService = [
    ServiceModel(
      iconPath: "assets/images/vaccination.png",
      serviceName: "Vaccination",
    ),
    ServiceModel(
      iconPath: "assets/images/operation.png",
      serviceName: "Opration",
    ),
    ServiceModel(
      iconPath: "assets/images/beha.png",
      serviceName: "Behaviorals",
    ),
    ServiceModel(
      iconPath: "assets/images/dentistry.png",
      serviceName: "Dentisry",
    ),
  ];
}
