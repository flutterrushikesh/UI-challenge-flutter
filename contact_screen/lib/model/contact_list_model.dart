class ContactModel {
  final String profilePath;
  final String name;
  final String contactNo;
  final String inOutImgPath;
  final String time;

  const ContactModel(
      {required this.contactNo,
      required this.name,
      required this.inOutImgPath,
      required this.profilePath,
      required this.time});
}
