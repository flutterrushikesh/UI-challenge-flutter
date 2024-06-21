import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroomingGridView extends StatefulWidget {
  final String groomingImgPath;
  final String groomingName;
  const GroomingGridView({
    required this.groomingImgPath,
    required this.groomingName,
    super.key,
  });

  @override
  State<GroomingGridView> createState() => _GroomingGridViewState();
}

class _GroomingGridViewState extends State<GroomingGridView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(22, 34, 51, 0.08),
            blurRadius: 16,
            spreadRadius: -4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            widget.groomingImgPath,
          ),
          Text(
            widget.groomingName,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
