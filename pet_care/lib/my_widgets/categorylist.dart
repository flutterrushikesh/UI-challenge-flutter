import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryList extends StatefulWidget {
  final dynamic navigateTo;
  final String categorypath;
  final String categoryName;
  const CategoryList(
      {required this.categorypath,
      required this.categoryName,
      super.key,
      this.navigateTo});

  @override
  State createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return widget.navigateTo;
            },
          ),
        );
      },
      child: Column(
        children: [
          Image.asset(widget.categorypath),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.categoryName,
            style: GoogleFonts.poppins(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
