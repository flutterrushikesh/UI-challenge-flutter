import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/setting_controller.dart';
import 'package:transyte/View/Menu_Screen/Widgets/back_button.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    final SettingController localObj =
        Provider.of<SettingController>(context, listen: false);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 96, 72, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const BackToHome(),
        title: Text(
          "Settings",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.041,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.018,
          bottom: screenHeight * 0.06,
          right: screenWidth * 0.041,
          left: screenHeight * 0.031,
        ),
        child: ListView.builder(
          itemCount: localObj.listOfSetting.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  localObj.listOfSetting[index].typeOfSetting,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                for (int i = 0;
                    i < localObj.listOfSetting[index].settings.length;
                    i++)
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.02,
                          bottom: screenHeight * 0.02,
                          right: screenWidth * 0.041,
                          // left: screenHeight * 0.031,
                        ),
                        child: Image.asset(
                          localObj.listOfSetting[index].settings[i].icon,
                        ),
                      ),
                      Text(
                        localObj.listOfSetting[index].settings[i].settingName,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      localObj.listOfSetting[index].settings[i].isSwitch
                          ? Switch(
                              activeTrackColor:
                                  const Color.fromRGBO(9, 112, 62, 1),
                              inactiveTrackColor:
                                  const Color.fromRGBO(9, 112, 62, 0.2),
                              thumbColor:
                                  const WidgetStatePropertyAll(Colors.white),
                              value: false,
                              onChanged: (value) {},
                            )
                          : const Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: Colors.white,
                            ),
                    ],
                  )
              ],
            );
          },
        ),
      ),
    );
  }
}
