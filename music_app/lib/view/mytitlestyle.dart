import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SongRelease extends StatefulWidget {
  final String releaseyear;
  const SongRelease({required this.releaseyear, super.key});

  @override
  State<SongRelease> createState() => _SongReleaseState();
}

class _SongReleaseState extends State<SongRelease> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.releaseyear,
      style: GoogleFonts.inter(
        fontSize: 12,
        color: const Color.fromRGBO(132, 125, 125, 1),
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
