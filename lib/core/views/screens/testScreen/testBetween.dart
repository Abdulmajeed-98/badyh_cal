import 'package:badiyh_calendar/core/viewmodels/CalendarDateVM.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Date Check')),
        body: Center(
          child: DateCheckWidget(),
        ),
      ),
    );
  }
}

class DateCheckWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Current date
    CalendarDateVM calselec = CalendarDateVM();
    final nowwww = Jiffy.now().MMMd;
    var now = Jiffy.parse(Jiffy.parse(calselec.selectedDate.toString()).MMMM,
        pattern: "MMMM");
    // Define the start and end dates
    final startDate = Jiffy.parse("October", pattern: "MMMM");
    final endDate = Jiffy.parse("October", pattern: "MMMM");

    // Check if current date is between the start and end dates
    bool isBetween = now.isBetween(startDate, endDate);
    print("${now} ==sta: ${startDate}== end${endDate}");

    return Text(
      isBetween ? 'true' : 'false',
      style: TextStyle(fontSize: 24),
    );
  }
}
