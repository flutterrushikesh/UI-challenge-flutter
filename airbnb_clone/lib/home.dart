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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 600,
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 45),
                  SearchBar(
                    hintText: "Where are you going",
                    onTap: () {},
                  ),
                  const SizedBox(height: 40),
                  Image.asset(
                    './assets/images/farmhouse.jpeg',
                    height: 300,
                    width: 400,
                  ),
                  // const SizedBox(height: 50),
                  Container(
                    margin: const EdgeInsets.only(left: 58),
                    child: const Text(
                      "Made Possible \nby host",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                      // textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
            ),
            const Text("Explore nearby")
          ],
        ),
      ),
    );
  }
}
