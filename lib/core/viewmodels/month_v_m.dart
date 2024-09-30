import 'package:badiyh_calendar/core/model/all_models.dart';
import 'package:badiyh_calendar/core/viewmodels/season_v_m.dart';

class MonthVM {
  SeasonVM svm = SeasonVM();
  List<Months> loadMonthsBySeason(Seasons season) {
    try {
      List<Months> seasonMonths = [];
      List<Seasons> allSeasons = svm.loadAllSeasons();
      allSeasons.forEach((s) {
        if (s.seasonID == season.seasonID) {
          seasonMonths.addAll(s.months);
        }
      });
      return seasonMonths;
    } catch (e) {
      print(e);
      //  print('sadasdas');
      return [];
    }
  }
}
