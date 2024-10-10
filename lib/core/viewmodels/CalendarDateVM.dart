import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';

class CalendarDateVM with ChangeNotifier {
// CalendarDateVM(){
//   //nextMethod
//   //previosMethod
// }

  DateTime _selectedDate = DateTime.now();
  DateTime get selectedDate => _selectedDate;
  HijriCalendar get hijriDate => HijriCalendar.fromDate(_selectedDate);

  void previousDay() {
    _selectedDate = _selectedDate.subtract(const Duration(days: 1));
    notifyListeners();
  }

  void preeeeeee() {
    _selectedDate = _selectedDate.subtract(const Duration(days: 29));
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

  // Jiffy get setLocale => Jiffy.parse(_selectedDate.month.toString());

// List<String> _arabicMonths = [
//     'محرم',
//     'صفر',
//     'ربيع الأول',
//     'ربيع الآخر',
//     'جمادى الأولى',
//     'جمادى الآخرة',
//     'رجب',
//     'شعبان',
//     'رمضان',
//     'شوال',
//     'ذو القعدة',
//     'ذو الحجة',
//   ];

  // String get monthNameAR {
  //   final int hijriMonth = hijriDate.hMonth;
  //   return _arabicMonths[hijriMonth - 1];
  // }
}
