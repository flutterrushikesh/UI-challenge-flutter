import 'package:flutter/material.dart';
import 'package:music_app/view/discography.dart';
import 'package:music_app/view/mysongtitle.dart';
import 'package:music_app/view/mytitlestyle.dart';

class DiscographyRow extends StatelessWidget {
  const DiscographyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 20,
                  bottom: 10,
                ),
                child: const MyDiscography(
                  imagePath: 'assets/images/deadinside.png',
                ),
              ),
              const MySongTitle(mysongTitle: "Dead inside"),
              const SongRelease(releaseyear: "2020"),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20, bottom: 10),
                child: const MyDiscography(
                  imagePath: 'assets/images/alonemusic.png',
                ),
              ),
              const MySongTitle(mysongTitle: "Alone"),
              const SongRelease(releaseyear: "2023"),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: const MyDiscography(
                  imagePath: 'assets/images/heartless.png',
                ),
              ),
              const MySongTitle(mysongTitle: "Heartless"),
              const SongRelease(releaseyear: "2023"),
            ],
          ),
        ],
      ),
    );
  }
}
