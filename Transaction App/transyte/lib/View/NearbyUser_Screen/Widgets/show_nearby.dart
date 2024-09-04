import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/contacts_controller.dart';

class ShowNearby extends StatelessWidget {
  const ShowNearby({super.key});

  @override
  Widget build(BuildContext context) {
    ///CREATED LOCAL OBJ TO ACESS THE CONTROLLER PROPERTIES.

    final ContactsController localObj =
        Provider.of<ContactsController>(context, listen: false);

    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Column(
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
    );
  }
}
