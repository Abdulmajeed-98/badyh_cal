import 'package:badiyh_calendar/core/model/all_models.dart';
import 'package:badiyh_calendar/core/viewmodels/CalendarDateVM.dart';
import 'package:badiyh_calendar/core/viewmodels/month_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/season_v_m.dart';
import 'package:jiffy/jiffy.dart';

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

  SeasonVM sea = SeasonVM();
  String? getStar(CalendarDateVM calPro) {
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
        ? season = loadStarsByMonth.toString()
        // season = "فصل الربيع"
       
        :   print("الربيع");
        // selectedDateCurrent.isBetween(beginSummerAf, endSummerBe,
        //         unit: Unit.month)
        //     ? season = loadStarsByMonth()[1].seasonName.toString()
        //     // print("الصيف")
        //     : selectedDateCurrent.isBetween(beginFallAf, endFallBe,
        //             unit: Unit.month)
        //         ? season = loadStarsByMonth()[2].seasonName.toString()
        //         // print("الخريف")
        //         : selectedDateCurrent.isBetween(beginWinterAf, endWinter,
        //                     unit: Unit.month) ||
        //                 selectedDateCurrent.isSame(endWinter, unit: Unit.month)
        //             ? season = loadAllSeasons()[3].seasonName.toString()
        //             //print("الشتاء")
        //             : print("Error");
// notifyListeners();
    return season!;
  }
}
