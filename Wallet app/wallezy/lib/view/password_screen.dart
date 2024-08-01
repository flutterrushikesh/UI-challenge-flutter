import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
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
        backgroundColor: const Color.fromRGBO(247, 244, 255, 1),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: const Color.fromRGBO(247, 244, 255, 1),
            child: Column(
              children: [
                Image.asset(
                  'assets/logo/TapnPay.png',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 13,
                ),
                Image.asset(
                  'assets/images/password.png',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter your password',
                    style: GoogleFonts.sora(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Text(
                    'Password',
                    style: GoogleFonts.sora(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 80,
                  ),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.visibility_off,
                        color: Color.fromRGBO(83, 93, 102, 1),
                      ),
                      hintText: "Enter your password",
                      hintStyle: GoogleFonts.sora(
                        color: const Color.fromRGBO(186, 194, 199, 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(186, 194, 199, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(186, 194, 199, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 90,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          showMybottomSheet();
                        },
                        child: Text(
                          "Forgot password?",
                          style: GoogleFonts.sora(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(29, 98, 202, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
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
                      'Login',
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showMybottomSheet() {
    showModalBottomSheet(
      elevation: 12,
      backgroundColor: Colors.white,
      context: (context),
      builder: (context) {
        return SizedBox(
          height: 350,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Forgot your password?",
                      style: GoogleFonts.sora(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(25, 25, 25, 1)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Done",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(29, 98, 202, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 70,
                ),
                Text(
                  'Email',
                  style: GoogleFonts.sora(
                    fontSize: 12,
                    color: const Color.fromRGBO(25, 25, 25, 1),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 80),
                TextFormField(
                  autofocus: false,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "e.g. email@example.com",
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
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
                    'Send reset link',
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showMobileNumberSheet();
                      },
                      child: Text(
                        'Use mobile instead',
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(29, 98, 202, 1),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void showMobileNumberSheet() {
    showModalBottomSheet(
      elevation: 12,
      backgroundColor: Colors.white,
      context: (context),
      builder: (context) {
        return SizedBox(
          height: 350,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Forgot your password?",
                      style: GoogleFonts.sora(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(25, 25, 25, 1)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Done",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(29, 98, 202, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 70,
                ),
                Text(
                  'Mobile number',
                  style: GoogleFonts.sora(
                    fontSize: 12,
                    color: const Color.fromRGBO(25, 25, 25, 1),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 80),
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
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
                    'Send reset link',
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showMobileNumberSheet();
                      },
                      child: Text(
                        'Use mobile instead',
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(29, 98, 202, 1),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
