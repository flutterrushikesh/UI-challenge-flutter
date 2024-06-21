import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_care/my_widgets/grooming_gridview.dart';
import 'package:pet_care/my_widgets/my_appbar_title.dart';
import 'package:pet_care/my_widgets/my_searchbox.dart';
import 'package:pet_care/my_widgets/mybackbutton.dart';
import 'package:pet_care/screens/dashboard_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class GroomingScreen extends StatefulWidget {
  const GroomingScreen({super.key});

  @override
  State<GroomingScreen> createState() => _GroomingScreenState();
}

class _GroomingScreenState extends State<GroomingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      appBar: AppBar(
        leading: const MyBackButton(
          navigateTo: DashboardScreen(),
        ),
        title: const MyAppBarText(
          appbarTitle: 'Grooming',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color.fromRGBO(245, 146, 69, 1),
              ),
              child: Row(
                children: [
                  Text(
                    'Lets Find Specialist \nDoctor for Your Pet!',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Image.asset('assets/images/veterinaryadd.png'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const MySearchBox(),
            const SizedBox(
              height: 20,
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
                    color: const Color.fromRGBO(194, 195, 204, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                children: const [
                  GroomingGridView(
                    groomingImgPath: 'assets/images/bathinggromming.png',
                    groomingName: 'Bathing & Drying',
                  ),
                  GroomingGridView(
                    groomingImgPath: 'assets/images/hairtrimming.png',
                    groomingName: 'Hair Triming',
                  ),
                  GroomingGridView(
                    groomingImgPath: 'assets/images/nailtriming.png',
                    groomingName: 'Nail Triming',
                  ),
                  GroomingGridView(
                    groomingImgPath: 'assets/images/hailcleaning.png',
                    groomingName: 'Hair Cleaning',
                  ),
                  GroomingGridView(
                    groomingImgPath: 'assets/images/teethbrushing.png',
                    groomingName: 'Teeth Brushing',
                  ),
                  GroomingGridView(
                    groomingImgPath: 'assets/images/fleatreatment.png',
                    groomingName: 'Flea Treatment',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
