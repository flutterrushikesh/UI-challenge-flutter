import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/send_again_user_controller.dart';

class SendAgainUsers extends StatelessWidget {
  const SendAgainUsers({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    ///THE THE CONTROLLER OBJ LOCALLAY.
    final SendAgainUserController localObj =
        Provider.of<SendAgainUserController>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        localObj.listOfUser.length,
        (index) {
          return Column(
            children: [
              Image.asset(localObj.listOfUser[index].userProfile),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                localObj.listOfUser[index].name,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  color: const Color.fromRGBO(8, 4, 34, 1),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
