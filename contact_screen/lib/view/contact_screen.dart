import 'package:contact_screen/model/contact_list_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State createState() => _ContactScreenState();
}

class _ContactScreenState extends State {
  List<ContactModel> contactList = [
    const ContactModel(
      contactNo: "+91 983456 38783",
      name: "Akash",
      inOutImgPath: 'assets/images/incoming.png',
      profilePath: 'assets/images/akash.png',
      time: '02:45 PM',
    ),
    const ContactModel(
      contactNo: '91 80463 76786',
      name: 'Sankar',
      inOutImgPath: 'assets/images/incoming.png',
      profilePath: 'assets/images/shankar.png',
      time: '02:45 PM',
    ),
    const ContactModel(
      contactNo: '+91 73684 89078',
      name: 'John',
      inOutImgPath: 'assets/images/incoming.png',
      profilePath: 'assets/images/john.png',
      time: '02:45 PM',
    ),
    const ContactModel(
      contactNo: '+91 90537 43635',
      name: 'Kamatchi ',
      inOutImgPath: 'assets/images/incoming.png',
      profilePath: 'assets/images/kamatchi.png',
      time: '02:40 PM',
    ),
    const ContactModel(
      contactNo: '+91 80547 53625',
      name: 'Robert ',
      inOutImgPath: 'assets/images/outgoing.png',
      profilePath: 'assets/images/robert.png',
      time: '01:27 PM',
    ),
    const ContactModel(
      contactNo: '+91 90436 54334',
      name: 'Niyas ',
      inOutImgPath: 'assets/images/incoming.png',
      profilePath: 'assets/images/niyas.png',
      time: '01:06 PM',
    ),
    const ContactModel(
      contactNo: '+91 91767 65774',
      name: 'Alex',
      inOutImgPath: 'assets/images/incoming.png',
      profilePath: 'assets/images/alex.png',
      time: '01:00 PM',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/menu.png'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Calls",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: const Color.fromRGBO(72, 69, 84, 1),
                  ),
                ),
                const Icon(
                  (Icons.search),
                  size: 35,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding:
                  const EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromRGBO(217, 217, 217, 1),
              ),
              child: Text(
                "Today",
                style: GoogleFonts.inter(
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: contactList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Image.asset(contactList[index].profilePath)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              contactList[index].name,
                              style: GoogleFonts.inter(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              contactList[index].contactNo,
                              style: GoogleFonts.inter(
                                fontSize: 12.44,
                                color: const Color.fromRGBO(155, 152, 164, 1),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(contactList[index].inOutImgPath),
                        const SizedBox(width: 10),
                        Text(
                          contactList[index].time,
                          style: GoogleFonts.inter(
                            fontSize: 11,
                            color: const Color.fromRGBO(72, 69, 84, 0.6),
                          ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 10,
        backgroundColor: const Color.fromRGBO(231, 230, 238, 1),
        child: const Icon(
          Icons.dialpad_rounded,
          size: 40,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(231, 230, 238, 1),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.message_2,
              color: Color.fromRGBO(72, 69, 84, 1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.home,
              color: Color.fromRGBO(72, 69, 84, 1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.call,
              color: Color.fromRGBO(72, 69, 84, 1),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
