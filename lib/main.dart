import 'package:badiyh_calendar/core/view_model/BeeKeepingPhaseVM.dart';
import 'package:badiyh_calendar/core/views/bee_calendar_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bee Calendar App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: BeeCalendarScreen(
        beeCalendars: [
          // هنا يمكنك إضافة بيانات BeeCalendarVM الخاصة بك
          BeeCalendarVM(
            phaseID: 1,
            phaseName: 'مجنى الضبة',
            startDate: '2024-01-27',
            endDate: '2024-02-08',
            description: 'فترة مجنى الضبة',
            stars: [
              StarViewModel(
                starID: 3,
                starName: 'النثرة',
                startDate: '2024-01-27',
                endDate: '2024-02-08',
                seasonID: 1,
                duration: 13,
              ),
            ],
          ),
          // يمكنك إضافة المزيد من البيانات هنا
        ],
      ),
    );
  }
}