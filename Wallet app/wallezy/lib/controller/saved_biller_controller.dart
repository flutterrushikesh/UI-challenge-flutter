import 'package:get/get.dart';
import 'package:wallezy/model/saved_biller_model.dart';

class SavedBillerController extends GetxController {
  List<SavedBillerModel> listOfBillers = [
    SavedBillerModel(
      due: "\$132.32",
      dueDate: "December 29, 2022 -  12:32",
      iconPath: 'assets/icon/electricity.png',
      registrationNumber: 23010412432431,
      title: "Electricity",
      type: "Utility",
    ),
    SavedBillerModel(
      due: "\$23.32",
      dueDate: "January 02, 2023 -  05:23",
      iconPath: 'assets/icon/water.png',
      registrationNumber: 102565451473621,
      title: "Water",
      type: "Utility",
    ),
    SavedBillerModel(
      due: "\$30.32",
      dueDate: "January 10, 2023 -  09:05",
      iconPath: 'assets/icon/recharge.png',
      registrationNumber: 9878523685,
      title: "Phone",
      type: "Utility",
    )
  ];
}
