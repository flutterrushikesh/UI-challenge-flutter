import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallezy/model/more_screen_model.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  List<MoreScreenModel> modelObj = [
    MoreScreenModel(
        iconName: "Pay Bills", iconPath: 'assets/logo/paybills.png'),
    MoreScreenModel(iconName: "Transfer", iconPath: 'assets/logo/transfer.png')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'More',
          style: GoogleFonts.sora(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Row(
          children: [],
        );
      }),
    );
  }
}
