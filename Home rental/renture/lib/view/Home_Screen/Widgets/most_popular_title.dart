import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MostPopularTitle extends StatelessWidget {
  final String titleName;
  final String seeAll;
  const MostPopularTitle(
      {super.key, required this.seeAll, required this.titleName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleName,
            style: GoogleFonts.poppins(
              fontSize: MediaQuery.of(context).size.width * 0.041,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            seeAll,
            style: GoogleFonts.poppins(
              fontSize: MediaQuery.of(context).size.width * 0.039,
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(32, 169, 247, 1),
            ),
          ),
        ],
      ),
    );
  }
}
