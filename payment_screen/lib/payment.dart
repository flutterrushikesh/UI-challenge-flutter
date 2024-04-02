import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});
  @override
  State createState() => _Payment();
}

class _Payment extends State {
  bool detailScaffold = false;

  List containerColor = [
    const Color.fromRGBO(132, 139, 223, 0.7),
  ];
  List paymentList = [
    {
      'reson': 'Media',
      'transactions': 'last transaction',
      'total': '-\$2,240',
    },
    {
      'reson': 'Salary',
      'transactions': 'last transaction',
      'total': '+\$2,400',
    },
    {
      'reson': 'Travel',
      'transactions': 'last transaction',
      'total': '-\$1,840',
    },
    {
      'reson': 'Salary',
      'transactions': 'last transaction',
      'total': '+\$2,400',
    }
  ];

  Scaffold scaffolds() {
    if (detailScaffold == false) {
      return Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 100),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Control",
                    style: GoogleFonts.quicksand(
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Your ",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w600,
                          fontSize: 38,
                        ),
                      ),
                      Text(
                        "Payment",
                        style: GoogleFonts.quicksand(
                          fontSize: 38,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            // const SizedBox(height: 50),
            Container(
              height: 346,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    './assets/images/thumb.jpeg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 300,
              padding: const EdgeInsets.all(40),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 216, 251, 255),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  topLeft: Radius.circular(100),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Controll your payments with ease using Acme Finance",
                    style: GoogleFonts.jost(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        detailScaffold = true;
                      });
                    },
                    style: ButtonStyle(
                      minimumSize:
                          const MaterialStatePropertyAll(Size(100, 50)),
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.blue.shade400,
                      ),
                    ),
                    child: Text(
                      "Click me!",
                      style: GoogleFonts.jost(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  setState(() {});
                  detailScaffold = false;
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    Text(
                      "Andrew",
                      style: GoogleFonts.jost(
                        fontSize: 38,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Welcome Back!",
                      style: GoogleFonts.jost(
                        fontSize: 38,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(139, 172, 222, 1),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(58, 26, 139, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Balance",
                      style: GoogleFonts.quicksand(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "\$18,670 ",
                      style: GoogleFonts.quicksand(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "---- ---- ----",
                          style: GoogleFonts.quicksand(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "  9723",
                          style: GoogleFonts.quicksand(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "VALID THRU",
                          style: GoogleFonts.quicksand(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          "CVV",
                          style: GoogleFonts.quicksand(
                              fontSize: 18,
                              fontWeight: FontWeight.w200,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "10/2025",
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 68,
                        ),
                        Text(
                          "---",
                          style: GoogleFonts.quicksand(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Text(
                  "Recent Transactions",
                  style: GoogleFonts.jost(
                      fontWeight: FontWeight.w500, fontSize: 25),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: paymentList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(15),
                      height: 120,
                      decoration: BoxDecoration(
                        color: containerColor[index % containerColor.length],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            margin: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(132, 139, 223, 1),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 20),
                              Text(
                                paymentList[index]['reson'],
                                style: GoogleFonts.jost(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                paymentList[index]['transactions'],
                                style: GoogleFonts.jost(
                                  fontSize: 19,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            paymentList[index]['total'],
                            style: GoogleFonts.jost(fontSize: 18),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return scaffolds();
  }
}
