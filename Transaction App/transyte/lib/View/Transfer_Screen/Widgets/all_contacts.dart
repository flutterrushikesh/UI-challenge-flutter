import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/contacts_controller.dart';

class AllContacts extends StatelessWidget {
  const AllContacts({super.key});

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
    return Column(
      children: List.generate(
        localObj.listOfContact.length,
        (index) => Container(
          margin: EdgeInsets.only(
            top: screenHeight * 0.01,
            bottom: screenHeight * 0.03,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.04),
                child: Image.asset(
                  localObj.listOfContact[index].image,
                ),
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
                    localObj.listOfContact[index].number,
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.025,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
