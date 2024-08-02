class NearbyLocationModel {
  String name;
  String location;
  String imagePath;
  String locationIcon;

  String sofaIcon;
  String bathroomIcon;
  int bedroomCount;
  int bathroomCount;
  int price;

  NearbyLocationModel({
    required this.bathroomCount,
    required this.bathroomIcon,
    required this.bedroomCount,
    required this.imagePath,
    required this.location,
    required this.locationIcon,
    required this.name,
    required this.price,
    required this.sofaIcon,
  });
}
