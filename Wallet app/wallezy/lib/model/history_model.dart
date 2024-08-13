import 'package:wallezy/model/history_detail_model.dart';

class HistoryModel {
  String day;
  List<HistoryDetailsModel> listOfHistory = [];

  HistoryModel({required this.day, required this.listOfHistory});
}
