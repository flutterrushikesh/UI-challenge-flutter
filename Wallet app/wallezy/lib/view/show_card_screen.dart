import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowCardScreen extends StatelessWidget {
  const ShowCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                color: Color.fromRGBO(29, 98, 202, 1),
              ),
              Text(
                "Back",
                style: GoogleFonts.sora(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(29, 98, 202, 1),
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        width: double.infinity,
        // width: MediaQuery.of(context).size.height / 2.4,
        height: MediaQuery.of(context).size.height / 4.5,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(39, 6, 133, 1),
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.2),
              blurRadius: 24,
              offset: Offset(0, 16),
            )
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset('assets/images/Ellipse.png'),
            Positioned(
              top: MediaQuery.of(context).size.height / 9.7,
              left: MediaQuery.of(context).size.width / 2.7,
              child: Image.asset('assets/images/Ellipse 2.png'),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 15,
              left: MediaQuery.of(context).size.width / 1.7,
              child: Image.asset("assets/images/Ellipse 3.png"),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Abdullah Ghatasheh",
                      style: GoogleFonts.sora(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "**** 5432",
                      style: GoogleFonts.sora(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Balance",
                        style: GoogleFonts.sora(
                          fontSize: 12,
                          color: const Color.fromRGBO(230, 221, 255, 1),
                        ),
                      ),
                      Text(
                        "\$2,354",
                        style: GoogleFonts.sora(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(230, 221, 255, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize:
                const WidgetStatePropertyAll(Size(double.infinity, 50)),
            backgroundColor: const WidgetStatePropertyAll(
              Color.fromRGBO(87, 50, 191, 1),
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.qr_code_scanner_outlined,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "QR Pay",
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
