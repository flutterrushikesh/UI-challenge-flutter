import 'package:renture/model/feature_model.dart';

class FeatureController {
  List<FeatureModel> listOfFeature = [
    FeatureModel(
      count: 5,
      iconName: 'Bedrooms',
      iconPath: "assets/icons/couch.png",
    ),
    FeatureModel(
      count: 6,
      iconName: 'Bathrooms',
      iconPath: "assets/icons/bath.png",
    ),
    FeatureModel(
      count: 7000,
      iconName: 'Square ft',
      iconPath: "assets/icons/sq ft.png",
    ),
  ];
}
