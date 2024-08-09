import 'package:get/get.dart';
import 'package:wallezy/model/latest_transaction_model.dart';

class LatestTransactionController extends GetxController {
  List<LatestTransactionModel> list = [
    LatestTransactionModel(
      date: "Today",
      iconPath: 'assets/logo/Wallmart.png',
      nameOfTransactionl: "Wallmart",
      time: "12:32",
      amount: "-\$35.23",
    )
  ];
}
