import 'package:badiyh_calendar/core/model/stars.dart';

class Months {
  late int monthID;
  late String monthName;
  late int monthNum;
  late int seasonsID;
  late List<StarTwo> stars;

  Months(
      {required this.monthID,
      required this.monthName,
      required this.monthNum,
      required this.seasonsID,
      required this.stars});

  Months.fromMap(Map<String, dynamic> json) {
    monthID = json['monthID'];
    monthName = json['monthName'];
    monthNum = json['monthNum'];
    seasonsID = json['seasonsID'];
    if (json['stars'] != null) {
      stars = <StarTwo>[];
      json['stars'].forEach((v) {
        stars!.add(new StarTwo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['monthID'] = this.monthID;
    data['monthName'] = this.monthName;
    data['monthNum'] = this.monthNum;
    data['seasonsID'] = this.seasonsID;
    if (this.stars != null) {
      data['stars'] = this.stars!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StarTwo {
  List<int>? starID;

  StarTwo({this.starID});

  StarTwo.fromJson(Map<String, dynamic> json) {
    starID = json['StarID'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['StarID'] = this.starID;
    return data;
  }
}
