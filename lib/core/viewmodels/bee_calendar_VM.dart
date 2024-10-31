import 'package:badiyh_calendar/core/models/bee_calendar.dart';
import 'package:badiyh_calendar/core/models/stars.dart';
import 'package:badiyh_calendar/core/viewModels/CalendarDateVM.dart';
import 'package:badiyh_calendar/core/viewModels/star_VM.dart';
import 'package:badiyh_calendar/db/beeCalendar_db.dart';
import 'package:flutter/material.dart';

class BeeCalendarVM with ChangeNotifier {
  List<BeeCalendar> _allBee = [];
  bool _showAll = false;
  List<BeeCalendar> get displayedBee => _allBee = loadAllBeePhases();
  bool get showAll => _showAll;

  void toggleShowAll() {
    _showAll = !_showAll;
    notifyListeners();
  }

  List<BeeCalendar> loadAllBeePhases() {
    CalendarDateVM calVM = CalendarDateVM();
    BeeCalendar_DB db = BeeCalendar_DB();
    return db.beeCalendar.map((e) => BeeCalendar.fromJson(e)).toList();
  }

  String? getBeePhase(CalendarDateVM cal) {
    StarVM staVM = StarVM();
    BeeCalendarVM bvm = BeeCalendarVM();
    // late List<BeeCalendar> allBee;
    _allBee = loadAllBeePhases();
    List<Stars> lisStar2 = staVM.loadAllStars();
    int indexStar = staVM.getStar(cal.selectedDate);

    (lisStar2.sublist(2, 3).contains(lisStar2[indexStar]))
        ? _allBee[0].phaseName
        : (lisStar2.sublist(3, 7).contains(lisStar2[indexStar]))
            ? _allBee[1].phaseName
            : (lisStar2.sublist(7, 9).contains(lisStar2[indexStar]))
                ? _allBee[2].phaseName
                : (lisStar2.sublist(9, 12).contains(lisStar2[indexStar]))
                    ? _allBee[3].phaseName
                    : (lisStar2.sublist(12, 15).contains(lisStar2[indexStar]))
                        ? _allBee[4].phaseName
                        : (lisStar2
                                .sublist(15, 18)
                                .contains(lisStar2[indexStar]))
                            ? _allBee[5].phaseName
                            : (lisStar2
                                    .sublist(18, 24)
                                    .contains(lisStar2[indexStar]))
                                ? _allBee[6].phaseName
                                : (lisStar2
                                        .sublist(24, 26)
                                        .contains(lisStar2[indexStar]))
                                    ? _allBee[7].phaseName
                                    : (lisStar2.sublist(26, 28).contains(
                                                lisStar2[indexStar]) ||
                                            lisStar2
                                                .sublist(0, 2)
                                                .contains(lisStar2[indexStar]))
                                        ? _allBee[8].phaseName
                                        : "Nothing";
  }
}
