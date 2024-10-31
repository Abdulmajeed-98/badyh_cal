import 'package:badiyh_calendar/core/models/months.dart';
import 'package:badiyh_calendar/core/models/seasons.dart';
import 'package:badiyh_calendar/core/viewModels/season_VM.dart';
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
      return [];
    }
  }
}
