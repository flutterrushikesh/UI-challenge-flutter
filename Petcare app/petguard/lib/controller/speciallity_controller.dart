import 'package:get/get.dart';
import 'package:petguard/model/specility_model.dart';

class SpeciallityController extends GetxController {
  List<SpeciallityModel> listOfDoctor = [
    SpeciallityModel(
      drImage: "assets/images/dr anna.png",
      drLocation: "1 km",
      drName: 'Dr. Anna Johanson',
      drRating: "4.8",
      drType: 'Veterinary Behavioral',
      fullImage: "assets/images/anna fullimg.png",
      drAbout:
          "Dr. Anna Johanson is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro... is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...",
      drExperience: "11 years",
      price: "\$250",
    ),
    SpeciallityModel(
      drImage: "assets/images/dr vernon.png",
      drLocation: "1.5 km",
      drName: 'Dr. Vernon Chwe',
      drRating: "4.9",
      drType: 'Veterinary Surgery',
      fullImage: "assets/images/anna fullimg.png",
      drAbout:
          "Dr. Vernon Chwe is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro... is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...",
      drExperience: "14 years",
      price: "\$350",
    ),
  ];
}
