import 'package:badiyh_calendar/core/viewmodels/month_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/season_v_m.dart';
import 'package:badiyh_calendar/db/edit_calender_db.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import '../model/stars.dart';

class StarVM with ChangeNotifier {
  List<Stars> _allStars = [];
  bool _showAll = false;
  List<Stars> get displayedStars => _allStars = loadAllStars();
  bool get showAll => _showAll;

  MonthVM mvm = MonthVM();

  List<Stars> loadAllStars() {
    EditCalenderDb db = EditCalenderDb();
    List<dynamic> calenderDb = db.editCalender;
    // List<Stars> allStars = [];
    Set<String> starNames = {};
    List<Stars> loadAll = [];
    for (var season in calenderDb) {
      for (var month in season["months"]) {
        for (var star in month['stars']) {
          if (!starNames.contains(star["StarName"])) {
            loadAll.add(Stars.fromJson(star));
            starNames.add(star["StarName"]);
          }
        }
      }
    }
    // notifyListeners();
    return loadAll;
  }

  //////////////

  // void loadStars(List<Stars> stars) {
  //   _allStars = stars;
  //   notifyListeners();
  // }

  void toggleShowAll() {
    _showAll = !_showAll;
    notifyListeners();
  }

//////////
  SeasonVM seaVM = SeasonVM();
  getStar(DateTime selectedDate) {
    var dateNow =
        Jiffy.parse(Jiffy.parse(selectedDate.toString()).MMMd, pattern: "MMMd");
    var firstMonth = Jiffy.parse('01 January', pattern: 'dd MMMM');
    int starDuration = 13;
    int starsNum = 28;

    for (int i = 0; i <= starsNum; i++) {
      var starStart = firstMonth.clone().add(days: i * starDuration);
      var starEnd = starStart.clone().add(days: starDuration - 1);
      if (i == 27) {
        starEnd = starStart.clone().add(days: starDuration);
        if (dateNow.isBetween(starStart, starEnd, unit: Unit.day) ||
            dateNow.isSame(starStart, unit: Unit.day) ||
            dateNow.isSame(starEnd, unit: Unit.day)) {
          return i;
        }
      } else if (dateNow.isBetween(starStart, starEnd, unit: Unit.day) ||
          dateNow.isSame(starStart, unit: Unit.day) ||
          dateNow.isSame(starEnd, unit: Unit.day)) {
        return i;
      }
    }

    return " ";
  }
}
