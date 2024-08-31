import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:renture/controller/llist_of_features_controller.dart';

class RoomFeatures extends StatelessWidget {
  const RoomFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Provider.of<FeatureController>(context).listOfFeature.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  Provider.of<FeatureController>(context)
                      .listOfFeature[index]
                      .iconPath,
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                Text(
                  Provider.of<FeatureController>(context)
                      .listOfFeature[index]
                      .iconName,
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(90, 90, 90, 1),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Text(
                  "${Provider.of<FeatureController>(context).listOfFeature[index].count}",
                  style: GoogleFonts.sora(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
