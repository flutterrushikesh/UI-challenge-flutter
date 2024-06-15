import 'package:bicycle_app/view/mycontainerlist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bicycle_app/view/gtbikedetail_screen.dart';

class HomeSceen extends StatefulWidget {
  const HomeSceen({super.key});

  @override
  State<HomeSceen> createState() => _HomeSceenState();
}

class _HomeSceenState extends State<HomeSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 30,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Text(
                    "Choose your \nBicycle",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 120,
                  ),
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
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 360,
            child: Image.asset('assets/images/curve.png'),
          ),
          Positioned(
            top: 140,
            child: Container(
              height: 250,
              width: 365,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    offset: Offset(4, 7),
                    blurRadius: 10,
                  ),
                ],
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(53, 63, 84, 0.6),
                    Color.fromRGBO(34, 40, 52, 0.6)
                  ],
                ),
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/cardcycle.png'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'EXTREME',
                        style: GoogleFonts.allertaStencil(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        "30% off",
                        style: GoogleFonts.allertaStencil(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 405,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 50,
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
                    child: Image.asset('assets/images/cycleicon.png'),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  const MyContainer(
                    imagePath: 'assets/images/helmeticon.png',
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  const MyContainer(
                    imagePath: 'assets/images/glowsicon.png',
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  const MyContainer(
                    imagePath: 'assets/images/bottleicon.png',
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 490,
            left: 15,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(53, 63, 84, 0.6),
                              Color.fromRGBO(34, 40, 52, 0.6),
                            ],
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(255, 255, 255, 0.2),
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/kiross.png'),
                            Text(
                              "Road Bike",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(195, 195, 195, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Kiross',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              '\$1,599.99',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(195, 195, 195, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(top: 10, right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(53, 63, 84, 0.6),
                              Color.fromRGBO(34, 40, 52, 0.6),
                            ],
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(255, 255, 255, 0.2),
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/scott.png'),
                            Text(
                              "Road Bike",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(195, 195, 195, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Scott',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              '\$2,399.99',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(195, 195, 195, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const GTBikeDetailsScreen(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(53, 63, 84, 0.6),
                                Color.fromRGBO(34, 40, 52, 0.6),
                              ],
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(255, 255, 255, 0.2),
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/gtbike.png'),
                              Text(
                                "Road Bike",
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(195, 195, 195, 1),
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                'GT Bike',
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                '\$2,599.99',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(195, 195, 195, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(top: 10, right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(53, 63, 84, 0.6),
                              Color.fromRGBO(34, 40, 52, 0.6),
                            ],
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(255, 255, 255, 0.2),
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/ross.png'),
                            Text(
                              "Road Bike",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(195, 195, 195, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Ross',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              '\$1,999.99',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(195, 195, 195, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
    );
  }
}
