import 'package:transyte/Model/short_cuts_model.dart';

class ShortCutsController {
  List<ShortCutsModel> listOfMenu = [
    ShortCutsModel(
      icon: 'assets/icon/Arrow Right.png',
      menuName: "Send Money",
    ),
    ShortCutsModel(
      icon: "assets/icon/top up.png",
      menuName: "Top-up Wallet",
    ),
    ShortCutsModel(
      icon: "assets/icon/Wallet.png",
      menuName: "Bill Payments",
    ),
    ShortCutsModel(
      icon: "assets/icon/Scan.png",
      menuName: "Code qr",
    ),
  ];
}
