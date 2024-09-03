import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/set_password_controller.dart';
import 'package:transyte/View/Fingerprint_Auth_Screen.dart/fingerprint_screen.dart';

class AuthenticateButton extends StatelessWidget {
  const AuthenticateButton({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    ///CREATE OBJ TO ACCESS THE SETPASSWORD CONTROLLER.
    final SetPasswordController localObj =
        Provider.of<SetPasswordController>(context);
    return ElevatedButton(
      onPressed: () {
        final bool isValidPassword =
            localObj.passwordKey.currentState!.validate();

        if (isValidPassword) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const FingerprintScreen(),
            ),
          );
        }
      },
      style: ButtonStyle(
        minimumSize: WidgetStatePropertyAll(
          Size(
            double.infinity,
            screenHeight * 0.07,
          ),
        ),
        backgroundColor: const WidgetStatePropertyAll(
          Color.fromRGBO(9, 112, 62, 1),
        ),
      ),
      child: Text(
        "Next",
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: screenWidth * 0.041,
          color: Colors.white,
        ),
      ),
    );
  }
}
