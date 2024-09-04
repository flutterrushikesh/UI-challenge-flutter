import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/transfer_radio_controller.dart';

class RadioButtons extends StatelessWidget {
  const RadioButtons({super.key});

  @override
  Widget build(BuildContext context) {
    ///GET THE O0BJ OF TRANSFERRADIOCONTROLLER LOCALLY
    ///TO CALLS THE PROPERTY OR METHODS.
    final TransferRadioController localObj =
        Provider.of<TransferRadioController>(context);

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        3,
        (index) => Transform.scale(
          scale: 1.3,
          child: Column(
            children: [
              Consumer(
                builder: (context, provider, child) => Radio(
                  value: index,
                  groupValue: localObj.selectedValue,
                  onChanged: (value) => localObj.toggleButton(value, context),
                  activeColor: Colors.white,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  fillColor: WidgetStatePropertyAll(
                    localObj.selectedValue == index
                        ? Colors.white
                        : const Color.fromRGBO(255, 255, 255, 0.6),
                  ),
                ),
              ),
              Text(
                localObj.nameOfButtons[index],
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.02,
                  fontWeight: FontWeight.w500,
                  color: localObj.selectedValue == index
                      ? Colors.white
                      : const Color.fromRGBO(255, 255, 255, 0.6),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
