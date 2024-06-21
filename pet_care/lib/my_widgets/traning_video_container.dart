import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TraningVideoContainer extends StatefulWidget {
  final String videoLablePath;
  final String traningName;
  final String traningBy;
  final String rating;

  const TraningVideoContainer({
    super.key,
    required this.rating,
    required this.traningBy,
    required this.traningName,
    required this.videoLablePath,
  });

  @override
  State<TraningVideoContainer> createState() => _TraningVideoContainerState();
}

class _TraningVideoContainerState extends State<TraningVideoContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            blurRadius: 16,
            color: Color.fromRGBO(22, 34, 51, 0.08),
            spreadRadius: -4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            widget.videoLablePath,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.traningName,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(31, 32, 41, 1),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.traningBy,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color.fromRGBO(31, 32, 41, 1),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star_border_outlined,
                      color: Color.fromRGBO(247, 164, 100, 1),
                    ),
                    Text(
                      widget.rating,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: const Color.fromRGBO(194, 195, 204, 1),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
