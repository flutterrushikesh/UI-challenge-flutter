import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/notification_controller.dart';

class TransactionNotification extends StatelessWidget {
  const TransactionNotification({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    final NotificationController localObj = Provider.of(context, listen: false);
    return SizedBox(
      height: screenHeight * 0.37,
      child: ListView.builder(
        physics: const ScrollPhysics(),
        itemCount: localObj.listOfTransactions.length,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: screenHeight * 0.03,
                bottom: screenHeight * 0.01,
                right: screenWidth * 0.051,
                left: screenWidth * 0.051,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(7, 5, 26, 0.07),
                    blurRadius: 50,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    localObj.listOfTransactions[index].typeOfNotification,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 0.6),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  for (int i = 0;
                      i <
                          localObj.listOfTransactions[index].listOfNotification
                              .length;
                      i++)
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.03),
                          child: Image.asset(
                            localObj.listOfTransactions[index]
                                .listOfNotification[i].iconPath,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                localObj.listOfTransactions[index]
                                    .listOfNotification[i].notification,
                                style: GoogleFonts.poppins(
                                  fontSize: screenWidth * 0.031,
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.005,
                              ),
                              Text(
                                localObj.listOfTransactions[index]
                                    .listOfNotification[i].date,
                                style: GoogleFonts.poppins(
                                  fontSize: screenWidth * 0.026,
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.02,
                              )
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/icon/add.png',
                        )
                      ],
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
