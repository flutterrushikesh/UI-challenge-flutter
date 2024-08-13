import 'package:get/get.dart';
import 'package:wallezy/model/history_detail_model.dart';
import 'package:wallezy/model/history_model.dart';

class HistoryController extends GetxController {
  List<HistoryModel> listOfHistory = [
    HistoryModel(
      day: "Today",
      listOfHistory: [
        HistoryDetailsModel(
          date: "Today  12:32",
          iconPath: 'assets/logo/Wallmart.png',
          title: "Wallmart",
          amount: "-\$35.23",
          companyName: "Retailer corporation",
          transactionId: 221458974565217,
        ),
        HistoryDetailsModel(
          date: "Yesterday  14:32",
          transactionId: 785412547967445,
          iconPath: 'assets/logo/Topup.png',
          title: "Top up",
          amount: "-\$432.23",
          companyName: "UPI payment",
        ),
        HistoryDetailsModel(
          date: "Dec 24   13:20",
          transactionId: 4565875441258147,
          iconPath: 'assets/logo/Netflix.png',
          title: "Netflix",
          amount: "-\$13.00",
          companyName: "Entertainment",
        ),
      ],
    ),
    HistoryModel(
      day: "Yesterday",
      listOfHistory: [
        HistoryDetailsModel(
          date: "Today 12:32",
          transactionId: 25639745230124,
          iconPath: 'assets/logo/Amazon.png',
          title: "Amazon",
          amount: "-\$35.23",
          companyName: "Shopping",
        ),
        HistoryDetailsModel(
          date: "Yesterday 14:32 ",
          transactionId: 564201367412589,
          iconPath: 'assets/logo/nike.png',
          title: "Nike",
          amount: "-\$432.23",
          companyName: "Fasion",
        ),
        HistoryDetailsModel(
          date: "Dec 24 13:20",
          transactionId: 121575894536970,
          iconPath: 'assets/logo/The home depot.png',
          title: "The Home Depot",
          amount: "-\$13.00",
          companyName: "Home applience",
        ),
      ],
    ),
    HistoryModel(
      day: "Today",
      listOfHistory: [
        HistoryDetailsModel(
          date: "Today  12:32",
          iconPath: 'assets/logo/Wallmart.png',
          title: "Wallmart",
          amount: "-\$35.23",
          companyName: "Retailer corporation",
          transactionId: 221458974565217,
        ),
        HistoryDetailsModel(
          date: "Yesterday  14:32",
          transactionId: 785412547967445,
          iconPath: 'assets/logo/Topup.png',
          title: "Top up",
          amount: "-\$432.23",
          companyName: "UPI payment",
        ),
        HistoryDetailsModel(
          date: "Dec 24   13:20",
          transactionId: 4565875441258147,
          iconPath: 'assets/logo/Netflix.png',
          title: "Netflix",
          amount: "-\$13.00",
          companyName: "Entertainment",
        ),
      ],
    ),
  ];
}
