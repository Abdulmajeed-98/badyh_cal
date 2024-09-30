import 'package:badiyh_calendar/core/model/bee_calendar.dart';
import 'package:badiyh_calendar/db/beeCalendar_db.dart';

class BeeCalendarVM {
  
  List<BeeCalendar> loadAllBeePhases() {
    BeeCalendar_DB db = BeeCalendar_DB();
    return db.beeCalendar!
        .map((e) => BeeCalendar.fromJson(e))
        .toList();
  }
}
// class StarsVM {
//   List<BeeCalendar> loadAllBeePhases() {
//     CalendarDb db = CalendarDb();
//     return db.calendar['beeKeepingPhases']!
//         .map((e) => BeeCalendar.fromJson(e))
//         .toList();
//   }
// }
