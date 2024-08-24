import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/controller/speciallity_controller.dart';
import 'package:petguard/view/Doctor%20Details%20Screen/doctor_detail_screen.dart';

class DoctorListview extends StatelessWidget {
  ///REGISTER A  DR. SPECIALLITY CONTROLLER
  final SpeciallityController putSpecilityController =
      Get.put(SpeciallityController());

  ///FIND A DR SPECIALLITY CONTROLLER
  final SpeciallityController findSpecilityController =
      Get.find<SpeciallityController>();
  DoctorListview({super.key});

  @override
  Widget build(BuildContext context) {
    ///MRASURE A SCREEN HEIGHT.
    double screenHeight = MediaQuery.of(context).size.height;

    //MEASURES A SCREEN WIDTH.
    double screenWidth = MediaQuery.of(context).size.width;
    return Expanded(
      child: ListView.builder(
        itemCount: findSpecilityController.listOfDoctor.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              ///NAVIGATE TO DOCTODETAILS SCREEN.
              Get.to(
                () => const DoctorDetailScreen(),
                arguments: findSpecilityController.listOfDoctor[index],
              );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: screenHeight * 0.018),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
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
                    findSpecilityController.listOfDoctor[index].drImage,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        findSpecilityController.listOfDoctor[index].drName,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        findSpecilityController.listOfDoctor[index].drType,
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.031,
                          color: const Color.fromRGBO(194, 195, 204, 1),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star_border_outlined,
                            color: Color.fromRGBO(248, 182, 131, 1),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            findSpecilityController
                                .listOfDoctor[index].drRating,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: const Color.fromRGBO(194, 195, 204, 1),
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.026,
                          ),
                          Image.asset('assets/icon/map pin.png'),
                          Text(findSpecilityController
                              .listOfDoctor[index].drLocation),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
