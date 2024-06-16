import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class DoctorList extends StatefulWidget {
  final String doctorImgpath;
  final String doctorName;
  final String doctorType;
  final String doctorRating;
  final String doctorLocationFrom;
  const DoctorList(
      {super.key,
      required this.doctorImgpath,
      required this.doctorLocationFrom,
      required this.doctorName,
      required this.doctorRating,
      required this.doctorType});

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(22, 34, 51, 0.08),
            offset: Offset(0, 8),
            spreadRadius: -4,
            blurRadius: 16,
          )
        ],
      ),
      child: Row(
        children: [
          Image.asset(widget.doctorImgpath),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.doctorName,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                widget.doctorType,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: const Color.fromRGBO(194, 195, 204, 1),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  const Icon(
                    Iconsax.star,
                    color: Color.fromRGBO(248, 182, 131, 1),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.doctorRating,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Icon(
                    Iconsax.location,
                    color: Color.fromRGBO(248, 182, 131, 1),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.doctorLocationFrom,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
