class MusicListModel {
  String lablePath;
  String musicName;
  int publishYear;
  String imagePath;
  String title;
  String description;
  String? song;

  MusicListModel(this.song,
      {required this.imagePath,
      required this.description,
      required this.title,
      required this.lablePath,
      required this.musicName,
      required this.publishYear});
}
