import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/general_setting_controller.dart';

class GeneralSetting extends StatelessWidget {
  const GeneralSetting({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    final GeneralSettingController localObj =
        Provider.of<GeneralSettingController>(context, listen: false);
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: screenHeight * 0.018,
          bottom: screenHeight * 0.018,
          left: screenWidth * 0.07,
          right: screenWidth * 0.07,
        ),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(246, 246, 246, 1),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "General",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(8, 4, 34, 0.6),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Column(
              children: List.generate(
                localObj.listOfSetting.length,
                (index) => Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: screenHeight * 0.01,
                        bottom: screenHeight * 0.01,
                        left: screenWidth * 0.02,
                        right: screenWidth * 0.02,
                      ),
                      margin: EdgeInsets.only(
                        top: screenHeight * 0.01,
                        bottom: screenHeight * 0.02,
                        right: screenWidth * 0.04,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(
                        localObj.listOfSetting[index].iconPath,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          localObj.listOfSetting[index].title,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Text(
                          localObj.listOfSetting[index].description,
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.031,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Switch(
                      activeTrackColor: const Color.fromRGBO(9, 112, 62, 1),
                      inactiveTrackColor: const Color.fromRGBO(9, 112, 62, 0.2),
                      thumbColor: const WidgetStatePropertyAll(Colors.white),
                      value: localObj.listOfSetting[index].isSettingOn,
                      trackOutlineWidth: const WidgetStatePropertyAll(0),
                      trackOutlineColor:
                          const WidgetStatePropertyAll(Colors.white),
                      onChanged: (value) => localObj.changeSetting(
                        value,
                        index,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
