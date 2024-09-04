import 'package:flutter/material.dart';

class MapStack extends StatelessWidget {
  const MapStack({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            'assets/images/maps.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: screenHeight * 0.2,
          left: screenWidth * 0.25,
          child: Image.asset(
            'assets/images/group point.png',
          ),
        ),
      ],
    );
  }
}
