import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transyte/View/Splash%20Screen/Widgets/intro_container.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 96, 72, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                'assets/images/ornament.svg',
                fit: BoxFit.cover,
              ),
              Positioned(
                top: screenHeight * 0.04,
                left: screenWidth * 0.099,
                child: Image.asset(
                  'assets/images/IMage wallet.png',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),

          ///INTRO CONTAINER IT SHOWS THE INTRODUCTION OF APPLICATION.
          const IntroContainer(),
        ],
      ),
    );
  }
}
