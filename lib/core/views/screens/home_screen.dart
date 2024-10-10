import 'package:badiyh_calendar/core/model/all_models.dart';
import 'package:badiyh_calendar/core/viewmodels/season_v_m.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  SeasonVM svm = SeasonVM();
  @override
  Widget build(BuildContext context) {
    List<Seasons> allSeasons = svm.loadAllSeasons();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: List.generate(allSeasons.length, (i) {
                  return Expanded(
                      child: SizedBox(
                    height: 50,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/detalis',
                            arguments: allSeasons[i]);
                      },
                      child: Card(
                        child: Center(
                          child: Text(allSeasons[i].seasonName),
                        ),
                      ),
                    ),
                  ));
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
