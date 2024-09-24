import 'package:badiyh_calendar/core/model/Season.dart';
import 'package:badiyh_calendar/core/model/Star.dart';
import 'package:badiyh_calendar/core/view_model/StarVM.dart';

class SeasonVM {
  final int seasonID;
  final String seasonName;
  List<StarVM> stars; // قائمة النجوم المرتبطة بهذا الفصل

  SeasonVM({required this.seasonID, required this.seasonName, required this.stars});

  factory SeasonVM.fromSeason(Season season, List<Star> stars) {
    return SeasonVM(
      seasonID: season.seasonID,
      seasonName: season.seasonName,
      stars: stars.map((star) => StarVM.fromStar(star)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'SeasonID': seasonID,
      'SeasonName': seasonName,
      'Stars': stars.map((star) => star.toJson()).toList(),
    };
  }
}
