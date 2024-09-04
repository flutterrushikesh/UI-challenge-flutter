import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.16,
      // top: screenHeight * -0.5,
      left: MediaQuery.of(context).size.width * 0.028,
      child: Image.asset('assets/images/card.png'),
    );
  }
}
