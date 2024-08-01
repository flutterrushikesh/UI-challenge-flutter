import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallezy/view/home_screen.dart';
import 'package:wallezy/view/my_bottom_navigation.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  List<TextEditingController> otpControllers = List.generate(6, (_) {
    return TextEditingController();
  });

  int timeStart = 30;
  bool isRunningTime = false;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void startTimer() {
    isRunningTime = true;
    Timer _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (timeStart > 0) {
          timeStart--;
        } else {
          timer.cancel();
          isRunningTime = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Color.fromRGBO(29, 98, 202, 1),
              ),
            ),
            Text(
              "Back",
              style: GoogleFonts.sora(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: const Color.fromRGBO(29, 98, 202, 1)),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/logo/TapnPay.png',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 28,
          ),
          Text(
            'An SMS sent to your mobile number \n+962 79 XXX-XXXX',
            textAlign: TextAlign.center,
            style: GoogleFonts.sora(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 50),
          Text(
            'Enter six-digit code',
            style: GoogleFonts.sora(
              fontSize: 12,
              color: const Color.fromRGBO(120, 131, 141, 1),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              6,
              (index) {
                return SizedBox(
                  width: 40,
                  child: TextFormField(
                    autofocus: true,
                    style: GoogleFonts.sora(fontSize: 36),
                    controller: otpControllers[index],
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "X",
                      hintStyle: GoogleFonts.sora(
                        fontSize: 36,
                        color: const Color.fromRGBO(186, 194, 199, 1),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 6) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 25),
          RichText(
            text: TextSpan(
                text: "Resend code ",
                style: GoogleFonts.sora(
                  color: isRunningTime
                      ? const Color.fromRGBO(120, 131, 141, 1)
                      : const Color.fromRGBO(29, 98, 202, 1),
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  TextSpan(
                      text: " 00:$timeStart",
                      style: GoogleFonts.sora(
                        color: Colors.black,
                      ))
                ]),
          )
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(12),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (context) {
              return const MyBottomNavigation();
            }));
          },
          style: ButtonStyle(
              backgroundColor: const WidgetStatePropertyAll(
                Color.fromRGBO(87, 50, 191, 1),
              ),
              minimumSize: const WidgetStatePropertyAll(
                Size(double.infinity, 50),
              ),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              )),
          child: Text(
            "Done",
            style: GoogleFonts.sora(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
