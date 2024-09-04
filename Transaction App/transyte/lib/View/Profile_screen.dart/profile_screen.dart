import 'package:flutter/material.dart';

import 'package:transyte/View/Profile_screen.dart/Widgets/stack_personalinfo.dart';
import 'package:transyte/View/Profile_screen.dart/Widgets/general_setting.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromRGBO(16, 96, 72, 1),
      body: Column(
        children: [
          ///ALL PERSONAL INFO IN THAT WIDGET.
          const StackPersonalInfo(),
          SizedBox(
            height: screenHeight * 0.4,
          ),

          ///GENERAL SETTINGS CONTAINER.
          const GeneralSetting(),
        ],
      ),
    );
  }
}
