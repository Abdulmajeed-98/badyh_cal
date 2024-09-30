import 'package:badiyh_calendar/core/model/months.dart';
import 'package:badiyh_calendar/db/calendar_db.dart';

class MonthVM {
  List<Months> loadAllMonths() {
    CalendarDb db = CalendarDb();
    return db.calendar['months']!.map((e) => Months.fromMap(e)).toList();
  }
}
