import '../constants.dart';

class Car {
  final int id;
  final String title;
  final String description;
  final String url;
  final double pricePerDay;
  bool selected;
  final List<dynamic> features;

  Car({
    this.id,
    this.title,
    this.description,
    this.url,
    this.pricePerDay,
    this.selected,
    this.features,
  });

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      id: json[carsIdKey],
      title: json[carsTitleKey],
      description: json[carsDescriptionKey],
      url: json[carsUrlKey],
      pricePerDay: json[carsPricePerDayKey],
      selected: false,
      features: json[carsFeaturesKey],
    );
  }
}

class CarsList {
  final List<Car> items;

  final String errorMessage;

  CarsList(
    this.items,
    this.errorMessage,
  );
}
