import 'package:transyte/Model/verification_status_model.dart';

class VerificationStatusController {
  List<VerificationStatusModel> listOfdata = [
    VerificationStatusModel(
      discription: 'complete your name and profile photo to complete the data',
      iconPath: 'assets/icon/person.png',
      title: "Personal information",
    ),
    VerificationStatusModel(
      discription:
          'Please confirm your email for further data security and completeness',
      iconPath: 'assets/icon/sms.png',
      title: "Confirm Email",
    ),
  ];
}
