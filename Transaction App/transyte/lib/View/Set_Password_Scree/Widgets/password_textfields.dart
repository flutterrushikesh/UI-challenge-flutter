import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:transyte/Controllers/set_password_controller.dart';

class PasswordTextfields extends StatelessWidget {
  const PasswordTextfields({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    ///CREATE OBJ TO ACCESS THE SETPASSWORD CONTROLLER.
    final SetPasswordController localObj =
        Provider.of<SetPasswordController>(context);

    TextEditingController passwordController =
        TextEditingController(text: localObj.passwordModeloBJ.password);
    return Form(
      key: localObj.passwordKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          4,
          (index) {
            return SizedBox(
              width: screenWidth * 0.154,
              child: TextFormField(
                controller: passwordController,
                readOnly: true,
                keyboardType: TextInputType.number,
                obscureText: true,
                obscuringCharacter: "*",
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.06,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromRGBO(9, 112, 62, 1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(9, 112, 62, 1),
                    ),
                  ),
                ),
                onChanged: (value) => localObj.passwordNode,
                // validator: (password) => localObj.validatePassWord(password),
              ),
            );
          },
        ),
      ),
    );
  }
}
