import 'package:get/get.dart';
import 'package:petguard/model/available_time_model.dart';

class AvaibleTimeController extends GetxController {
  RxInt selectedIndex = 0.obs;
  List<AvailableTimeModel> avaibleTime = [
    AvailableTimeModel(time: "09:00"),
    AvailableTimeModel(time: "15:00"),
    AvailableTimeModel(time: "19:00"),
  ];

  void selectTime({required int index}) {
    selectedIndex.value = index;
  }
}
