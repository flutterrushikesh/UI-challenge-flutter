import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallezy/controller/profile_setting_controller.dart';

class SettingScreen extends StatelessWidget {
  final ProfileSettingController putController =
      Get.put(ProfileSettingController());
  final ProfileSettingController findController =
      Get.find<ProfileSettingController>();
  SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Color.fromRGBO(29, 98, 202, 1),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Profile Settings",
          style: GoogleFonts.sora(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Image.asset(
              'assets/images/Verified photo.png',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Text(
              "Abdullah Ghatasheh",
              style: GoogleFonts.sora(
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(25, 25, 25, 1),
              ),
            ),
            Text(
              "Joined 2 years ago",
              style: GoogleFonts.sora(
                fontSize: 12,
                color: const Color.fromRGBO(120, 131, 141, 1),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4.7,
              child: ListView.builder(
                itemCount: findController.listOfModel.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(findController
                                      .listOfModel[index].iconPath),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      findController.listOfModel[index].title,
                                      style: GoogleFonts.sora(
                                        fontSize: 12,
                                        color: const Color.fromRGBO(
                                            120, 131, 141, 1),
                                      ),
                                    ),
                                    Text(
                                      findController
                                          .listOfModel[index].description,
                                      style: GoogleFonts.sora(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color:
                                            const Color.fromRGBO(25, 25, 25, 1),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Text(
                            "Edit",
                            style: GoogleFonts.sora(
                                fontSize: 12,
                                color: const Color.fromRGBO(29, 98, 202, 1)),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color.fromRGBO(237, 239, 246, 1),
                      ),
                    ],
                  );
                },
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/icon/password.png'),
                          ),
                          Text(
                            "Change Password",
                            style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(25, 25, 25, 1)),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Color.fromRGBO(83, 93, 102, 1),
                    )
                  ],
                ),
                const Divider(
                  color: Color.fromRGBO(237, 239, 246, 1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
