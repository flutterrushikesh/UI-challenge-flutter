import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/contacts_controller.dart';
import 'package:transyte/View/Paynearby_Screen/Widgets/back_to_transferscreen_button.dart';

class NearbyUserScreen extends StatelessWidget {
  const NearbyUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    final ContactsController localObj =
        Provider.of<ContactsController>(context, listen: false);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: const BackToTransferscreenButton(),
        title: Text(
          'Pay Nearby',
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.036,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/maps.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: screenHeight * 0.2,
                left: screenWidth * 0.25,
                child: Image.asset(
                  'assets/images/group point.png',
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                  top: screenHeight * 0.018,
                  bottom: screenHeight * 0.06,
                  right: screenWidth * 0.041,
                  left: screenHeight * 0.031,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(246, 246, 246, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Text(
                      "All Contacts",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(8, 4, 34, 0.5),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Column(
                      children: List.generate(
                        localObj.listOfContact.length,
                        (index) => Row(
                          children: [
                            Image.asset(
                              localObj.listOfContact[index].image,
                            ),
                            SizedBox(
                              width: screenWidth * 0.1,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  localObj.listOfContact[index].name,
                                  style: GoogleFonts.poppins(
                                    fontSize: screenWidth * 0.041,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight * 0.01,
                                ),
                                Text(
                                  localObj.listOfContact[index].distance,
                                  style: GoogleFonts.poppins(
                                    fontSize: screenWidth * 0.031,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(8, 4, 34, 0.5),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.09,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
