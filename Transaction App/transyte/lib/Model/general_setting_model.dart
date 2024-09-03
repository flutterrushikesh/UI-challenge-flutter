class GeneralSettingModel {
  String iconPath;
  String title;
  String description;
  bool isSettingOn;

  GeneralSettingModel(
      {required this.description,
      required this.iconPath,
      required this.isSettingOn,
      required this.title});
}
