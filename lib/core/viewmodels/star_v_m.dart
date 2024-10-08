
import 'package:badiyh_calendar/core/viewmodels/CalendarDateVM.dart';
import 'package:badiyh_calendar/core/viewmodels/month_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/season_v_m.dart';
import 'package:badiyh_calendar/db/edit_calender_db.dart';
import 'package:jiffy/jiffy.dart';

import '../views/screens/testScreen/testStar.dart';

class StarVM {
  MonthVM mvm = MonthVM();
  // List<Stars> loadStarsByMonth(Months month) {
  //   List<Stars> monthStars = [];
  //   try {
  //     monthStars.addAll(month.stars);
  //     return monthStars;
  //   } catch (e) {
  //     print(e);
  //     return [];
  //   }
  // }

///////////////////////////////////
  List<Stars> loadAllStars() {
    EditCalenderDb db = EditCalenderDb();
    List<dynamic> calenderDb = db.editCalender;
    List<Stars> allStars = [];

    for (var season in calenderDb) {
      for (var month in season["months"]) {
        for (var star in month['stars']) {
          allStars.add(Stars.fromJson(star));
        }
      }
    }

    return allStars;
  }

  SeasonVM sea = SeasonVM();
  String? getStar(CalendarDateVM calPro) {
    List<Stars> starsList = loadAllStars();
    String? season;

    var selectedDateCurrent = Jiffy.parse(
        Jiffy.parse(calPro.selectedDate.toString()).MMMM,
        pattern: "MMMM");
    // فصل الربيع
    var beginSpring = Jiffy.parse('يناير', pattern: "MMMM");
    var endSpringBe = Jiffy.parse('أبريل', pattern: "MMMM");
    // فصل الصيف
    var beginSummerAf = Jiffy.parse('مارس', pattern: "MMMM");
    var endSummerBe = Jiffy.parse('يوليو', pattern: "MMMM");
    // فصل الخريف
    var beginFallAf = Jiffy.parse('يونيو', pattern: "MMMM");
    var endFallBe = Jiffy.parse('أكتوبر', pattern: "MMMM");
    // فصل الشتاء
    var beginWinterAf = Jiffy.parse('سبتمبر', pattern: "MMMM");
    var endWinter = Jiffy.parse('ديسمبر', pattern: "MMMM");
    // bool j;

    selectedDateCurrent.isSame(beginSpring, unit: Unit.month) ||
            selectedDateCurrent.isBetween(beginSpring, endSpringBe,
                unit: Unit.month)
        ? season = starsList[0].starName.toString()
        // season = "فصل الربيع"

        :
        // print("hgvvvvvvv");
        selectedDateCurrent.isBetween(beginSummerAf, endSummerBe,
                unit: Unit.month)
            ? season = starsList[1].starName.toString()
            // print("الصيف")
            : selectedDateCurrent.isBetween(beginFallAf, endFallBe,
                    unit: Unit.month)
                ? season = starsList[2].starName.toString()
                // print("الخريف")
                : selectedDateCurrent.isBetween(beginWinterAf, endWinter,
                            unit: Unit.month) ||
                        selectedDateCurrent.isSame(endWinter, unit: Unit.month)
                    ? season = starsList[2].starName.toString()
                    //print("الشتاء")
                    : print("Error");
// notifyListeners();
    return season!;
  }
}
