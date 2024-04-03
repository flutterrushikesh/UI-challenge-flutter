import 'package:flutter/material.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({super.key});
  @override
  State createState() => _SocialMediaState();
}

class _SocialMediaState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.more),
      ),
    );
  }
}
