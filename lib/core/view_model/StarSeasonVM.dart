import 'package:badiyh_calendar/core/model/Season.dart';
import 'package:badiyh_calendar/core/model/Star.dart';
import 'package:badiyh_calendar/core/model/StarSeason.dart';
import 'package:badiyh_calendar/core/view_model/SeasonVM.dart';
import 'package:badiyh_calendar/core/view_model/StarVM.dart';

class StarSeasonVM {
  final int starSeasonID;
  final StarVM star;
  final SeasonVM season;

  StarSeasonVM({required this.starSeasonID, required this.star, required this.season});

  factory StarSeasonVM.fromStarSeason(StarSeason starSeason, Star star, Season season) {
    return StarSeasonVM(
      starSeasonID: starSeason.starSeasonID,
      star: StarVM.fromStar(star),
      season: SeasonVM.fromSeason(season, []), // بدون النجوم المرتبطة مؤقتًا
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'StarSeasonID': starSeasonID,
      'Star': star.toJson(),
      'Season': season.toJson(),
    };
  }
}
