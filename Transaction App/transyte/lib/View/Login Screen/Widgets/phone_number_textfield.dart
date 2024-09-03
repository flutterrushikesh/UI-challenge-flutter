import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/phone_number_controller.dart';

class PhoneNumberTextfield extends StatelessWidget {
  const PhoneNumberTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    ///TEXTEDITING CONTROLLER TO STORED TEXT TEMPORARY.
    final TextEditingController phoneNumberController = TextEditingController(
      text: Provider.of<PhoneNumberController>(
        context,
      ).phoneNumberObj.phonenumber,
    );
    return Consumer(
      builder: (context, phoneNumber, child) {
        return Form(
          key: Provider.of<PhoneNumberController>(context).validatePhoneKey,
          child: TextFormField(
            controller: phoneNumberController,
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.041,
            ),
            readOnly: true,
            autovalidateMode: AutovalidateMode.always,
            autofocus: true,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1.5,
                  color: Color.fromRGBO(8, 4, 34, 1),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Color.fromRGBO(9, 112, 62, 1),
                ),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Color.fromRGBO(9, 112, 62, 1),
                ),
              ),
            ),
            validator: (phoneNumber) =>
                Provider.of<PhoneNumberController>(context, listen: false)
                    .validatePhoneNumber(phoneNumber),
          ),
        );
      },
    );
  }
}
