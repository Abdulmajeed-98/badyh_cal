import 'package:badiyh_calendar/core/model/bee_calendar.dart';
import 'package:badiyh_calendar/core/viewmodels/bee_calendar_v_m.dart';
import 'package:flutter/material.dart';

class BeeCalendarScreen extends StatelessWidget {
  BeeCalendarScreen({
    super.key,
  });

  BeeCalendarVM bvm = BeeCalendarVM();
  late List<BeeCalendar> allBee;

  @override
  Widget build(BuildContext context) {
    allBee = bvm.loadAllBeePhases();

    return Scaffold(
      appBar: AppBar(
        title: const Text("مراحل تربية النحل وجني العسل"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          //  width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(1),
          child: DataTable(
            columns: const [
              DataColumn(
                  label: Text('فترات النحل',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('النجوم',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text(':من تاريخ',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text(':إلى تاريخ',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
            ],
            rows: allBee.map((b) {
              return DataRow(cells: [
                DataCell(Text("${b.phaseName}")),
                DataCell(Text(
                    b.stars!.map((star) => star.starName).join(' - '))),
                DataCell(Text("${b.startDate}")),
                DataCell(Text("${b.endDate}")),
              ]);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
