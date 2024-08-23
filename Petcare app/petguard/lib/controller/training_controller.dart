import 'package:get/get.dart';
import 'package:petguard/model/training_model.dart';

class TrainingController extends GetxController {
  List<TrainingModel> listOfTrainingVideo = [
    TrainingModel(
      labelPath: "assets/images/obedience.png",
      ratingAndView: '4.9 (335)',
      title: "Obedience Courses",
      videoBy: 'By Jhon Smith',
    ),
    TrainingModel(
      labelPath: "assets/images/Speciality Classes & Workshop.png",
      ratingAndView: "5.0 (500)",
      title: "Specialty Classes & Workshops",
      videoBy: 'By Duke Fuzzington',
    ),
    TrainingModel(
      labelPath: 'assets/images/Pexels Photo by Blue Bird.png',
      ratingAndView: "5.0 (500)",
      title: 'Puppy Kinderganten and Playgroups',
      videoBy: 'By Sir Fluffington',
    ),
    TrainingModel(
      labelPath: "assets/images/Canine Good Citizen Test.png",
      ratingAndView: "4.8 (220)",
      title: 'Canine Good Citizen Test',
      videoBy: 'By Baron Fuzzypaws',
    ),
    TrainingModel(
      labelPath: 'assets/images/Olya Harytovich.png',
      ratingAndView: "5.0 (500)",
      title: 'Theraphy Dogs',
      videoBy: 'By Duke Fuzzington',
    )
  ];
}
