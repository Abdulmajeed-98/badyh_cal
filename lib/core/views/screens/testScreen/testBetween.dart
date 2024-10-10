import 'package:badiyh_calendar/core/viewmodels/CalendarDateVM.dart';
import 'package:badiyh_calendar/core/viewmodels/season_v_m.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Date Check')),
        body: Center(
          child:IconButton(
        onPressed: () {
          print("${getS(calPro)}");
        },
        icon: const Icon(Icons.car_crash))
        ),
      ),
    );
  }
}

// class DateCheckWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Jiffy.setLocale("ar");
//     // Current date
//     CalendarDateVM calselec = CalendarDateVM();
//     final nowwww = Jiffy.now().MMMd;
//     var now = Jiffy.parse(Jiffy.parse(calselec.selectedDate.toString()).MMMM,
//         pattern: "MMMM");
//     // Define the start and end dates
//     // final startDate = Jiffy.parse("October", pattern: "MMMM");
//     // final endDate = Jiffy.parse("October", pattern: "MMMM");

//     // Check if current date is between the start and end dates
//     // bool isBetween = now.isBetween(startDate, endDate);
//     IconButton(
//         onPressed: () {
//           print("${getS(calPro)}");
//         },
//         icon: Icon(Icons.car_crash));

//     // return Text(
//     //   isBetween ? 'true' : 'false',
//     //   style: TextStyle(fontSize: 24),
//     // );
//   }

  CalendarDateVM calPro = CalendarDateVM();
  SeasonVM sVM = SeasonVM();
  String? getS(CalendarDateVM calPro) {
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
        ? season = sVM.loadAllSeasons()[0].seasonName.toString()
        // season = "فصل الربيع"
        // print("الربيع")
        : selectedDateCurrent.isBetween(beginSummerAf, endSummerBe,
                unit: Unit.month)
            ? season = sVM.loadAllSeasons()[1].seasonName.toString()
            // print("الصيف")
            : selectedDateCurrent.isBetween(beginFallAf, endFallBe,
                    unit: Unit.month)
                ? season = sVM.loadAllSeasons()[2].seasonName.toString()
                // print("الخريف")
                : selectedDateCurrent.isBetween(beginWinterAf, endWinter,
                            unit: Unit.month) ||
                        selectedDateCurrent.isSame(endWinter, unit: Unit.month)
                    ? season = sVM.loadAllSeasons()[3].seasonName.toString()
                    //print("الشتاء")
                    : print("Error");
// notifyListeners();
    return beginSpring.toString();
  }
