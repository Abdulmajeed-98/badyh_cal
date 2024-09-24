import 'package:badiyh_calendar/core/view_model/SeasonVM.dart';
import 'package:flutter/material.dart';

class StarView extends StatelessWidget {
  final List<SeasonVM> seasons;

  StarView({required this.seasons});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('النجوم والفصول'),
      ),
      body: ListView.builder(
        itemCount: seasons.length,
        itemBuilder: (context, index) {
          final season = seasons[index];
          return ExpansionTile(
            title: Text(season.seasonName),
            children: season.stars.map((star) {
              return ListTile(
                title: Text(star.starName),
                subtitle: Text("من ${star.startDate} إلى ${star.endDate}"),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
