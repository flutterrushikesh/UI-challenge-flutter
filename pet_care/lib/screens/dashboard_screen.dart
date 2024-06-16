import 'package:flutter/material.dart';
import 'package:pet_care/my_widgets/my_searchbox.dart';
import 'package:pet_care/screens/notification_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care/my_widgets/categorylist.dart';
import 'package:pet_care/my_widgets/dashboard_adds.dart';
import 'package:pet_care/screens/veterinary_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: const EdgeInsets.only(left: 15),
          child: Image.asset('assets/images/profileimage.png'),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello, Sarah    ',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Good Morning!',
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color.fromRGBO(194, 195, 204, 1),
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const NotificationScreen();
                  },
                ),
              );
            },
            child: const Icon(Icons.notifications_outlined),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const MySearchBox(),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: -4,
                      blurRadius: 16,
                      offset: Offset(0, 8),
                      color: Color.fromRGBO(22, 34, 51, 0.08),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'In Love With Pets?',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Get all what you need for them',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(245, 146, 69, 1),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset('assets/images/petlove.png')
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Category',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'See all',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryList(
                    categorypath: 'assets/images/veternary.png',
                    categoryName: 'Veterinary',
                    navigateTo: VeterinaryScreen(),
                  ),
                  CategoryList(
                    categorypath: 'assets/images/grooming.png',
                    categoryName: 'Grooming',
                  ),
                  CategoryList(
                    categorypath: 'assets/images/petstore.png',
                    categoryName: 'Pet Store',
                  ),
                  CategoryList(
                    categorypath: 'assets/images/training.png',
                    categoryName: 'Traning',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Event",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const MyAdds(
                buttonName: 'See More',
                description: 'Find and Join in Special \nEvents For Your Pets!',
                imagePath: 'assets/images/event.png',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Community",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const MyAdds(
                buttonName: 'See More',
                description: 'Connect and share with \ncommunities! ',
                imagePath: 'assets/images/community.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
