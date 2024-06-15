import 'package:flutter/material.dart';

// import 'package:bicycle_app/view/'
import 'package:google_fonts/google_fonts.dart';
import 'package:bicycle_app/view/home_sceen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Shopping Cart",
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
            top: 300,
            child: Image.asset('assets/images/blackcurv.png'),
          ),
          Positioned(
            top: 20,
            left: 260,
            child: Image.asset(
              'assets/images/EXTREME.png',
              color: const Color.fromRGBO(255, 255, 255, 0.2),
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(53, 63, 84, 0.6),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(53, 63, 84, 0.6),
                            Color.fromRGBO(34, 40, 52, 0),
                          ],
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 10,
                            spreadRadius: 1,
                            offset: Offset(5, 6),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/images/gtbike.png',
                        height: 92,
                        width: 100,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'GT Bike',
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              '\$2,599.99',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(55, 182, 233, 1),
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 4,
                                right: 4,
                                top: 6,
                                bottom: 6,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(30, 30, 30, 0.8),
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                    blurRadius: 3,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromRGBO(55, 182, 233, 1),
                                          Color.fromRGBO(75, 76, 237, 1),
                                        ])),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '1',
                                    style: GoogleFonts.allertaStencil(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromRGBO(255, 255, 255, 0.8),
                                          Color.fromRGBO(195, 195, 195, 0.2),
                                        ])),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(53, 63, 84, 0.6),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(53, 63, 84, 0.6),
                            Color.fromRGBO(34, 40, 52, 0),
                          ],
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 10,
                            spreadRadius: 1,
                            offset: Offset(5, 6),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/images/helmet2.png',
                        color: Colors.white,
                        // height: 92,
                        // width: 100,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Helmet',
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              '\$125.99',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(55, 182, 233, 1),
                              ),
                            ),
                            const SizedBox(
                              width: 70,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 4,
                                right: 4,
                                top: 6,
                                bottom: 6,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(30, 30, 30, 0.8),
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                    blurRadius: 3,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromRGBO(55, 182, 233, 1),
                                          Color.fromRGBO(75, 76, 237, 1),
                                        ])),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '1',
                                    style: GoogleFonts.allertaStencil(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromRGBO(255, 255, 255, 0.8),
                                          Color.fromRGBO(195, 195, 195, 0.2),
                                        ])),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(53, 63, 84, 0.6),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(53, 63, 84, 0.6),
                            Color.fromRGBO(34, 40, 52, 0),
                          ],
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 10,
                            spreadRadius: 1,
                            offset: Offset(5, 6),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/images/bottle.png',
                        height: 92,
                        width: 100,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bottle',
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              '\$115.99',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(55, 182, 233, 1),
                              ),
                            ),
                            const SizedBox(
                              width: 70,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 4,
                                right: 4,
                                top: 6,
                                bottom: 6,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(30, 30, 30, 0.8),
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                    blurRadius: 3,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromRGBO(55, 182, 233, 1),
                                          Color.fromRGBO(75, 76, 237, 1),
                                        ])),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '1',
                                    style: GoogleFonts.allertaStencil(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromRGBO(255, 255, 255, 0.8),
                                          Color.fromRGBO(195, 195, 195, 0.2),
                                        ])),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Your Bag Qualifies for Free Shipping',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 350,
                  padding: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(36, 44, 59, 0.6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '6Affg5',
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(142, 142, 142, 1),
                        ),
                      ),
                      Container(
                        height: 44,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(55, 182, 233, 1),
                              Color.fromRGBO(75, 76, 237, 1),
                            ],
                          ),
                        ),
                        child: Text(
                          'Apply',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Subtotal',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 135,
                    ),
                    Text(
                      '\$2,841.99',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(55, 182, 233, 1),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Delivery Fee',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 150,
                    ),
                    Text(
                      '\$00',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(55, 182, 233, 1),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Discount',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 180,
                    ),
                    Text(
                      '30%',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(55, 182, 233, 1),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Total',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 170,
                    ),
                    Text(
                      '\$1,989.99',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(55, 182, 233, 1),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
      bottomSheet: Container(
        height: 50,
        // alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(30, 30, 30, 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              'Check Out',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
