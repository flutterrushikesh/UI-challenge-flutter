import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pet_care/my_widgets/feature_list_container.dart';
import 'package:pet_care/my_widgets/mydate_container.dart';
import 'package:pet_care/screens/veterinary_screen.dart';

class AnnaJohansonDetails extends StatefulWidget {
  const AnnaJohansonDetails({super.key});

  @override
  State<AnnaJohansonDetails> createState() => _AnnaJohansonDetailsState();
}

class _AnnaJohansonDetailsState extends State<AnnaJohansonDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) {
              return const VeterinaryScreen();
            }));
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        title: Text(
          'Veterinary',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset('assets/images/doctorimage.png'),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. Anna Jhonason',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Veterinary Behavioral',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DoctorFeatureList(
                        featureType: 'Experience',
                        description: '11 Year',
                      ),
                      DoctorFeatureList(
                        featureType: 'Price',
                        description: '\$250',
                      ),
                      DoctorFeatureList(
                        featureType: 'Location',
                        description: '2.5 km',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'About',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Dr. Maria Naiis is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        'Available Days',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      const Icon(
                        Icons.calendar_today,
                        color: Color.fromRGBO(245, 146, 69, 1),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'October, 2023',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color.fromRGBO(194, 195, 204, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const MyDateContainer(
                          date: 'Fri, 6',
                        ),
                        const MyDateContainer(
                          date: 'Sat, 7',
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 8, right: 16, left: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color.fromRGBO(245, 146, 69, 1),
                          ),
                          child: Text(
                            'Sun, 8',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const MyDateContainer(
                          date: 'Mon, 9',
                        ),
                        const MyDateContainer(
                          date: 'Tue, 10',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Available Time',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.only(
                            top: 8, bottom: 8, right: 16, left: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromRGBO(245, 146, 69, 1),
                        ),
                        child: Text(
                          '09:00',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const MyDateContainer(date: '15.00'),
                      const MyDateContainer(date: '19.00'),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(252, 219, 193, 1),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Iconsax.map,
                          color: Color.fromRGBO(163, 97, 46, 1),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          'See Location',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: const Color.fromRGBO(163, 97, 46, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      minimumSize: const MaterialStatePropertyAll(
                        Size(double.infinity, 42),
                      ),
                      backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(245, 146, 69, 1),
                      ),
                    ),
                    child: Text(
                      'Book Now',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
    );
  }
}
