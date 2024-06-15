import 'package:bicycle_app/view/home_sceen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class GTBikeDetailsScreen extends StatefulWidget {
  const GTBikeDetailsScreen({super.key});

  @override
  State<GTBikeDetailsScreen> createState() => _GTBikeDetailsScreenState();
}

class _GTBikeDetailsScreenState extends State<GTBikeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GT Bike",
          style: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(55, 182, 233, 1),
                  Color.fromRGBO(73, 84, 237, 1),
                ],
                transform: GradientRotation(1),
              ),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop(
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomeSceen();
                    },
                  ),
                );
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 280,
            child: Image.asset('assets/images/curve.png'),
          ),
          Positioned(
            left: 260,
            child: Image.asset(
              'assets/images/EXTREME.png',
              color: const Color.fromRGBO(255, 255, 255, 0.3),
            ),
          ),
          Positioned(
            top: 60,
            child: Image.asset(
              'assets/images/gtbikebig.png',
              height: 380,
              width: 380,
            ),
          ),
          Positioned(
            top: 470,
            child: Container(
              width: 400,
              height: 500,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(53, 63, 84, 0.8),
                  Color.fromRGBO(34, 40, 52, 0.8),
                ]),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                border: Border.all(
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: const Color.fromRGBO(255, 255, 255, 0.2),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          side: MaterialStatePropertyAll(
                            BorderSide(
                              color: Color.fromRGBO(255, 255, 255, 0.5),
                            ),
                          ),
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(36, 44, 59, 1),
                          ),
                        ),
                        child: Text(
                          "Description",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 85,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          side: MaterialStatePropertyAll(
                            BorderSide(
                              color: Color.fromRGBO(255, 255, 255, 0.5),
                            ),
                          ),
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(72, 92, 236, 1),
                          ),
                        ),
                        child: Text(
                          "Specification",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet. Ab tenetur molestias vel rerum cupiditate qui dolores consequatur et asperiores sunt ea magnam dolorem qui consectetur omnis. Ut error voluptas qui tempora provident aut necessitatibus voluptas rem eveniet nulla ut accusantium dignissimos aut facilis perspiciatis a natus quia.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(14),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(36, 44, 59, 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "\$2,599.99",
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Container(
              height: 50,
              width: 180,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(55, 182, 233, 1),
                    Color.fromRGBO(75, 76, 237, 1),
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Text(
                'Buy Now',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: NavigationBar(
      //   backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
      //   shadowColor: const Color.fromRGBO(0, 0, 0, 0.4),
      //   destinations: [
      //
      //
      //   ],
      // ),
      backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
    );
  }
}
