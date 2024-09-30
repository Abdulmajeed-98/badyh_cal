import 'package:badiyh_calendar/core/model/crops.dart';
import 'package:badiyh_calendar/db/calendar_db.dart';

class SeasonVM {
  List<Crops> loadAllSeasons() {
    CalendarDb db = CalendarDb();
    return db.calendar['crops']!.map((e) => Crops.fromMap(e)).toList();
  }
}
