import 'package:flutter/material.dart';
import 'package:transyte/Model/transaction_date_model.dart';
import 'package:transyte/Model/type_of_transaction.dart';

class NotificationController extends ChangeNotifier {
  List<TypeOfNotification> listOfTransactions = [
    TypeOfNotification(
      typeOfNotification: "Transaction",
      listOfNotification: [
        TransactionDateModel(
          date: "September 4",
          notification:
              "successful transaction to ojaman, \nview and download the receipt",
          iconPath: 'assets/icon/receipt icon.png',
        ),
        TransactionDateModel(
          date: "September 3",
          notification:
              "successful transaction to ojaman, \nview and download the receipt",
          iconPath: 'assets/icon/receipt icon.png',
        ),
        TransactionDateModel(
          date: "September 1",
          notification:
              "successful transaction to ojaman, \nview and download the receipt",
          iconPath: 'assets/icon/receipt icon.png',
        ),
      ],
    ),
  ];
}
