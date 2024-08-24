import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/controller/notification_controller.dart';

class NotificationScreen extends StatelessWidget {
  ///RESISTER A CONTROLLER.
  final NotificationController putController =
      Get.put(NotificationController());
  NotificationScreen({super.key});

  ///FIND A RESISTERED CONTROLLER.
  final NotificationController findController =
      Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    ///MEASURE SCREEN HEIGHT & STORED IN SCREENHEIGHT VARIABLE.
    double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURE SCREEN WIDTH & STORED IN SCREENWIDTH VARIABLE.
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
        leading: GestureDetector(
          onTap: () {
            ///BACK TO PREVIOUS SCREEN
            Get.back();
          },
          child: Container(
            margin: EdgeInsets.all(screenWidth * 0.03),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        title: Text(
          "Notification",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.041,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: ListView.separated(
          itemCount: findController.listOfNotification.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  findController.listOfNotification[index].day,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                ),
                Container(
                  padding: EdgeInsets.all(screenWidth * 0.01),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ///TO GET ALL NOTIFICATIONS ON THAT DAY IN LOOP.
                      for (int i = 0;
                          i <
                              findController.listOfNotification[index]
                                  .listOfNotification.length;
                          i++)
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: screenWidth * 0.04,
                                top: screenHeight * 0.01,
                                right: screenWidth * 0.02,
                                bottom: screenHeight * 0.01,
                              ),
                              child: Image.asset(
                                findController.listOfNotification[index]
                                    .listOfNotification[i].iconPath,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.03,
                            ),
                            Expanded(
                              child: Text(
                                findController.listOfNotification[index]
                                    .listOfNotification[i].notification,
                                style: GoogleFonts.poppins(
                                  fontSize: screenWidth * 0.031,
                                ),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: screenWidth * 0.05,
            );
          },
        ),
      ),
    );
  }
}
