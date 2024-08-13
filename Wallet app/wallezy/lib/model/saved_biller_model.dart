class SavedBillerModel {
  String iconPath;
  String due;
  String title;
  String dueDate;
  int registrationNumber;
  String type;
  String billerName;

  SavedBillerModel({
    required this.due,
    required this.dueDate,
    required this.iconPath,
    required this.registrationNumber,
    required this.title,
    required this.type,
    required this.billerName,
  });
}
