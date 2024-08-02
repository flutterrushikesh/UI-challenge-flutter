import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renture/controller/most_popular_controller.dart';
import 'package:renture/controller/nearby_location_controller.dart';
import 'package:renture/view/get_started_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) {
            return MostPopularController();
          },
        ),
        Provider(create: (context) {
          return NearbyLocationController();
        })
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GetStartedScreen(),
      ),
    );
  }
}
