import 'package:badiyh_calendar/core/model/stars.dart';
import 'package:badiyh_calendar/db/calendar_db.dart';

class StarVM {
  List<Stars> loadAllStars() {
    CalendarDb db = CalendarDb();
    return db.calendar['stars']!.map((e) => Stars.fromMap(e)).toList();
  }
}
