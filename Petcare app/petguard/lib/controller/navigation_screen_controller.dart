import 'package:flutter/material.dart';
import 'package:petguard/view/Dashboard Screen/dash_board_screen.dart';
import 'package:petguard/view/Shop Screen.dart/shop_screen.dart';
import 'package:petguard/view/Veterinary Screen/veterinary_scree.dart';

class NavigationScreensController {
  final List<Widget> screenList = [
    const DashBoardScreen(),
    const VeterinaryScreen(),
    ShopScreen(),
    const Scaffold(),
    const Scaffold(),
  ];
}
