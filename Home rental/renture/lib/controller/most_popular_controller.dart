import 'package:renture/model/most_popular_model.dart';

class MostPopularController {
  List<MostPopularModel> list = [
    MostPopularModel(
      houseName: "Night Hill Villa",
      imagePath: 'assets/images/hill villa.png',
      location: "London, ",
      price: 5900,
      type: "Night Hill",
    ),
    MostPopularModel(
      houseName: "Night Villa",
      imagePath: 'assets/images/night villa.png',
      location: "London, ",
      price: 4900,
      type: "New Park",
    )
  ];
}
