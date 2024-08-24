import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/controller/sevice_controller.dart';

class ServiceListview extends StatelessWidget {
  ///REGISTER A SERVICE CONTROLLER
  final ServiceController putController = Get.put(ServiceController());

  ///FIND A REGISTERED SERVICE  CONTROLLER
  final ServiceController findController = Get.find<ServiceController>();
  ServiceListview({super.key});

  @override
  Widget build(BuildContext context) {
    ///MRASURE A SCREEN HEIGHT.
    double screenHeight = MediaQuery.of(context).size.height;

    //MEASURES A SCREEN WIDTH.
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight * 0.134,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: findController.listOfService.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.014,
              right: screenWidth * 0.031,
              left: screenWidth * 0.031,
            ),
            child: Column(
              children: [
                Image.asset(
                  findController.listOfService[index].iconPath,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Text(
                  findController.listOfService[index].serviceName,
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.031,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
