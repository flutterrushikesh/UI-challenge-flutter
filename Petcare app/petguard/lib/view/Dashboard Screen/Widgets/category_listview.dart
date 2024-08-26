import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/controller/category_controller.dart';

class CategoryListview extends StatelessWidget {
  ///REGISTER CONTROLLER

  final CategoryController putController = Get.put(CategoryController());

  ///FIND REGISTERED CONTROLLER.
  final CategoryController findController = Get.find<CategoryController>();
  CategoryListview({super.key});

  @override
  Widget build(BuildContext context) {
    //measures a height of mobile screen.
    final double screenHeight = MediaQuery.of(context).size.height;

    //measures a width of screen.
    final double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight * 0.134,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: findController.listOfCategory.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              ///NAVIGATE TO RESPECTIVE SCREEN.
              Get.to(
                findController.listOfCategory[index].navigateTo,
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.014,
                right: screenWidth * 0.031,
                left: screenWidth * 0.031,
              ),
              child: Column(
                children: [
                  Image.asset(
                    findController.listOfCategory[index].imagePath,
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Text(
                    findController.listOfCategory[index].category,
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.031,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
