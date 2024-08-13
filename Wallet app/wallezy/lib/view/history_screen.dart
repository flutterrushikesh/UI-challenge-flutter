import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallezy/controller/history_controller.dart';
import 'package:wallezy/model/history_detail_model.dart';

class HistoryScreen extends StatelessWidget {
  final HistoryController putController = Get.put(HistoryController());
  final HistoryController findController = Get.find<HistoryController>();
  HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "History",
          style: GoogleFonts.sora(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: const Color.fromRGBO(25, 25, 25, 1),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height / 3.5,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Value goes here",
                      hintStyle: GoogleFonts.sora(
                        color: const Color.fromRGBO(186, 194, 199, 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(225, 227, 237, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(225, 227, 237, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(225, 227, 237, 1),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.filter_alt_outlined,
                        size: 30,
                      ),
                      Text(
                        "Filter",
                        style: GoogleFonts.sora(
                          color: const Color.fromRGBO(25, 25, 25, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: findController.listOfHistory.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        findController.listOfHistory[index].day,
                        style: GoogleFonts.sora(
                          fontSize: 16,
                          color: const Color.fromRGBO(83, 93, 102, 1),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 100,
                      ),
                      for (int i = 0;
                          i < findController.listOfHistory.length;
                          i++)
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                openBottomSheet(
                                    findController
                                        .listOfHistory[index].listOfHistory[i],
                                    context,
                                    findController.listOfHistory[index].day);
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 8.0, bottom: 8, top: 8),
                                          child: Image.asset(findController
                                              .listOfHistory[index]
                                              .listOfHistory[i]
                                              .iconPath),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              findController
                                                  .listOfHistory[index]
                                                  .listOfHistory[i]
                                                  .title,
                                              style: GoogleFonts.sora(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: const Color.fromRGBO(
                                                    25, 25, 25, 1),
                                              ),
                                            ),
                                            Text(
                                              findController
                                                  .listOfHistory[index]
                                                  .listOfHistory[i]
                                                  .date,
                                              style: GoogleFonts.sora(
                                                  fontSize: 12,
                                                  color: const Color.fromRGBO(
                                                      134, 136, 147, 1)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Text(
                                          findController.listOfHistory[index]
                                              .listOfHistory[i].amount,
                                          style: GoogleFonts.sora(
                                            fontSize: 12,
                                            color: const Color.fromRGBO(
                                              184,
                                              50,
                                              50,
                                              1,
                                            ),
                                          ),
                                        ),
                                        const Icon(
                                          Icons.arrow_forward_ios,
                                          size: 16,
                                          color: Color.fromRGBO(25, 25, 25, 1),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Divider(
                              color: Color.fromRGBO(237, 239, 246, 1),
                            )
                          ],
                        ),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openBottomSheet(
      HistoryDetailsModel obj, BuildContext context, String day) {
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
                          obj.companyName,
                          style: GoogleFonts.sora(
                            color: const Color.fromRGBO(120, 131, 141, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    "Done",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(29, 98, 202, 1),
                    ),
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
                obj.amount,
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
                    day,
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(83, 93, 102, 1),
                    ),
                  ),
                  Text(
                    obj.date,
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
                    "Transaction no.",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(83, 93, 102, 1),
                    ),
                  ),
                  Text(
                    "${obj.transactionId}",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(83, 93, 102, 1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.outlined_flag,
                    color: Color.fromRGBO(184, 50, 50, 1),
                  ),
                  Text(
                    "Report problem",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(184, 50, 50, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
