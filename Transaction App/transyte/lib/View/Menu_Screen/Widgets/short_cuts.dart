import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/short_cuts_controller.dart';

class ShortCuts extends StatelessWidget {
  const ShortCuts({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    final ShortCutsController localObj =
        Provider.of<ShortCutsController>(context);
    return Column(
      children: List.generate(localObj.listOfMenu.length, (index) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: screenHeight * 0.05,
                right: screenWidth * 0.04,
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: screenHeight * 0.0112,
                right: screenWidth * 0.026,
                bottom: screenHeight * 0.0112,
                left: screenWidth * 0.026,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(233, 255, 171, 1),
              ),
              child: Image.asset(
                localObj.listOfMenu[index].icon,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenWidth * 0.025,
                ),
                Text(
                  localObj.listOfMenu[index].menuName,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Colors.white,
            ),
          ],
        );
      }),
    );
  }
}
