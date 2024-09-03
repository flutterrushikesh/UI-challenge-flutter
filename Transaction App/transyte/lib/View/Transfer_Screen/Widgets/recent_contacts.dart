import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/contacts_controller.dart';
import 'package:transyte/View/Transfer_Detail_Screen/transfer_detail_screen.dart';

class MyContacts extends StatelessWidget {
  const MyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    ///GET THE O0BJ OF TRANSFERRADIOCONTROLLER LOCALLY
    ///TO CALLS THE PROPERTY OR METHODS.
    final ContactsController localObj =
        Provider.of<ContactsController>(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          localObj.listOfContact.length,
          (index) => GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => TransferDetailScreen(
                  singleContact: localObj.listOfContact[index],
                ),
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(
                top: screenHeight * 0.045,
                bottom: screenHeight * 0.045,
              ),
              padding: EdgeInsets.only(
                right: screenWidth * 0.03,
                left: screenWidth * 0.03,
              ),
              child: Column(
                children: [
                  Image.asset(
                    localObj.listOfContact[index].image,
                  ),
                  SizedBox(
                    height: screenHeight * 0.025,
                  ),
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
                    localObj.listOfContact[index].number,
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.025,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
