import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vibe_stream/controller/music_list_controller.dart';
import 'package:vibe_stream/controller/popular_single_controller.dart';

import 'package:vibe_stream/view/home_screen.dart';

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
            return MusicListController();
          },
        ),
        Provider(
          create: (context) {
            return PopularSingleController();
          },
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
