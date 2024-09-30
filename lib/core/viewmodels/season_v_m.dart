import 'package:badiyh_calendar/core/model/seasons.dart';
import 'package:badiyh_calendar/db/calendar_db.dart';

class SeasonVM {
  List<Seasons> loadAllSeasons() {
    CalendarDb db = CalendarDb();
    return db.calendar['seasons']!.map((e) => Seasons.fromMap(e)).toList();
  }
}
