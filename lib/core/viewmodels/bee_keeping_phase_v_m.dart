import 'package:badiyh_calendar/core/model/bee_keepin_phases.dart';
import 'package:badiyh_calendar/db/calendar_db.dart';

class BeeKeepingPhaseVM {
  List<BeeKeepingPhases> loadAllBeePhases() {
    CalendarDb db = CalendarDb();
    return db.calendar['beeKeepingPhases']!
        .map((e) => BeeKeepingPhases.fromMap(e))
        .toList();
  }
}
