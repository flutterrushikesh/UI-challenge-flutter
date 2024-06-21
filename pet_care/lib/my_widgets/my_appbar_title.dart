import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBarText extends StatefulWidget {
  final String appbarTitle;
  const MyAppBarText({required this.appbarTitle, super.key});

  @override
  State<MyAppBarText> createState() => _MyAppBarTextState();
}

class _MyAppBarTextState extends State<MyAppBarText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.appbarTitle,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }
}
