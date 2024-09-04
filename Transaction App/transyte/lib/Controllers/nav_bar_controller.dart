import 'package:flutter/material.dart';
import 'package:transyte/Model/nav_bar_model.dart';
import 'package:transyte/View/Card_Screen/card_screen.dart';
import 'package:transyte/View/Graph_Screen/graph_screen.dart';

import 'package:transyte/View/Home_Screen/home_screen.dart';
import 'package:transyte/View/Notification_Screen/notification_screen.dart';
import 'package:transyte/View/scan_qr_screen.dart/scan_qr_screen.dart';

class NavBarController {
  List<NavBarModel> items = [
    NavBarModel(
        iconPath: "assets/icon/Home.png",
        activeIcon: "assets/icon/activeHome.png"),
    NavBarModel(
        iconPath: "assets/icon/Graph.png",
        activeIcon: "assets/icon/active Graph.png"),
    NavBarModel(
      iconPath: 'assets/icon/white scan.png',
      activeIcon: 'assets/icon/white scan.png',
    ),
    NavBarModel(
      iconPath: "assets/icon/Wallet.png",
      activeIcon: 'assets/icon/active Wallet.png',
    ),
    NavBarModel(
        iconPath: "assets/icon/Notification.png",
        activeIcon: "assets/icon/active Notification.png"),
  ];

  List<Widget> screenList = [
    const HomeScreen(),
    const GraphScreen(),
    const ScanQrScreen(),
    const CardScreen(),
    const NotificationScreen(),
  ];
}
