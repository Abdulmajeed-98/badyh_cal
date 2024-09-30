import 'package:badiyh_calendar/core/view_model/BeeKeepingPhaseVM.dart';
import 'package:flutter/material.dart';
class BeeCalendarScreen extends StatelessWidget {
  final List<BeeCalendarVM> beeCalendars; // قائمة بمراحل النحل

  BeeCalendarScreen({required this.beeCalendars});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bee Calendar'),
      ),
      body: ListView.builder(
        itemCount: beeCalendars.length,
        itemBuilder: (context, index) {
          final phase = beeCalendars[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    phase.phaseName,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Start Date: ${phase.startDate}'),
                  Text('End Date: ${phase.endDate}'),
                  Text('Description: ${phase.description}'),
                  SizedBox(height: 8),
                  Text('Stars:', style: TextStyle(fontWeight: FontWeight.bold)),
                  ...phase.stars.map((star) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(' - ${star.starName} (ID: ${star.starID})'),
                  )),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}