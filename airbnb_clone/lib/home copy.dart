import 'package:flutter/material.dart';

class Airbnb extends StatefulWidget {
  const Airbnb({super.key});
  @override
  State createState() => _AirbnbState();
}

class _AirbnbState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 700,
            color: Colors.black,
            child: Column(
              children: [
                const SizedBox(height: 45),
                SearchBar(
                  hintText: "Where are you going",
                  onTap: () {},
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
