import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/controller/weekdays_controller.dart';

class AvailableDates extends StatelessWidget {
  ///REGISTER A WEEKDAYSCONTROLLER.
  final WeekdaysController putController = Get.put(WeekdaysController());

  ///FIND A REGISTERD CONTROLLE TO ACCESS THE PROPERTIES.
  final WeekdaysController findController = Get.find<WeekdaysController>();
  AvailableDates({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        5,
        (index) => Obx(
          () => GestureDetector(
            onTap: () => findController.selectDate(index: index),
            child: Container(
              padding: EdgeInsets.all(screenHeight * 0.011),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: const Color.fromRGBO(245, 146, 69, 1),
                ),
                color: findController.selectedIndex == index
                    ? const Color.fromRGBO(245, 146, 69, 1)
                    : Colors.white,
              ),
              child: Text(
                "${findController.weekday[index].day} ${index + 6}",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
