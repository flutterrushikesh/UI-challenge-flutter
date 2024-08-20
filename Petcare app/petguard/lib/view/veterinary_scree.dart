import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/controller/sevice_controller.dart';
import 'package:petguard/controller/speciallity_controller.dart';
import 'package:petguard/view/doctor_detail_screen.dart';

class VeterinaryScreen extends StatelessWidget {
  final ServiceController putController = Get.put(ServiceController());
  final ServiceController findController = Get.find<ServiceController>();
  final SpeciallityController putSpecilityController =
      Get.put(SpeciallityController());
  final SpeciallityController findSpecilityController =
      Get.find<SpeciallityController>();
  VeterinaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Image.asset('assets/icon/map pin.png'),
            ),
            Text(
              "Lodon, UK",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(194, 195, 204, 1),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                color: const Color.fromRGBO(245, 146, 69, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Lets Find Specialist \nDoctor for Your Pet!",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Image.asset('assets/images/doctor.png'),
                ],
              ),
            ),
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
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Text(
              "Our services",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7.5,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: findController.listOfService.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Image.asset(
                          findController.listOfService[index].iconPath,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100,
                        ),
                        Text(
                          findController.listOfService[index].serviceName,
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
            Text(
              "Best Specialists Nearby",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: findSpecilityController.listOfDoctor.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(
                        () => const DoctorDetailScreen(),
                        arguments: findSpecilityController.listOfDoctor[index],
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16),
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
                                findSpecilityController
                                    .listOfDoctor[index].drName,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                findSpecilityController
                                    .listOfDoctor[index].drType,
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
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
                                      color: const Color.fromRGBO(
                                          194, 195, 204, 1),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
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
            )
          ],
        ),
      ),
    );
  }
}
