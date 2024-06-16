import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySearchBox extends StatefulWidget {
  const MySearchBox({super.key});

  @override
  State<MySearchBox> createState() => _MySearchBoxState();
}

class _MySearchBoxState extends State<MySearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 8,
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(250, 200, 162, 1),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text(
            'search',
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: const Color.fromRGBO(194, 195, 204, 1),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.search,
            color: Color.fromRGBO(245, 146, 69, 1),
          ),
        ],
      ),
    );
  }
}
