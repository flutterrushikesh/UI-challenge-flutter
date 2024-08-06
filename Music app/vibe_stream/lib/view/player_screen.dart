import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

import 'package:audio_session/audio_session.dart';
import 'package:flutter/services.dart';
import 'package:vibe_stream/model/music_list_model.dart';

class PlayerScreen extends StatefulWidget {
  final MusicListModel musicListModelObj;
  const PlayerScreen({super.key, required this.musicListModelObj});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                widget.musicListModelObj.imagePath,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2.3,
                child: Image.asset(
                  'assets/images/shaddow.png',
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 1.9,
                left: MediaQuery.of(context).size.width / 4.5,
                child: Column(
                  children: [
                    Text(
                      widget.musicListModelObj.title,
                      style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 61, 0, 1)),
                    ),
                    Text(
                      widget.musicListModelObj.description,
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dynamic Warmup |",
                  style: GoogleFonts.inter(color: Colors.white),
                ),
                Text(
                  "4 min",
                  style: GoogleFonts.inter(color: Colors.white),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: LinearProgressIndicator(
              color: Color.fromRGBO(230, 154, 21, 1),
              backgroundColor: Color.fromRGBO(217, 217, 217, 0.19),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     width: double.infinity,
          //     height: 1,

          //     color: Colors.white,
          //   ),
          // ),
          SizedBox(height: MediaQuery.of(context).size.height / 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/suffle.png',
                color: Colors.white,
                height: 30,
              ),
              Image.asset('assets/images/previous.png'),
              Image.asset('assets/images/play.png'),
              Image.asset('assets/images/next.png'),
              Image.asset('assets/images/speaker.png'),
            ],
          )
        ],
      ),
    );
  }
}
