import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/transactiobn_history_controller.dart';

class HistoryListview extends StatelessWidget {
  const HistoryListview({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    ///TRANSACTION HISTORY CONTROLLER.
    final TransactionHistoryController localObj =
        Provider.of<TransactionHistoryController>(context);
    return Column(
      children: List.generate(
        localObj.listOfHistory.length,
        (index) {
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
              )
            ],
          );
        },
      ),
    );
  }
}
