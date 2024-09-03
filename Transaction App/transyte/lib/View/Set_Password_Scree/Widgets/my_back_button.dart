import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ///nNAVIGATE TO PREVIOUS SCREEN I.E HOMESCREEN.
        Navigator.pop(context);
      },
      child: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.01,
          bottom: MediaQuery.of(context).size.height * 0.01,
          right: MediaQuery.of(context).size.width * 0.01,
          left: MediaQuery.of(context).size.width * 0.03,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(32, 14, 50, 1),
        ),
        child: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
    );
  }
}
