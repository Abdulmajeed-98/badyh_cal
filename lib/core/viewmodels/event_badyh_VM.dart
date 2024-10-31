import 'package:badiyh_calendar/core/models/events_badyh.dart';
import 'package:badiyh_calendar/db/eventsBadyh_db.dart';

class EventsBadyh_VM {
  List<EventsBadyh> loadAllBeePhases() {
    EventsBadyh_db db = EventsBadyh_db();
    return db.eventBadyh.map((e) => EventsBadyh.fromJson(e)).toList();
  }
}
