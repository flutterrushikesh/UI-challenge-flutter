import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:renture/controller/llist_of_features_controller.dart';
import 'package:renture/model/most_popular_model.dart';

class DetailsScreen extends StatefulWidget {
  final MostPopularModel obj;
  const DetailsScreen({super.key, required this.obj});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: Text(
          "Details",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                widget.obj.imagePath,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.obj.houseName,
                  style: GoogleFonts.sora(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: "\$ ${widget.obj.price}",
                    style: GoogleFonts.sora(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(32, 169, 247, 1),
                    ),
                    children: [
                      TextSpan(
                          text: "  /Month",
                          style: GoogleFonts.sora(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(72, 72, 72, 1),
                          )),
                    ],
                  ),
                )
              ],
            ),
            RichText(
              text: TextSpan(
                text: widget.obj.location,
                style: GoogleFonts.sora(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(72, 72, 72, 1),
                ),
                children: [
                  TextSpan(
                    text: widget.obj.type,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Provider.of<FeatureController>(context)
                    .listOfFeature
                    .length,
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
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Expanded(
              child: Text(
                textAlign: TextAlign.justify,
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet',
                style: GoogleFonts.sora(
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            Color.fromRGBO(32, 169, 247, 1),
          ),
        ),
        child: Text(
          "Rent now",
          style: GoogleFonts.poppins(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
