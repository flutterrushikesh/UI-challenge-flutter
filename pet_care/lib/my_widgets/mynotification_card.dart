import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MyNotification extends StatefulWidget {
  // final String iconName;
  // final String description;
  const MyNotification({
    super.key,
    // required this.description,
    // required this.iconName,
  });

  @override
  State<MyNotification> createState() => _MyNotificationState();
}

class _MyNotificationState extends State<MyNotification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(22, 34, 51, 0.08),
            blurRadius: 16,
            offset: Offset(0, 8),
            spreadRadius: -4,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(252, 219, 193, 1),
                ),
                child: const Icon(
                  Icons.shopping_bag,
                  color: Color.fromRGBO(245, 146, 69, 1),
                ),
              ),
              Expanded(
                child: Text(
                  'Your checkout is successfull, product is on tne way',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color.fromRGBO(31, 32, 41, 1),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(252, 219, 193, 1),
                ),
                child: const Icon(
                  Icons.check,
                  color: Color.fromRGBO(245, 146, 69, 1),
                ),
              ),
              Expanded(
                child: Text(
                  'Appointment request accepted',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color.fromRGBO(31, 32, 41, 1),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(252, 219, 193, 1),
                ),
                child: const Icon(
                  Icons.favorite,
                  color: Color.fromRGBO(245, 146, 69, 1),
                ),
              ),
              Expanded(
                child: Text(
                  'Vaccinate your pet timely',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color.fromRGBO(31, 32, 41, 1),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
