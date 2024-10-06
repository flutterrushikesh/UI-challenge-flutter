import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallezy/view/login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      return Get.off(
        () => const LoginScreen(),
      );
    });
    return Scaffold(
      backgroundColor: const Color.fromRGBO(87, 50, 191, 1),
      body: Center(
        child: Image.asset('assets/logo/splash logo.png'),
      ),
    );
  }
}
