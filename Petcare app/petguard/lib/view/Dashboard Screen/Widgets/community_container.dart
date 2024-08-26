import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityContainer extends StatelessWidget {
  const CommunityContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(
        top: screenHeight * 0.018,
        right: screenWidth * 0.031,
        left: screenWidth * 0.031,
      ),
      margin: EdgeInsets.only(
        top: screenHeight * 0.014,
        bottom: screenHeight * 0.05,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Connect and share with \ncommunities!",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.033,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(
                    Color.fromRGBO(245, 146, 69, 1),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                child: Text(
                  "See More",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.031,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Image.asset('assets/images/community.png')
        ],
      ),
    );
  }
}
