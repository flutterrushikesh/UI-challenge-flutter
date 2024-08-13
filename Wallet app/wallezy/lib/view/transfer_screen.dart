import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallezy/controller/frequently_contact_controller.dart';
import 'package:wallezy/view/to_benificiery_screen.dart';

class TransferScreen extends StatelessWidget {
  final FrequentlyContactController putController =
      Get.put(FrequentlyContactController());
  final FrequentlyContactController findController =
      Get.find<FrequentlyContactController>();
  TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Color.fromRGBO(29, 98, 202, 1),
              ),
              Text(
                "Back",
                style: GoogleFonts.sora(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(29, 98, 202, 1),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Transfer to",
              style: GoogleFonts.sora(
                fontSize: 24,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                    right: 10,
                  ),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(230, 221, 255, 1),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Color.fromRGBO(87, 50, 191, 1),
                  ),
                ),
                Text(
                  "New contact",
                  style: GoogleFonts.sora(
                    fontSize: 12,
                    color: const Color.fromRGBO(25, 25, 25, 1),
                  ),
                ),
              ],
            ),
            Center(
              child: Text(
                "or",
                style: GoogleFonts.sora(
                  fontSize: 15,
                  color: const Color.fromRGBO(120, 131, 141, 1),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            TextField(
              autofocus: false,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromRGBO(186, 194, 199, 1),
                ),
                hintText: "Search contact",
                hintStyle: GoogleFonts.sora(
                  color: const Color.fromRGBO(186, 194, 199, 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(225, 227, 237, 1),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Text(
              "Frequent contacts",
              style: GoogleFonts.sora(
                fontSize: 12,
                color: const Color.fromRGBO(83, 93, 102, 1),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: findController.listOfContacts.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(
                        () => ToBenificieryScreen(),
                        arguments: findController.listOfContacts[index],
                      );
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 8, top: 5),
                                      child: Image.asset(
                                        findController
                                            .listOfContacts[index].imgPath,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          findController
                                              .listOfContacts[index].name,
                                          style: GoogleFonts.sora(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromRGBO(
                                                25, 25, 25, 1),
                                          ),
                                        ),
                                        Text(
                                          findController
                                              .listOfContacts[index].contactNo,
                                          style: GoogleFonts.sora(
                                            fontSize: 12,
                                            color: const Color.fromRGBO(
                                                120, 131, 141, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Color.fromRGBO(83, 93, 102, 1),
                              ),
                            ],
                          ),
                        ),
                        const Divider(color: Color.fromRGBO(237, 239, 246, 1)),
                      ],
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
