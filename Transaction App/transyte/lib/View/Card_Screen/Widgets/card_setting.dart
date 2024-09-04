import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/card_element_controller.dart';

class CardSetting extends StatelessWidget {
  const CardSetting({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    ///CREATE A LOCAL OBJ TO DISPLAY THE COMPONENTS.
    final CardElementController localObj =
        Provider.of<CardElementController>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        localObj.listOfElement.length,
        (index) => GestureDetector(
          // behavior: HitTestBehavior. ,
          onTap: () {
            PersistentNavBarNavigator.pushNewScreen(
              context,
              screen: localObj.listOfElement[index].screen,
              pageTransitionAnimation: PageTransitionAnimation.fade,
              withNavBar: false,
            );
          },
          child: Container(
            padding: EdgeInsets.only(
              top: screenHeight * 0.02,
              left: screenWidth * 0.04,
              right: screenWidth * 0.04,
              bottom: screenHeight * 0.02,
            ),
            margin: EdgeInsets.only(
              top: screenHeight * 0.05,
              bottom: screenHeight * 0.03,
            ),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(5, 5, 26, 0.08),
                  blurRadius: 30,
                  offset: Offset(0, 7),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Image.asset(
                  localObj.listOfElement[index].iconPath,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Text(
                  localObj.listOfElement[index].elementName,
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.031,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
