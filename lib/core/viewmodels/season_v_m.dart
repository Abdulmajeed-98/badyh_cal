import 'package:badiyh_calendar/core/constants/const_urls_img.dart';
import 'package:badiyh_calendar/core/model/seasons.dart';
import 'package:badiyh_calendar/core/viewmodels/CalendarDateVM.dart';
import 'package:badiyh_calendar/db/edit_calender_db.dart';
import 'package:jiffy/jiffy.dart';

class SeasonVM {
  EditCalenderDb db = EditCalenderDb();
  const_urls_img img = const_urls_img();
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

  String? getSeasonImg(CalendarDateVM calPro) {
    String? imgUrl;

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

    if (selectedDateCurrent.isSame(beginSpring, unit: Unit.month) ||
        selectedDateCurrent.isBetween(beginSpring, endSpringBe,
            unit: Unit.month)) {
      imgUrl = img.spring;
      // print("الربيع");
    } else if (selectedDateCurrent.isBetween(beginSummerAf, endSummerBe,
        unit: Unit.month)) {
      imgUrl = img.summer;
      // print("الصيف");
    } else if (selectedDateCurrent.isBetween(beginFallAf, endFallBe,
        unit: Unit.month)) {
      imgUrl = img.autumn;
      // print("الخريف");
    } else if (selectedDateCurrent.isBetween(beginWinterAf, endWinter,
            unit: Unit.month) ||
        selectedDateCurrent.isSame(endWinter, unit: Unit.month)) {
      imgUrl = img.winter;
      // print("الشتاء");
    } else {
      print("Error");
    }
// notifyListeners();
    return imgUrl!;
  }

//   //English
  String? getSeason(CalendarDateVM calPro) {
    String? season, imgUrl;
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
