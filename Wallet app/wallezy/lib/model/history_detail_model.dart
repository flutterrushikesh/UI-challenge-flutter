class HistoryDetailsModel {
  String iconPath;
  String title;
  String date;
  String companyName;
  String amount;

  int transactionId;

  HistoryDetailsModel({
    required this.transactionId,
    required this.companyName,
    required this.date,
    required this.iconPath,
    required this.title,
    required this.amount,
  });
}
