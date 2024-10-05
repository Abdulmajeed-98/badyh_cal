import 'package:badiyh_calendar/core/model/all_models.dart';
import 'package:badiyh_calendar/core/viewmodels/month_v_m.dart';

class StarVM {
  MonthVM mvm = MonthVM();
  List<Stars> loadStarsByMonth(Months month) {
    List<Stars> monthStars = [];
    try {
      monthStars.addAll(month.stars);
      return monthStars;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
