import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySongTitle extends StatefulWidget {
  final String mysongTitle;
  const MySongTitle({required this.mysongTitle, super.key});

  @override
  State<MySongTitle> createState() => _MySongTitleState();
}

class _MySongTitleState extends State<MySongTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.mysongTitle,
      style: GoogleFonts.inter(
        fontSize: 12,
        color: const Color.fromRGBO(203, 200, 200, 1),
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
