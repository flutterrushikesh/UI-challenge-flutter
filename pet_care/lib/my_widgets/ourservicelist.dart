import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OurServiceList extends StatefulWidget {
  final String serviceimgpath;
  final String serviceName;
  const OurServiceList(
      {required this.serviceName, required this.serviceimgpath, super.key});

  @override
  State createState() => _OurServiceListState();
}

class _OurServiceListState extends State<OurServiceList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(widget.serviceimgpath),
        const SizedBox(
          height: 10,
        ),
        Text(
          widget.serviceName,
          style: GoogleFonts.poppins(
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
