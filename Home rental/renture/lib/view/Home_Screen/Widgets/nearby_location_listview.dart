import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:renture/controller/nearby_location_controller.dart';

class NearbyLocationListview extends StatelessWidget {
  const NearbyLocationListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.018,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                Provider.of<NearbyLocationController>(context).obj.imagePath,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Provider.of<NearbyLocationController>(context).obj.name,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.007,
                ),
                Row(
                  children: [
                    Image.asset(
                      Provider.of<NearbyLocationController>(context)
                          .obj
                          .locationIcon,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      Provider.of<NearbyLocationController>(context)
                          .obj
                          .location,
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.025,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(90, 90, 90, 1),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.007,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      Provider.of<NearbyLocationController>(context)
                          .obj
                          .sofaIcon,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      Provider.of<NearbyLocationController>(context)
                          .obj
                          .bedroomCount
                          .toString(),
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.027,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(90, 90, 90, 1),
                      ),
                    ),
                    Text(
                      ' bedrooms',
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.027,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(90, 90, 90, 1),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.013,
                    ),
                    Image.asset(
                      Provider.of<NearbyLocationController>(context)
                          .obj
                          .bathroomIcon,
                    ),
                    Text(
                      ' bedrooms',
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.027,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(90, 90, 90, 1),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.0334,
                    ),
                    RichText(
                      text: TextSpan(
                        text:
                            "\$ ${Provider.of<NearbyLocationController>(context).obj.price}",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(32, 169, 247, 1),
                        ),
                        children: [
                          TextSpan(
                            text: " /Month",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03,
                              color: const Color.fromRGBO(90, 90, 90, 1),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
