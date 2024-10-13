import 'package:badiyh_calendar/core/model/months.dart';
import 'package:badiyh_calendar/core/model/seasons.dart';
import 'package:badiyh_calendar/core/viewmodels/season_v_m.dart';
import 'package:flutter/material.dart';

class MonthVM with ChangeNotifier {
  SeasonVM svm = SeasonVM();
  List<Months> loadMonthsBySeason(Seasons season) {
    try {
      List<Months> seasonMonths = [];
      List<Seasons> allSeasons = svm.loadAllSeasons();
      for (var s in allSeasons) {
        if (s.seasonID == season.seasonID) {
          seasonMonths.addAll(s.months);
        }
      }
      notifyListeners();
      return seasonMonths;
    } catch (e) {
      print(e);
      //  print('sadasdas');
      return [];
    }
  }

  List<Months> loadAllMonths() {
    try {
      List<Months> seasonMonths = [];
      List<Seasons> allSeasons = svm.loadAllSeasons();
      allSeasons.forEach((e) {
        seasonMonths.addAll(e.months);
      });
      notifyListeners();
      return seasonMonths;
    } catch (e) {
      print(e);
      //  print('sadasdas');
      return [];
    }
  }
}
