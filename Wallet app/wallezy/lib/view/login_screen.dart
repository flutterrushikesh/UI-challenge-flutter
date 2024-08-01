import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallezy/view/create_account_screen.dart';
import 'package:wallezy/view/password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: const Color.fromRGBO(247, 244, 255, 1),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                Image.asset(
                  'assets/logo/TapnPay.png',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 13,
                ),
                Image.asset(
                  'assets/images/login mobie.png',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 9,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter your \nmobile number",
                    style: GoogleFonts.sora(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 36,
                  ),
                  Text(
                    'Mobile number',
                    style: GoogleFonts.sora(
                        fontSize: 12,
                        color: const Color.fromRGBO(25, 25, 25, 1)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 80,
                  ),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: Text(
                        "+91",
                        style: GoogleFonts.sora(
                            color: const Color.fromRGBO(25, 25, 25, 1)),
                      ),
                      hintText: "7X-XXXXXXXX",
                      hintStyle: GoogleFonts.sora(
                          color: const Color.fromRGBO(186, 194, 199, 1)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(172, 174, 187, 1),
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const CreateAccountScreen();
                          }));
                        },
                        child: Text(
                          "Create account?",
                          style: GoogleFonts.sora(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(29, 98, 202, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 65,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const PasswordScreen();
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
                      'Continue',
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
}
