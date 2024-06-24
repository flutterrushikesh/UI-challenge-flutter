import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Iconsax.menu4),
        actions: const [
          Icon(Iconsax.profile_circle),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style: GoogleFonts.imprima(
                fontSize: 36,
              ),
            ),
            Text(
              'Best trendy collection!',
              style: GoogleFonts.imprima(
                fontSize: 18,
                color: const Color.fromRGBO(121, 119, 128, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
