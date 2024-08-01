import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallezy/model/history_model.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List<HistoryModel> objList = [
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
    HistoryModel(
      amount: "-\$35.23",
      day: "Today",
      imagePath: 'assets/logo/Wallmart.png',
      name: "Walmart",
      time: '12:32',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "History",
          style: GoogleFonts.sora(
            fontSize: 24,
            color: const Color.fromRGBO(25, 25, 25, 1),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.6,
                  child: TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color.fromRGBO(186, 194, 199, 1),
                      ),
                      hintText: "Value goes here",
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
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 30,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: const Color.fromRGBO(225, 227, 237, 1),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/icons/filter.png'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 42,
                      ),
                      Text(
                        "Filter",
                        style: GoogleFonts.sora(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 60,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: objList.length,
                separatorBuilder: (context, index) {
                  return Text("Rushi");
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(objList[index].imagePath),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                objList[index].name,
                                style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(25, 25, 25, 1),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 600,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: objList[index].day,
                                  style: GoogleFonts.sora(
                                    fontSize: 12,
                                    color:
                                        const Color.fromRGBO(134, 136, 147, 1),
                                  ),
                                  children: [
                                    TextSpan(text: objList[index].time),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          Text(
                            objList[index].amount,
                            style: GoogleFonts.sora(
                              fontSize: 12,
                              color: const Color.fromRGBO(184, 50, 50, 1),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 100,
                          ),
                          const Icon(Icons.arrow_forward_ios, size: 16)
                        ],
                      ),
                      const Divider(
                        color: Color.fromRGBO(237, 239, 246, 1),
                        thickness: 2,
                      )
                    ],
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
