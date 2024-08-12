import 'package:get/get.dart';
import 'package:wallezy/model/more_model.dart';

class MoreController extends GetxController {
  List<MoreModel> listOfMore = [
    MoreModel(
      iconName: "Pay Bills",
      iconPath: "assets/icon/paybilld.png",
    ),
    MoreModel(
      iconName: "Transfer",
      iconPath: "assets/icon/transfer.png",
    ),
    MoreModel(
      iconName: "Topup",
      iconPath: "assets/icon/topup.png",
    ),
    MoreModel(
      iconName: "Withdraw",
      iconPath: "assets/icon/withdraw.png",
    ),
    MoreModel(
      iconName: "Analytics",
      iconPath: "assets/icon/anylytics.png",
    ),
    MoreModel(
      iconName: "Help",
      iconPath: "assets/icon/help.png",
    ),
    MoreModel(
      iconName: "Contact us",
      iconPath: "assets/icon/contact.png",
    ),
    MoreModel(
      iconName: "About",
      iconPath: "assets/icon/about.png",
    )
  ];
}
