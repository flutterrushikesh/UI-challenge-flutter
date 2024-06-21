import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care/my_widgets/my_appbar_title.dart';
import 'package:pet_care/my_widgets/mybackbutton.dart';
import 'package:pet_care/my_widgets/traning_video_container.dart';
import 'package:pet_care/screens/dashboard_screen.dart';

class TraningScreen extends StatefulWidget {
  const TraningScreen({super.key});

  @override
  State<TraningScreen> createState() => _TraningScreenState();
}

class _TraningScreenState extends State<TraningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const MyBackButton(
          navigateTo: DashboardScreen,
        ),
        title: const MyAppBarText(appbarTitle: 'Traning'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: const [
          TraningVideoContainer(
            rating: '4.9 (335)',
            traningBy: 'By Jhon Smith',
            traningName: 'Obedience Courses',
            videoLablePath: 'assets/images/obediencecourses.png',
          ),
          TraningVideoContainer(
            rating: '5.0 (500)',
            traningBy: 'By Duke Fuzzington',
            traningName: 'Specialty Classes & Workshops',
            videoLablePath: 'assets/images/specialityclasses &workshop.png',
          ),
          TraningVideoContainer(
            rating: '5.0 (500)',
            traningBy: 'By Sir Fluffington',
            traningName: 'Puppy Kinderganten and Playgroups',
            videoLablePath:
                'assets/images/Puppy Kinderganten and Playgroups.png',
          ),
          TraningVideoContainer(
            rating: '4.8 (220)',
            traningBy: 'By Baron Fuzzypaws',
            traningName: 'Canine Good Citizen Test',
            videoLablePath: 'assets/images/Canine Good Citizen Test.png',
          ),
          TraningVideoContainer(
            rating: '5.0 (500)',
            traningBy: 'By Duke Fuzzingtonh',
            traningName: 'Theraphy Dogs',
            videoLablePath: 'assets/images/Theraphy Dogs.png',
          ),
          TraningVideoContainer(
            rating: '4.9 (335)',
            traningBy: 'By Jhon Smith',
            traningName: 'Obedience Courses',
            videoLablePath: 'assets/images/obediencecourses.png',
          ),
          TraningVideoContainer(
            rating: '5.0 (500)',
            traningBy: 'By Duke Fuzzington',
            traningName: 'Specialty Classes & Workshops',
            videoLablePath: 'assets/images/specialityclasses &workshop.png',
          ),
        ],
      ),
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
            Text(
              'Shop',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
