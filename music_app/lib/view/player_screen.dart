import 'package:flutter/material.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State createState() => _PlayerScreen();
}

class _PlayerScreen extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [Image.asset('assets/images/player.png')],
        )
      ],
    ));
  }
}
