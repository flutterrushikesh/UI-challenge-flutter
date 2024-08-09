import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallezy/controller/latest_transaction_controller.dart';

class HomeScreen extends StatelessWidget {
  final LatestTransactionController obj =
      Get.find<LatestTransactionController>();
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(39, 6, 133, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset('assets/images/Profile photo.png'),
            ),
            Text(
              "Hello, \nAbdullah!",
              style: GoogleFonts.sora(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.settings_outlined,
              color: Colors.white,
              size: 27,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.only(
              top: 32,
              bottom: 32,
              left: 24,
              right: 24,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(80, 51, 164, 1),
                  Color.fromRGBO(51, 16, 152, 0.65),
                ],
              ),
            ),
            child: Column(
              children: [
                Text(
                  "Main balance",
                  style: GoogleFonts.sora(
                    fontSize: 12,
                    color: const Color.fromRGBO(178, 161, 228, 1),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                RichText(
                  text: TextSpan(
                    text: "\$14,235",
                    style: GoogleFonts.sora(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: ".34",
                        style: GoogleFonts.sora(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    myColumn("assets/icon/topup.svg", "Top up"),
                    myColumn("assets/icon/download-line.svg", "Withdraw"),
                    myColumn("assets/icon/transfer.svg", "Transfer"),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              color: Colors.white,
              child: ListView(
                children: [
                  transactionsText("Recent Transfers"),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            height: 64,
                            width: 64,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(230, 221, 255, 1),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.add),
                          ),
                          Text(
                            "Add",
                            style: GoogleFonts.sora(
                              fontSize: 12,
                              color: const Color.fromRGBO(25, 25, 25, 1),
                            ),
                          )
                        ],
                      ),
                      nameAndImgOfuser(
                        "Ali",
                        'assets/images/Profile photo 2.png',
                      ),
                      nameAndImgOfuser(
                        "Steve",
                        'assets/images/steave.png',
                      ),
                      nameAndImgOfuser("Ahmed", "assets/images/ahmed.png")
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 45,
                  ),
                  transactionsText("Latest Transactions"),
                  Expanded(
                    child: ListView.builder(
                      itemCount: obj.list.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          color: Colors.black,
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget nameAndImgOfuser(String name, String profilePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(
            profilePath,
          ),
          Text(
            name,
            style: GoogleFonts.sora(
              fontSize: 12,
              color: const Color.fromRGBO(25, 25, 25, 1),
            ),
          ),
        ],
      ),
    );
  }

  Widget transactionsText(String name) {
    return Text(
      name,
      style: GoogleFonts.sora(
        fontWeight: FontWeight.w600,
        color: const Color.fromRGBO(25, 25, 25, 1),
      ),
    );
  }

  Widget myColumn(String iconPath, String iconName) {
    return Column(
      children: [
        SvgPicture.asset(
          iconPath,
          height: 18,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            iconName,
            style: GoogleFonts.sora(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
