import 'package:vibe_stream/model/music_list_model.dart';

class MusicListController {
  List<MusicListModel> listOfMusic = [
    MusicListModel(
      lablePath: 'assets/images/dead inside.png',
      musicName: "Dead inside",
      publishYear: 2020,
    ),
    MusicListModel(
      lablePath: 'assets/images/alone.png',
      musicName: "Alone",
      publishYear: 2023,
    ),
    MusicListModel(
      lablePath: 'assets/images/heartless.png',
      musicName: "Heartless",
      publishYear: 2023,
    ),
  ];
}
