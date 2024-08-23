
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/controller/our_service_controller.dart';

class ServiceGridview extends StatelessWidget {
  final OurServiceController putController = Get.put(OurServiceController());
  final OurServiceController findController = Get.find<OurServiceController>();
  ServiceGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: findController.listOfServices.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: MediaQuery.of(context).size.width * 0.05,
        mainAxisSpacing: MediaQuery.of(context).size.height * 0.02,
      ),
      itemBuilder: (context, index) {
        return Container(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(22, 34, 51, 0.08),
                  spreadRadius: -4,
                  blurRadius: 16,
                  offset: Offset(0, 16),
                ),
              ],),
          child: Column(
            children: [
              Image.asset(
                findController.listOfServices[index].imagePath,
              ),
              Text(
                findController.listOfServices[index].serviceName,
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.031,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
