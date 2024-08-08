import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallezy/view/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      return Get.off(
        () => const LoginScreen(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(87, 50, 191, 1),
      body: Center(
        child: Image.asset('assets/logo/splash logo.png'),
      ),
    );
  }
}
