import 'package:get/get.dart';
import 'package:wallezy/model/frequently_contact_model.dart';

class FrequentlyContactController extends GetxController {
  List<FrequentlyContactModel> listOfContacts = [
    FrequentlyContactModel(
      contactNo: "+1-300-555-0161",
      imgPath: 'assets/images/Profile photo 2.png',
      name: "Ali Ahmed",
    ),
    FrequentlyContactModel(
      contactNo: "+1-300-555-0119",
      imgPath: 'assets/images/steave.png',
      name: "Steve Gates",
    ),
    FrequentlyContactModel(
      contactNo: "+1-202-555-0171",
      imgPath: 'assets/images/ahmed.png',
      name: "Elon Jobs",
    )
  ];
}
