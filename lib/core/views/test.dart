import 'package:badiyh_calendar/core/model/seasons.dart';
import 'package:badiyh_calendar/core/viewmodels/season_v_m.dart';
import 'package:flutter/material.dart';

class TestView extends StatelessWidget {
  TestView({super.key});
  SeasonVM svm = SeasonVM();
  late List<Seasons> allSeason;
  @override
  Widget build(BuildContext context) {
    allSeason = svm.loadAllSeasons();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: 
              Row(
                children: List.generate(allSeason.length, (i) {
                  return Expanded(
                    child: InkWell(
                      onTap: () => Navigator.pushNamed((context), '/detalis',arguments: allSeason[i]),
                      child: Card(
                        child: Center(
                          child: Text('${allSeason[i].seasonName}'),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
