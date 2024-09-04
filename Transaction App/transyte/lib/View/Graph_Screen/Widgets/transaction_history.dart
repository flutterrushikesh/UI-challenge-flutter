import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/transactiobn_history_controller.dart';

class TransactionHistory1 extends StatelessWidget {
  const TransactionHistory1({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    ///TRANSACTION HISTORY CONTROLLER.
    final TransactionHistoryController localObj =
        Provider.of<TransactionHistoryController>(context);
    return Container(
      width: screenWidth,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(246, 246, 246, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.09,
          bottom: screenHeight * .018,
          right: screenWidth * 0.041,
          left: screenWidth * 0.041,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Transaction History",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(8, 4, 34, 0.6),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: localObj.listOfHistory.length,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: screenWidth * 0.05,
                                  right: screenWidth * 0.02),
                              padding: EdgeInsets.all(screenWidth * 0.02),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Image.asset(
                                localObj.listOfHistory[index].icon,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  localObj.listOfHistory[index].transactionName,
                                  style: GoogleFonts.poppins(
                                    fontSize: screenWidth * 0.031,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(8, 4, 34, 1),
                                  ),
                                ),
                                SizedBox(
                                  height: screenWidth * 0.02,
                                ),
                                Text(
                                  localObj.listOfHistory[index].date,
                                  style: GoogleFonts.poppins(
                                    fontSize: screenWidth * 0.026,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(8, 4, 34, 0.6),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              localObj.listOfHistory[index].amount,
                              style: GoogleFonts.poppins(
                                fontSize: screenWidth * 0.031,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(8, 4, 34, 1),
                              ),
                            ),
                            SizedBox(
                              height: screenWidth * 0.02,
                            ),
                            Text(
                              localObj.listOfHistory[index].description,
                              style: GoogleFonts.poppins(
                                fontSize: screenWidth * 0.026,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(8, 4, 34, 0.6),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
