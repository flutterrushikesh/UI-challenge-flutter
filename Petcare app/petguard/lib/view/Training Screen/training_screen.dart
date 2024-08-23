import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/controller/training_controller.dart';

class TrainingScreen extends StatelessWidget {
  final TrainingController putController = Get.put(TrainingController());
  final TrainingController findController = Get.find<TrainingController>();
  TrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
        leading: GestureDetector(
          onTap: () {
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
          "Training",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.041,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      body: Padding(
        padding: EdgeInsets.all(screenHeight * 0.019),
        child: ListView.builder(
          itemCount: findController.listOfTrainingVideo.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.only(
                top: screenHeight * 0.019,
                bottom: screenHeight * 0.019,
                left: screenWidth * 0.041,
                right: screenWidth * 0.041,
              ),
              margin: EdgeInsets.only(bottom: screenHeight * 0.019),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
                children: [
                  Image.asset(
                    findController.listOfTrainingVideo[index].labelPath,
                  ),
                  SizedBox(
                    width: screenWidth * 0.028,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          findController.listOfTrainingVideo[index].title,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.005,
                        ),
                        Text(
                          findController.listOfTrainingVideo[index].videoBy,
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.031,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.009,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_outline,
                              color: Color.fromRGBO(247, 164, 100, 1),
                              size: 20,
                            ),
                            Text(
                              findController
                                  .listOfTrainingVideo[index].ratingAndView,
                              style: GoogleFonts.poppins(
                                fontSize: screenWidth * 0.031,
                                color: const Color.fromRGBO(194, 195, 204, 1),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
