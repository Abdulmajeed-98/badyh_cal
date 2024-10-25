import 'package:badiyh_calendar/core/model/bee_calendar.dart';
import 'package:badiyh_calendar/core/model/stars.dart';
import 'package:badiyh_calendar/core/viewmodels/CalendarDateVM.dart';
import 'package:badiyh_calendar/core/viewmodels/star_v_m.dart';
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

    if (lisStar2.sublist(2, 3).contains(lisStar2[indexStar])) {
      return _allBee[0].phaseName;
    } else if (lisStar2.sublist(3, 7).contains(lisStar2[indexStar])) {
      return _allBee[1].phaseName;
    } else if (lisStar2.sublist(7, 9).contains(lisStar2[indexStar])) {
      return _allBee[2].phaseName;
    } else if (lisStar2.sublist(9, 12).contains(lisStar2[indexStar])) {
      return _allBee[3].phaseName;
    } else if (lisStar2.sublist(12, 15).contains(lisStar2[indexStar])) {
      return _allBee[4].phaseName;
    } else if (lisStar2.sublist(15, 18).contains(lisStar2[indexStar])) {
      return _allBee[5].phaseName;
    } else if (lisStar2.sublist(18, 24).contains(lisStar2[indexStar])) {
      return _allBee[6].phaseName;
    } else if (lisStar2.sublist(24, 26).contains(lisStar2[indexStar])) {
      return _allBee[7].phaseName;
    } else if (lisStar2.sublist(26, 28).contains(lisStar2[indexStar]) ||
        lisStar2.sublist(0, 2).contains(lisStar2[indexStar])) {
      return _allBee[8].phaseName;
    } else
      return "Nothing";
  }

  // String? getBeePhase() {
  //   StarVM staVM = StarVM();
  //   BeeCalendarVM bvm = BeeCalendarVM();
  //   CalendarDateVM selrectD = CalendarDateVM();
  //   late List<BeeCalendar> allBee;
  //   allBee = bvm.loadAllBeePhases();
  //   List<Stars> lisStar2 = staVM.loadAllStars();
  //   int indexStar = staVM.getStar(selrectD.selectedDate);

  //   if (lisStar2[indexStar].starName == "النثرة") {
  //     notifyListeners();
  //     return allBee[1].phaseName;
  //   } else if (lisStar2[indexStar].starName == "الدلو") {
  //     notifyListeners();
  //     return allBee[6].phaseName;
  //   } else if (lisStar2[indexStar].starName == "الحوت") {
  //     notifyListeners();
  //     return allBee[2].phaseName;
  //   } else
  //     notifyListeners();
  //   return allBee[4].phaseName;
  // }
/////////////////////////
  // String? getBeePhase() {
  //   StarVM staVM = StarVM();
  //   BeeCalendarVM bvm = BeeCalendarVM();
  //   late List<BeeCalendar> allBee;
  //   allBee = bvm.loadAllBeePhases();
  //   List<Stars> lisStar = staVM.loadAllStars();
  //   String? starBee;
  //   if (lisStar[1].starName == "النثرة") {
  //     return allBee[1].phaseName;
  //   } else if (lisStar[21].starName == "الدلو") {
  //     return allBee[6].phaseName;
  //   } else
  //     return allBee[5].phaseName;
  // }
}

// class StarsVM {
//   List<BeeCalendar> loadAllBeePhases() {
//     CalendarDb db = CalendarDb();
//     return db.calendar['beeKeepingPhases']!
//         .map((e) => BeeCalendar.fromJson(e))
//         .toList();
//   }
// }
