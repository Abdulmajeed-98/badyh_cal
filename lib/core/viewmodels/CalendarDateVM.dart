import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

class CalendarDateVM with ChangeNotifier {
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
    DFormat(select) == DFormat(today) ? isToday = true : isToday = false;

    return isToday;
  }

  void previousDay() {
    _selectedDate = _selectedDate.subtract(const Duration(days: 1));
    notifyListeners();
  }

  void nextDay() {
    _selectedDate = _selectedDate.add(const Duration(days: 1));
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
