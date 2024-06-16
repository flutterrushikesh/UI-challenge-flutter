import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAdds extends StatefulWidget {
  final String description;
  final String buttonName;
  final String imagePath;
  const MyAdds({
    super.key,
    required this.buttonName,
    required this.description,
    required this.imagePath,
  });

  @override
  State<MyAdds> createState() => _MyAddsState();
}

class _MyAddsState extends State<MyAdds> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            spreadRadius: -4,
            blurRadius: 16,
            offset: Offset(0, 8),
            color: Color.fromRGBO(22, 34, 51, 0.08),
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.description,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(245, 146, 69, 1))),
                child: Text(
                  widget.buttonName,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          Image.asset(widget.imagePath)
        ],
      ),
    );
  }
}
