import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(39, 6, 133, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(39, 6, 133, 1),
        title: Row(
          children: [
            Image.asset(
              'assets/images/Profile photo.png',
              height: 45,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 40,
            ),
            Text(
              'Hello, \nAbdullah',
              style: GoogleFonts.sora(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'assets/icons/setting.png',
                height: 30,
                width: 30,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 24, bottom: 24, right: 32, left: 32),
            margin: const EdgeInsets.only(
              top: 25,
              bottom: 25,
              right: 15,
              left: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16,
              ),
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(80, 51, 164, 1),
                  Color.fromRGBO(51, 16, 152, 0.65)
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [5, 10],
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
                  height: MediaQuery.of(context).size.height / 80,
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
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardComponent('assets/icons/upload.svg', "Top up"),
                    cardComponent('assets/icons/download.svg', "Withdraw"),
                    // const VerticalDivider(
                    //   color: Colors.white,
                    //   indent: 20,
                    //   thickness: 90,
                    // ),
                    cardComponent('assets/icons/transfer.svg', "Transfer"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 35),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent Transfers',
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(25, 25, 25, 1),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              margin: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(230, 221, 255, 1),
                              ),
                              child: const Icon(Icons.add),
                            ),
                            Text(
                              "Add",
                              style: GoogleFonts.sora(
                                fontSize: 12,
                                color: const Color.fromRGBO(25, 25, 25, 1),
                              ),
                            ),
                          ],
                        ),
                        recentTransactions(
                          'assets/images/Profile photo.png',
                          "Ali",
                        ),
                        recentTransactions(
                          'assets/images/steave.png',
                          "Steve",
                        ),
                        recentTransactions(
                          'assets/images/ahmed.png',
                          "Ahmed",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Latest Transactions',
                          style: GoogleFonts.sora(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(25, 25, 25, 1),
                          ),
                        ),
                        Text(
                          'View all',
                          style: GoogleFonts.sora(
                            fontSize: 12,
                            color: const Color.fromRGBO(107, 107, 107, 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 100,
                    ),
                    latestTransaction(
                      'assets/logo/Wallmart.png',
                      "Wallmart",
                      'Today',
                      "   12:32",
                      "-\$35.23",
                    ),
                    const Divider(
                      color: Color.fromRGBO(237, 239, 246, 1),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/logo/Topup.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Top up',
                              style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(25, 25, 25, 1),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 600,
                            ),
                            RichText(
                              text: TextSpan(
                                text: "Yesterday",
                                style: GoogleFonts.sora(
                                  fontSize: 12,
                                  color: const Color.fromRGBO(134, 136, 147, 1),
                                ),
                                children: const [
                                  TextSpan(text: "   02:12"),
                                ],
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Text(
                          '+\$430.00',
                          style: GoogleFonts.sora(
                            fontSize: 12,
                            color: const Color.fromRGBO(40, 155, 79, 1),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 100,
                        ),
                        const Icon(Icons.arrow_forward_ios, size: 16)
                      ],
                    ),
                    const Divider(
                      color: Color.fromRGBO(237, 239, 246, 1),
                    ),
                    latestTransaction(
                      'assets/logo/Netflix.png',
                      "Netflix",
                      'Dec 24',
                      "   13:53",
                      "-\$35.23",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget latestTransaction(
      String imagePath, String type, String day, String time, String price) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(imagePath),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              type,
              style: GoogleFonts.sora(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(25, 25, 25, 1),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 600,
            ),
            RichText(
              text: TextSpan(
                text: day,
                style: GoogleFonts.sora(
                  fontSize: 12,
                  color: const Color.fromRGBO(134, 136, 147, 1),
                ),
                children: [
                  TextSpan(text: time),
                ],
              ),
            )
          ],
        ),
        const Spacer(),
        Text(
          price,
          style: GoogleFonts.sora(
            fontSize: 12,
            color: const Color.fromRGBO(184, 50, 50, 1),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 100,
        ),
        const Icon(Icons.arrow_forward_ios, size: 16)
      ],
    );
  }

  Widget recentTransactions(String profileImagePath, String name) {
    return Column(
      children: [
        Container(
          height: 64,
          width: 64,
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(230, 221, 255, 1),
          ),
          child: Image.asset(profileImagePath),
        ),
        Text(
          name,
          style: GoogleFonts.sora(
            fontSize: 12,
            color: const Color.fromRGBO(25, 25, 25, 1),
          ),
        ),
      ],
    );
  }

  Widget cardComponent(String imagePath, String type) {
    return Column(
      children: [
        SvgPicture.asset(
          imagePath,
          height: 25,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 80,
        ),
        Text(
          type,
          style: GoogleFonts.sora(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
