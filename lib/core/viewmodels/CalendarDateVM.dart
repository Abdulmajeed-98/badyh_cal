import 'package:badiyh_calendar/core/viewmodels/season_v_m.dart';
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
  

  void previousDay() {
    _selectedDate = _selectedDate.subtract(Duration(days: 1));
    notifyListeners();
  }

  void nextDay() {
    _selectedDate = _selectedDate.add(Duration(days: 1));
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
