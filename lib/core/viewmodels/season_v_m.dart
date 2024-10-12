import 'package:badiyh_calendar/core/model/all_models.dart';
import 'package:badiyh_calendar/core/model/seasons.dart';
import 'package:badiyh_calendar/core/viewmodels/CalendarDateVM.dart';
import 'package:badiyh_calendar/db/edit_calender_db.dart';
import 'package:jiffy/jiffy.dart';

class SeasonVM {
  EditCalenderDb db = EditCalenderDb();
  List<Seasons> loadAllSeasons() {
    try {
      List<Seasons> allSeasons = [];
      for (var e in db.editCalender) {
        allSeasons.add(Seasons.fromMap(e));
      }
      return allSeasons;
    } catch (e) {
      print(e);
      return [];
    }
  }

  //English
  String? getSeason(CalendarDateVM calPro) {
    String? season;

    var selectedDateCurrent = Jiffy.parse(
        Jiffy.parse(calPro.selectedDate.toString()).MMMM,
        pattern: "MMMM");
    // فصل الربيع
    var beginSpring = Jiffy.parse('January', pattern: "MMMM");
    var endSpringBe = Jiffy.parse('April', pattern: "MMMM");
    // فصل الصيف
    var beginSummerAf = Jiffy.parse('March', pattern: "MMMM");
    var endSummerBe = Jiffy.parse('July', pattern: "MMMM");
    // فصل الخريف
    var beginFallAf = Jiffy.parse('June', pattern: "MMMM");
    var endFallBe = Jiffy.parse('October', pattern: "MMMM");
    // فصل الشتاء
    var beginWinterAf = Jiffy.parse('September', pattern: "MMMM");
    var endWinter = Jiffy.parse('December', pattern: "MMMM");
    // bool j;

    selectedDateCurrent.isSame(beginSpring, unit: Unit.month) ||
            selectedDateCurrent.isBetween(beginSpring, endSpringBe,
                unit: Unit.month)
        ? season = loadAllSeasons()[0].seasonName.toString()
        // season = "فصل الربيع"
        // print("الربيع")
        : selectedDateCurrent.isBetween(beginSummerAf, endSummerBe,
                unit: Unit.month)
            ? season = loadAllSeasons()[1].seasonName.toString()
            // print("الصيف")
            : selectedDateCurrent.isBetween(beginFallAf, endFallBe,
                    unit: Unit.month)
                ? season = loadAllSeasons()[2].seasonName.toString()
                // print("الخريف")
                : selectedDateCurrent.isBetween(beginWinterAf, endWinter,
                            unit: Unit.month) ||
                        selectedDateCurrent.isSame(endWinter, unit: Unit.month)
                    ? season = loadAllSeasons()[3].seasonName.toString()
                    //print("الشتاء")
                    : print("Error");
// notifyListeners();
    return season!;
  }
// //عربي
//   String? getSeason(CalendarDateVM calPro) {
//     String? season;

//     var selectedDateCurrent = Jiffy.parse(
//         Jiffy.parse(calPro.selectedDate.toString()).MMMM,
//         pattern: "MMMM");
//     // فصل الربيع
//     var beginSpring = Jiffy.parse('يناير', pattern: "MMMM");
//     var endSpringBe = Jiffy.parse('أبريل', pattern: "MMMM");
//     // فصل الصيف
//     var beginSummerAf = Jiffy.parse('مارس', pattern: "MMMM");
//     var endSummerBe = Jiffy.parse('يوليو', pattern: "MMMM");
//     // فصل الخريف
//     var beginFallAf = Jiffy.parse('يونيو', pattern: "MMMM");
//     var endFallBe = Jiffy.parse('أكتوبر', pattern: "MMMM");
//     // فصل الشتاء
//     var beginWinterAf = Jiffy.parse('سبتمبر', pattern: "MMMM");
//     var endWinter = Jiffy.parse('ديسمبر', pattern: "MMMM");
//     // bool j;

//     selectedDateCurrent.isSame(beginSpring, unit: Unit.month) ||
//             selectedDateCurrent.isBetween(beginSpring, endSpringBe,
//                 unit: Unit.month)
//         ? season = loadAllSeasons()[0].seasonName.toString()
//         // season = "فصل الربيع"
//         // print("الربيع")
//         : selectedDateCurrent.isBetween(beginSummerAf, endSummerBe,
//                 unit: Unit.month)
//             ? season = loadAllSeasons()[1].seasonName.toString()
//             // print("الصيف")
//             : selectedDateCurrent.isBetween(beginFallAf, endFallBe,
//                     unit: Unit.month)
//                 ? season = loadAllSeasons()[2].seasonName.toString()
//                 // print("الخريف")
//                 : selectedDateCurrent.isBetween(beginWinterAf, endWinter,
//                             unit: Unit.month) ||
//                         selectedDateCurrent.isSame(endWinter, unit: Unit.month)
//                     ? season = loadAllSeasons()[3].seasonName.toString()
//                     //print("الشتاء")
//                     : print("Error");
// // notifyListeners();
//     return season!;
//   }
}
