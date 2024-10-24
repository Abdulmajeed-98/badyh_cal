import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

class CalendarDateVM with ChangeNotifier {
// CalendarDateVM(){
//   //nextMethod
//   //previosMethod
// }

  DateTime _selectedDate = DateTime.now(); //.toUtc().add(Duration(hours: 5))
  DateTime get selectedDate => _selectedDate;
  HijriCalendar get hijriDate => HijriCalendar.fromDate(_selectedDate);

  void onDaySelected(DateTime day, DateTime focusDay) {
    _selectedDate = day; //.toUtc().add(Duration(hours: 5))
    notifyListeners();
  }

  void toDay() {
    _selectedDate = DateTime.now(); //.toUtc().add(Duration(hours: 5))
    notifyListeners();
  }

  DFormat(DateTime date) {
    return DateFormat.yMd().format(date);
  }

  bool isToday() {
    bool isToday = false;
    DateTime today = DateTime.now(); //.toUtc().add(Duration(hours: 5))
    DateTime dayBefore = today.subtract(Duration(days: 1));
    DateTime select;
    select = selectedDate;
    // if (select.day == today.day && select.month == today.month && select.year == today.year) {
    //  if (DateFormat.yMd().format(select) == DateFormat.yMd().format(today)) {
    DFormat(select) == DFormat(today) ? isToday = true : isToday = false;

    // isToday = select.isBefore(dayBefore) || select.isAfter(today);
    // notifyListeners(); //some error
    // print("${isToday}");
    // print("today==== ${today}== ${DateFormat.yMd().format(today)}");
    // print("select==== ${select}== ${DateFormat.yMd().format(select)}");

    return isToday;
  }

  void previousDay() {
    _selectedDate = _selectedDate.subtract(const Duration(days: 1));
    print(selectedDate);
    print(selectedDate.timeZoneName);
    notifyListeners();
  }

  void nextDay() {
    _selectedDate = _selectedDate.add(const Duration(days: 1));
    print(selectedDate);
    print(selectedDate.timeZoneName);
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
