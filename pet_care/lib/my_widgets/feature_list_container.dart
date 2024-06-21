import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorFeatureList extends StatefulWidget {
  final String featureType;
  final String description;
  const DoctorFeatureList(
      {required this.description, required this.featureType, super.key});

  @override
  State<DoctorFeatureList> createState() => _DoctorFeatureListState();
}

class _DoctorFeatureListState extends State<DoctorFeatureList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 110,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.only(
        right: 16,
        left: 16,
        top: 8,
        bottom: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(22, 34, 51, 0.08),
            blurRadius: 25,
            offset: Offset(0, 11),
          ),
          BoxShadow(
            color: Color.fromRGBO(22, 34, 51, 0.08),
            blurRadius: 8,
            spreadRadius: -4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.featureType,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            widget.description,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
        ],
      ),
    );
  }
}
