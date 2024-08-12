import 'package:get/get.dart';
import 'package:wallezy/model/profile_setting_model.dart';

class ProfileSettingController extends GetxController {
  List<ProfileSettingModel> listOfModel = [
    ProfileSettingModel(
      description: "Abdullah Ghatasheh",
      iconPath: "assets/icon/profile.png",
      title: "Full name",
    ),
    ProfileSettingModel(
      description: "+962 79 890 50 14",
      iconPath: "assets/icon/phone.png",
      title: "Mobile",
    ),
    ProfileSettingModel(
      description: "abdgfx@gmail.com",
      iconPath: "assets/icon/email.png",
      title: "Email",
    ),
  ];
}
