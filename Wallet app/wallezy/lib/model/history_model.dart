class HistoryModel {
  String imagePath;
  String name;
  String day;
  String time;
  String amount;

  HistoryModel(
      {required this.amount,
      required this.day,
      required this.imagePath,
      required this.name,
      required this.time});
}
