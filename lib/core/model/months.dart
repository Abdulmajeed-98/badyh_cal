import 'package:badiyh_calendar/core/model/stars.dart';

class Months {
  late int monthID;
  late String monthName;
  late int monthNum;
  late int seasonsID;
  late String crops;
  late List<Stars> stars;

  Months(
      {required this.monthID,
      required this.monthName,
      required this.monthNum,
      required this.seasonsID,
      required this.crops,
      required this.stars});

  Months.fromMap(Map<String, dynamic> json) {
    monthID = json['monthID'];
    monthName = json['monthName'];
    monthNum = json['monthNum'];
    seasonsID = json['seasonsID'];
    crops = json['crops'];
    stars = <Stars>[];
    json['stars'].forEach((v) {
      stars.add(Stars.fromJson(v));
    });
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['monthID'] = monthID;
    data['monthName'] = monthName;
    data['monthNum'] = monthNum;
    data['seasonsID'] = seasonsID;
    data['crops'] = crops;
    data['stars'] = stars.map((v) => v.toJson()).toList();
    return data;
  }
}
