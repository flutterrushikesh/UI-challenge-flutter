class TransactionHistoryModel {
  String transactionName;
  String date;
  String icon;
  String amount;
  String description;

  TransactionHistoryModel({
    required this.amount,
    required this.date,
    required this.description,
    required this.icon,
    required this.transactionName,
  });
}
