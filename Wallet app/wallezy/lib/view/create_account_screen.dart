import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallezy/view/login_screen.dart';
import 'package:wallezy/view/my_bottom_navigation.dart';
import 'package:wallezy/view/otp_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool termAndCondition = false;
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'assets/logo/TapnPay.png',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create Account",
                  style: GoogleFonts.sora(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(25, 25, 25, 1),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Text(
                  'Name',
                  style: GoogleFonts.sora(
                      fontSize: 12, color: const Color.fromRGBO(25, 25, 25, 1)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                myTextFeilds("e.g. John Doe"),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Text(
                  "Email",
                  style: GoogleFonts.sora(fontSize: 12),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                myTextFeilds("e.g. email@example.com"),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Text(
                  "Password",
                  style: GoogleFonts.sora(fontSize: 12),
                ),
                TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.visibility_off,
                        color: Color.fromRGBO(186, 194, 199, 1),
                      ),
                    ),
                    hintText: "Enter your password",
                    hintStyle: GoogleFonts.sora(
                      color: const Color.fromRGBO(186, 194, 199, 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(225, 227, 237, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(225, 227, 237, 1),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: termAndCondition,
                      onChanged: (value) {
                        setState(() {});
                        termAndCondition = value ?? false;
                      },
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'I accept ',
                        style: GoogleFonts.sora(
                            fontSize: 12,
                            color: const Color.fromRGBO(25, 25, 25, 1)),
                        children: [
                          TextSpan(
                            text: "terms and conditions ",
                            style: GoogleFonts.sora(
                              fontSize: 12,
                              color: const Color.fromRGBO(29, 98, 202, 1),
                            ),
                          ),
                          TextSpan(
                            text: 'and',
                            style: GoogleFonts.sora(
                              fontSize: 12,
                              color: const Color.fromRGBO(25, 25, 25, 1),
                            ),
                          ),
                          TextSpan(
                            text: " privacy policy ",
                            style: GoogleFonts.sora(
                              fontSize: 12,
                              color: const Color.fromRGBO(29, 98, 202, 1),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 70,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return BottomNavBar();
                        },
                      ),
                    );
                  },
                  style: ButtonStyle(
                    minimumSize: const WidgetStatePropertyAll(
                      Size(
                        double.infinity,
                        45,
                      ),
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    backgroundColor: const WidgetStatePropertyAll(
                      Color.fromRGBO(87, 50, 191, 1),
                    ),
                  ),
                  child: Text(
                    'Create a new account',
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'or continue using',
                      style: GoogleFonts.sora(
                        fontSize: 12,
                        color: const Color.fromRGBO(120, 131, 141, 1),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    continueUsingLogo('assets/logo/facebook.png'),
                    continueUsingLogo('assets/logo/Google.png'),
                    continueUsingLogo('assets/logo/apple.png'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget continueUsingLogo(String logoPath) {
    return Container(
      height: 45,
      width: 98,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(237, 239, 246, 1),
        ),
      ),
      child: Image.asset(logoPath),
    );
  }

  Widget myTextFeilds(String hintText) {
    return TextField(
      autofocus: false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.sora(
          color: const Color.fromRGBO(186, 194, 199, 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Color.fromRGBO(225, 227, 237, 1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Color.fromRGBO(225, 227, 237, 1),
          ),
        ),
      ),
    );
  }
}
