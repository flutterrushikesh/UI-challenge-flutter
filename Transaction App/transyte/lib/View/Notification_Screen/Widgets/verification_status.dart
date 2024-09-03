import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/verification_status_controller.dart';

class VerificationStatus extends StatelessWidget {
  const VerificationStatus({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    final VerificationStatusController localObj =
        Provider.of<VerificationStatusController>(context, listen: false);
    return Container(
      padding: EdgeInsets.only(
        top: screenHeight * 0.03,
        bottom: screenHeight * 0.03,
        right: screenWidth * 0.051,
        left: screenWidth * 0.051,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(7, 5, 26, 0.07),
            blurRadius: 50,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Complete Verification",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                ),
              ),
              Text(
                "60%",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(9, 112, 62, 1),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          LinearProgressIndicator(
            backgroundColor: const Color.fromRGBO(8, 4, 34, 0.1),
            valueColor: const AlwaysStoppedAnimation(
              Color.fromRGBO(9, 112, 62, 1),
            ),
            value: 0.6,
            minHeight: screenHeight * 0.012,
            borderRadius: BorderRadius.circular(100),
          ),
          SizedBox(
            height: screenHeight * 0.032,
          ),
          Column(
            children: List.generate(
              localObj.listOfdata.length,
              (index) => Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: screenWidth * 0.02),
                    child: Image.asset(localObj.listOfdata[index].iconPath),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          localObj.listOfdata[index].title,
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.031,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.005,
                        ),
                        Text(
                          localObj.listOfdata[index].discription,
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.026,
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        )
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
