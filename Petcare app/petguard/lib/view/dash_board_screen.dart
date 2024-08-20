import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/controller/category_controller.dart';

class DashBoardScreen extends StatelessWidget {
  final CategoryController putController = Get.put(CategoryController());
  final CategoryController findController = Get.find<CategoryController>();
  DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset('assets/images/profile image.png'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, Sarah",
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Good Morning",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color.fromRGBO(194, 195, 204, 1),
                  ),
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icon/bell.png'),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: GoogleFonts.poppins(
                  fontSize: 12,
                  color: const Color.fromRGBO(194, 195, 204, 1),
                ),
                suffixIcon: const Icon(
                  Icons.search,
                  size: 30,
                  color: Color.fromRGBO(245, 146, 69, 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color.fromRGBO(250, 200, 162, 1),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color.fromRGBO(250, 200, 162, 1),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 100,
                right: MediaQuery.of(context).size.height / 100,
                left: MediaQuery.of(context).size.height / 80,
              ),
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 40,
                bottom: MediaQuery.of(context).size.height / 40,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(22, 34, 51, 0.08),
                    blurRadius: 16,
                    spreadRadius: -4,
                    offset: Offset(0, 8),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "In Love With Pets?",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      children: [
                        TextSpan(
                          text: "\nGet all what you need for them",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(245, 146, 69, 1),
                          ),
                        )
                      ],
                    ),
                  ),
                  Image.asset('assets/images/love pet.png'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                titleText("Category"),
                Text(
                  "See all",
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(194, 195, 204, 1),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7.5,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: findController.listOfCategory.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Image.asset(
                          findController.listOfCategory[index].imagePath,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100,
                        ),
                        Text(
                          findController.listOfCategory[index].category,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            titleText("Event"),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 100,
                right: MediaQuery.of(context).size.height / 100,
                left: MediaQuery.of(context).size.height / 80,
              ),
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 80,
                bottom: MediaQuery.of(context).size.height / 40,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Find and Join in Special \nEvents For Your Pets!",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: const WidgetStatePropertyAll(
                            Color.fromRGBO(245, 146, 69, 1),
                          ),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        child: Text(
                          "See More",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Image.asset('assets/images/event.png')
                ],
              ),
            ),
            titleText("Community"),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 100,
                right: MediaQuery.of(context).size.height / 100,
                left: MediaQuery.of(context).size.height / 80,
              ),
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 80,
                bottom: MediaQuery.of(context).size.height / 40,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Connect and share with \ncommunities!",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: const WidgetStatePropertyAll(
                            Color.fromRGBO(245, 146, 69, 1),
                          ),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        child: Text(
                          "See More",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Image.asset('assets/images/community.png')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget titleText(String titleText) {
    return Text(
      titleText,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
