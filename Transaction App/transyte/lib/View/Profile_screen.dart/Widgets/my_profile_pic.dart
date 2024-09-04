import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class MyProfilePic extends StatelessWidget {
  const MyProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(
        right: screenWidth * 0.02,
      ),
      padding: EdgeInsets.all(screenWidth * 0.015),
      height: screenHeight * 0.05,
      width: screenWidth * 0.156,
      decoration: const BoxDecoration(
        border: GradientBoxBorder(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(250, 250, 250, 0.6),
            Color.fromRGBO(250, 250, 250, 0.1),
          ], begin: Alignment.topCenter),
        ),
        shape: BoxShape.circle,
      ),
      child: Image.asset('assets/images/Image profile.png'),
    );
  }
}
