import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental/view/getstarted_screen.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Details',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(MaterialPageRoute(builder: (context) {
              return GetStartedScreen();
            }));
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Image.asset('assets/images/nighthilldetails.png'),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Night Hill Villa",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "London, Night Hill ",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text.rich(
                    TextSpan(
                      text: "\$5900",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: const Color.fromRGBO(32, 169, 247, 1),
                      ),
                      children: [
                        TextSpan(
                          text: " /Month",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(72, 72, 72, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Container(
                    height: 141,
                    width: 112,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(
                          Icons.chair,
                          color: Color.fromRGBO(90, 90, 90, 1),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Bedrooms',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(90, 90, 90, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '5',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(90, 90, 90, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 141,
                    width: 112,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/bathtub.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Bathrooms',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(90, 90, 90, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '6',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(90, 90, 90, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 141,
                    width: 112,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/squarefit.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Square ft',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(90, 90, 90, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '7000 sq ft',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: const Color.fromRGBO(32, 169, 247, 1),
        label: Text(
          'Rent Now',
          style: GoogleFonts.poppins(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
