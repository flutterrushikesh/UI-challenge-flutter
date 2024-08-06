import 'package:vibe_stream/model/music_list_model.dart';

class MusicListController {
  List<MusicListModel> listOfMusic = [
    MusicListModel(
      '',
      lablePath: 'assets/images/dead inside.png',
      musicName: "Dead inside",
      publishYear: 2020,
      imagePath: '',
      title: "Alone in the abyss",
      description: "Youlakou",
    ),
    MusicListModel(
      'https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3',
      lablePath: 'assets/images/alone.png',
      musicName: "Alone",
      publishYear: 2023,
      imagePath: 'assets/images/alone 2.png',
      title: "Alone in the abyss",
      description: "Youlakou",
    ),
    MusicListModel(
      '',
      lablePath: 'assets/images/heartless.png',
      imagePath: '',
      musicName: "Heartless",
      publishYear: 2023,
      title: "Alone in the abyss",
      description: "Youlakou",
    ),
  ];
}
