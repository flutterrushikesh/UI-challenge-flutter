import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/pay_types_controller.dart';

class MenuRow extends StatelessWidget {
  const MenuRow({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    ///MENU CONTROLLER OBJ.
    final PayTypesController localObj =
        Provider.of<PayTypesController>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        4,
        (index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () => PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: localObj.listOfType[index].respectiveScreen,
                  pageTransitionAnimation: PageTransitionAnimation.fade,
                  withNavBar: false,
                ),
                child: Container(
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
                    localObj.listOfType[index].iconPath,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.015,
              ),
              Text(
                localObj.listOfType[index].paytype,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  color: Colors.white,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
