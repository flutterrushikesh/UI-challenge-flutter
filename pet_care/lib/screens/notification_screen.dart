import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care/screens/dashboard_screen.dart';
import 'package:pet_care/my_widgets/mybackbutton.dart';
import 'package:pet_care/my_widgets/mynotification_card.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      appBar: AppBar(
        leading: const MyBackButton(
          navigateTo: DashboardScreen(),
        ),
        title: Text(
          'Notification',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              'Today',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const MyNotification(),
            const SizedBox(height: 15),
            Text(
              '25 September',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const MyNotification(),
            const SizedBox(
              height: 15,
            ),
            Text(
              '15 September',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const MyNotification(),
            const SizedBox(height: 15),
            Text(
              '5 September',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const MyNotification(),
          ],
        ),
      ),
    );
  }
}
