import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care/my_widgets/my_searchbox.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State createState() => _ShopScreenState();
}

class _ShopScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 32, bottom: 32, left: 16, right: 16),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32)),
                color: Color.fromRGBO(245, 146, 69, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        'Hello Sarah',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Find your lovable Pets',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.shopping_cart_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 90,
              left: 50,
              child: SizedBox(
                width: 280,
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Search Something Here...",
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                    ),
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Color.fromRGBO(245, 146, 69, 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 2,
                        color: Color.fromRGBO(250, 200, 162, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
