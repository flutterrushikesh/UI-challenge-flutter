import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pet_care/my_widgets/adds_container.dart';
import 'package:pet_care/my_widgets/my_searchbox.dart';
import 'package:pet_care/my_widgets/mydoctorlist.dart';
import 'package:pet_care/my_widgets/ourservicelist.dart';

class VeterinaryScreen extends StatefulWidget {
  const VeterinaryScreen({super.key});

  @override
  State<VeterinaryScreen> createState() => _VeterinaryScreenState();
}

class _VeterinaryScreenState extends State<VeterinaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Icon(
              Iconsax.location,
              color: Color.fromRGBO(245, 146, 69, 1),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'London, UK',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(194, 195, 204, 1),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const MyAddsContainer(
              description: 'Lets Find Specialist \nDoctor for Your Pet!',
              imagePath: 'assets/images/veterinaryadd.png',
            ),
            const SizedBox(height: 20),
            const MySearchBox(),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Our Services',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Text(
                  'See All',
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color.fromRGBO(194, 195, 204, 1)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OurServiceList(
                  serviceName: 'Vaccinations',
                  serviceimgpath: 'assets/images/vaccinations.png',
                ),
                OurServiceList(
                  serviceName: 'Operation',
                  serviceimgpath: 'assets/images/operation.png',
                ),
                OurServiceList(
                  serviceName: 'Behaviorals',
                  serviceimgpath: 'assets/images/behaviorals.png',
                ),
                OurServiceList(
                  serviceName: 'Dentistry',
                  serviceimgpath: 'assets/images/dentistry.png',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Best Specialists Nearby',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const DoctorList(
              doctorImgpath: 'assets/images/veterinarydentist.png',
              doctorLocationFrom: '1.0 km',
              doctorName: 'Dr. Anna Johanson',
              doctorRating: '4.8',
              doctorType: 'Veterinary Behavioral',
            ),
            const SizedBox(height: 15),
            const DoctorList(
              doctorImgpath: 'assets/images/veterinarysurgery.png',
              doctorLocationFrom: '1.5 km',
              doctorName: 'Dr. Vernon Chwe',
              doctorRating: '4.9',
              doctorType: 'Veterinary Surgery',
            ),
            const SizedBox(height: 15),
            const DoctorList(
              doctorImgpath: 'assets/images/veterinarydentist2.png',
              doctorLocationFrom: '2.6 km',
              doctorName: 'Dr. Maria Nai',
              doctorRating: '4.8',
              doctorType: 'Veterinary Dentist',
            ),
          ],
        ),
      ),
    );
  }
}
