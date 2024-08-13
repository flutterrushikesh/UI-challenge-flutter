import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallezy/controller/saved_biller_controller.dart';
import 'package:wallezy/model/saved_biller_model.dart';
import 'package:wallezy/view/payment_success_screen.dart';

class PaybillsScreen extends StatelessWidget {
  final SavedBillerController putController = Get.put(SavedBillerController());
  final SavedBillerController findController =
      Get.find<SavedBillerController>();

  PaybillsScreen({super.key});

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
              "Pay to",
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
                  "New biller",
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
                hintText: "Search biller",
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
              "Saved billers",
              style: GoogleFonts.sora(
                fontSize: 12,
                color: const Color.fromRGBO(83, 93, 102, 1),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: findController.listOfBillers.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      openBottomSheet(
                          findController.listOfBillers[index], context);
                    },
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      findController
                                          .listOfBillers[index].iconPath,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        findController
                                            .listOfBillers[index].title,
                                        style: GoogleFonts.sora(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: const Color.fromRGBO(
                                              25, 25, 25, 1),
                                        ),
                                      ),
                                      Text(
                                        "Due: ${findController.listOfBillers[index].due}",
                                        style: GoogleFonts.sora(
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              83, 93, 102, 1),
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
                        const Divider(
                          color: Color.fromRGBO(237, 239, 246, 1),
                        )
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

  void openBottomSheet(SavedBillerModel obj, BuildContext context) {
    Get.bottomSheet(
      Container(
        height: MediaQuery.of(context).size.height / 2.1,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        obj.iconPath,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          obj.title,
                          style: GoogleFonts.sora(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(25, 25, 25, 1),
                          ),
                        ),
                        Text(
                          obj.type,
                          style: GoogleFonts.sora(
                            color: const Color.fromRGBO(120, 131, 141, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  "Done",
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(29, 98, 202, 1),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 15, bottom: 8),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 246, 246, 1),
              ),
              child: Text(
                "Due ${obj.due}",
                style: GoogleFonts.sora(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(184, 50, 50, 1),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 6, bottom: 8),
              padding: const EdgeInsets.only(
                  top: 16, bottom: 16, right: 12, left: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                  color: const Color.fromRGBO(237, 239, 246, 1),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Due date",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(83, 93, 102, 1),
                    ),
                  ),
                  Text(
                    obj.dueDate,
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(83, 93, 102, 1),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 6, bottom: 8),
              padding: const EdgeInsets.only(
                  top: 16, bottom: 16, right: 12, left: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                  color: const Color.fromRGBO(237, 239, 246, 1),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Registration no.",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(83, 93, 102, 1),
                    ),
                  ),
                  Text(
                    "${obj.registrationNumber}",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(83, 93, 102, 1),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => PaymentSuccessScreen(), arguments: obj);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 30, bottom: 20),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color.fromRGBO(253, 194, 40, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/logo/secure.png"),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        "Secure payment",
                        style: GoogleFonts.sora(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(39, 6, 133, 1)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
