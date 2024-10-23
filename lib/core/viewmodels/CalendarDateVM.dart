import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:jiffy/jiffy.dart';

class CalendarDateVM with ChangeNotifier {
// CalendarDateVM(){
//   //nextMethod
//   //previosMethod
// }

  DateTime _selectedDate = DateTime.now();
  DateTime get selectedDate => _selectedDate;
  HijriCalendar get hijriDate => HijriCalendar.fromDate(_selectedDate);

  void onDaySelected(DateTime day, DateTime focusDay) {
    _selectedDate = day;
    notifyListeners();
  }

  void toDay() {
    _selectedDate = DateTime.now();
    notifyListeners();
  }

  bool isToday() {
    bool isToday = false;
    DateTime today = DateTime.now();
    DateTime dayBefore = today.subtract(Duration(days: 1));
    DateTime select;
    select = selectedDate;
    isToday = select.isBefore(dayBefore) || select.isAfter(today);
    // notifyListeners(); //some error
    print("${isToday}");
    return isToday;
  }
  // bool isToday() {
  //   bool isToday = false;
  //   Jiffy today = Jiffy.now();
  //   Jiffy select;
  //   select = Jiffy.parseFromDateTime(selectedDate);
  //   isToday = select.isBefore(today);
  //   print("${isToday}");
  //   notifyListeners();
  //   return isToday;
  // }

  void previousDay() {
    _selectedDate = _selectedDate.subtract(const Duration(days: 1));
    notifyListeners();
  }

  void nextDay() {
    _selectedDate = _selectedDate.add(const Duration(days: 1));
    notifyListeners();
  }

  void nextDDDDay() {
    _selectedDate = _selectedDate.add(const Duration(days: 29));
    notifyListeners();
  }

  void preeeeeee() {
    _selectedDate = _selectedDate.subtract(const Duration(days: 29));
    notifyListeners();
  }

  Jiffy get setLocale => Jiffy.parse(_selectedDate.month.toString());

  List<String> _arabicMonths = [
    "يناير",
    'فبراير',
    'مارس',
    "ابريل",
    "مايو",
    "يونيو",
    'يوليو',
    'أغسطس',
    'سبتمبر',
    'أكتوبر',
    'نوفمبر',
    'ديسمبر',
  ];

  String get monthNameAR {
    final int monthAR = selectedDate.month;
    return _arabicMonths[monthAR - 1];
  }
}
