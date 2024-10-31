import 'package:badiyh_calendar/core/models/months.dart';

class Seasons {
  late int seasonID;
  late String seasonName;
  late List<Months> months;

  Seasons(
      {required this.seasonID, required this.seasonName, required this.months});

  Seasons.fromMap(Map<String, dynamic> json) {
    seasonID = json['SeasonID'];
    seasonName = json['SeasonName'];
    months = <Months>[];
    json['months'].forEach((v) {
      months.add(Months.fromMap(v));
    });
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['SeasonID'] = seasonID;
    data['SeasonName'] = seasonName;
    data['months'] = months.map((v) => v.toJson()).toList();
    return data;
  }
}
