import 'package:get/get.dart';
import 'package:petguard/model/weekdays_model.dart';

class WeekdaysController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List<WeekdaysModel> weekday = [
    WeekdaysModel(day: "Fri"),
    WeekdaysModel(day: "Sat"),
    WeekdaysModel(day: "Sun"),
    WeekdaysModel(day: "Mon"),
    WeekdaysModel(day: "Tue"),
  ];

  void selectDate({required int index}) {
    selectedIndex.value = index;
  }
}
