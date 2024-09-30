import 'package:badiyh_calendar/core/model/all_models.dart';
import 'package:badiyh_calendar/db/edit_calender_db.dart';

class SeasonVM {
  EditCalenderDb db = EditCalenderDb();
  List<Seasons> loadAllSeasons() {
    try {
      List<Seasons> allSeasons = [];
      db.editCalender.forEach((e) {
        allSeasons.add(Seasons.fromMap(e));
      });
      return allSeasons;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
