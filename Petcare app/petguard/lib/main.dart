import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petguard/view/splash_screen.dart';

void main() {
  ///ENTRY POINT OF APPLICATION.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
