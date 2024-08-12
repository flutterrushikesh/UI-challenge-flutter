import 'package:get/get.dart';
import 'package:wallezy/model/latest_transaction_model.dart';

class LatestTransactionController extends GetxController {
  List<LatestTransactionModel> list = [
    LatestTransactionModel(
      date: "Today",
      iconPath: 'assets/logo/Wallmart.png',
      nameOfTransactionl: "Wallmart",
      time: "  12:32",
      amount: "-\$35.23",
    ),
    LatestTransactionModel(
      date: "Yesterday",
      iconPath: 'assets/logo/Topup.png',
      nameOfTransactionl: "Top up",
      time: "  14:32",
      amount: "-\$432.23",
    ),
    LatestTransactionModel(
      date: "Dec 24",
      iconPath: 'assets/logo/Netflix.png',
      nameOfTransactionl: "Netflix",
      time: "  13:20",
      amount: "-\$13.00",
    ),
    LatestTransactionModel(
      date: "Today",
      iconPath: 'assets/logo/Wallmart.png',
      nameOfTransactionl: "Wallmart",
      time: "  12:32",
      amount: "-\$35.23",
    ),
  ];
}
