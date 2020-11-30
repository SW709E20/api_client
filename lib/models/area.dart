import 'package:flutter/cupertino.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';

class AreaModel {
  String name;
  List<String> subareaList = [];
  GeoCoord location = GeoCoord(0, 0);
  int numberOfPeople = 0;
  int threshold = -1;

  AreaModel(
      {@required this.name,
      @required this.location,
      @required this.numberOfPeople,
      this.threshold});

  AreaModel.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      throw const FormatException(
          '[ActivityModel]: Cannot initialize from null');
    }

    name = json['name'];
    location = GeoCoord(json['latitude'], json['longitude']);
    numberOfPeople = json['numberOfPeople'];
    if (json['threshold'] != null){
      threshold = json['threshold'];
    }
  }

  bool operator ==(o) => o is AreaModel && name == o.name;

  int get hashCode => name.hashCode;

  @override
  String toString() {
    return name;
  }
}
