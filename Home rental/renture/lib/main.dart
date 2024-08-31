import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renture/controller/llist_of_features_controller.dart';
import 'package:renture/controller/most_popular_controller.dart';
import 'package:renture/controller/nearby_location_controller.dart';
import 'package:renture/view/Get_Started_Screen/get_started_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          Provider(create: (context) => MostPopularController()),
          Provider(create: (context) => NearbyLocationController()),
          Provider(create: (context) => FeatureController())
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: GetStartedScreen(),
        ),
      );
}
