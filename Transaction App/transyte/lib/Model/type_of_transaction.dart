import 'package:transyte/Model/transaction_date_model.dart';

class TypeOfNotification {
  String typeOfNotification;
  List<TransactionDateModel> listOfNotification;

  TypeOfNotification(
      {required this.typeOfNotification, required this.listOfNotification});
}
