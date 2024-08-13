import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallezy/controller/more_controller.dart';
import 'package:wallezy/view/about_screen.dart';
import 'package:wallezy/view/paybills_screen.dart';
import 'package:wallezy/view/transfer_screen.dart';

class MoreScreen extends StatelessWidget {
  final MoreController putConroller = Get.put(MoreController());
  final MoreController findController = Get.find<MoreController>();
  final List<Widget> listOfMoreContent = [
    PaybillsScreen(),
    TransferScreen(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const AboutScreen(),
  ];
  MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "More",
          style: GoogleFonts.sora(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: findController.listOfMore.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Get.to(() => listOfMoreContent[index]);
              },
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                  findController.listOfMore[index].iconPath),
                            ),
                            Text(
                              findController.listOfMore[index].iconName,
                              style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(25, 25, 25, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color.fromRGBO(83, 93, 102, 1),
                      )
                    ],
                  ),
                  const Divider(
                    height: 6,
                    color: Color.fromRGBO(237, 239, 246, 1),
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
