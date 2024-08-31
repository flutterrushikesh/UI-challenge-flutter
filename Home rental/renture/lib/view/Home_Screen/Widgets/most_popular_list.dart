import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:renture/controller/most_popular_controller.dart';
import 'package:renture/view/Details_Screen/details_screen.dart';

class MostPopularList extends StatelessWidget {
  const MostPopularList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.38,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Provider.of<MostPopularController>(context).list.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen(
                      obj: Provider.of<MostPopularController>(context)
                          .list[index],
                    );
                  },
                ),
              );
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.113,
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.025,
                right: MediaQuery.of(context).size.width * 0.025,
                top: MediaQuery.of(context).size.height * 0.012,
                bottom: MediaQuery.of(context).size.height * 0.012,
              ),
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.025,
                right: MediaQuery.of(context).size.width * 0.025,
                top: MediaQuery.of(context).size.height * 0.012,
                bottom: MediaQuery.of(context).size.height * 0.012,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  15,
                ),
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Provider.of<MostPopularController>(context)
                        .list[index]
                        .imagePath,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.016,
                  ),
                  Text(
                    Provider.of<MostPopularController>(context)
                        .list[index]
                        .houseName,
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.039,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.006,
                  ),
                  RichText(
                    text: TextSpan(
                      text: Provider.of<MostPopularController>(context)
                          .list[index]
                          .location,
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(72, 72, 72, 1),
                      ),
                      children: [
                        TextSpan(
                          text: Provider.of<MostPopularController>(context)
                              .list[index]
                              .type,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.006,
                  ),
                  RichText(
                    text: TextSpan(
                      text:
                          "\$ ${Provider.of<MostPopularController>(context).list[index].price}",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(32, 169, 247, 1),
                      ),
                      children: [
                        TextSpan(
                          text: ' /Month',
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.031,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(72, 72, 72, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
