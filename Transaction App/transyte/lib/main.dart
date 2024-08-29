import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/phone_number_controller.dart';
import 'package:transyte/View/Splash%20Screen/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PhoneNumberController(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
