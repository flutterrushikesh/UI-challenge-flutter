import 'package:transyte/Model/transaction_history_model.dart';

class TransactionHistoryController {
  List<TransactionHistoryModel> listOfHistory = [
    TransactionHistoryModel(
      amount: "\$220,98",
      date: "17 Nov",
      description: "Laptop Acer aspire 5",
      icon: 'assets/icon/Camera.png',
      transactionName: "Equipment",
    ),
    TransactionHistoryModel(
      amount: "\$160,98",
      date: "17 Nov",
      description: "Game COD",
      icon: 'assets/icon/Game.png',
      transactionName: "Entertaiment",
    ),
    TransactionHistoryModel(
      amount: "\$120,98",
      date: "14 Nov",
      description: "Subscription Netflix",
      icon: 'assets/icon/Play.png',
      transactionName: "Streaming",
    ),
    TransactionHistoryModel(
      amount: "\$20,98",
      date: "13 Nov",
      description: "Go food",
      icon: 'assets/icon/reserve.png',
      transactionName: "Food",
    ),
    TransactionHistoryModel(
      amount: "\$720,98",
      date: "12 Nov",
      description: "Plaza Mall",
      icon: 'assets/icon/Buy.png',
      transactionName: "Shopping",
    ),
    TransactionHistoryModel(
      amount: "\$520,98",
      date: "12 Nov",
      description: "Jogja, Indonesia",
      icon: 'assets/icon/Location.png',
      transactionName: "Travel",
    ),
  ];
}
